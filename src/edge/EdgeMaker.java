package edge;

import csvLoader.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;


public class EdgeMaker {
	CsvLoader loader;
	CsvLoader loader2;
	ArrayList<HashMap<String, String>> zhuanfaInfo;
	ArrayList<HashMap<String, String>> userInfo;
	HashMap<String, String> nameMap;
	HashSet<String> allNames;

	public EdgeMaker(String url1, String url2) throws Exception {
		// TODO Auto-generated constructor stub
		loader = new CsvLoader(url1);
		loader2 = new CsvLoader(url2);
		zhuanfaInfo = loader.getList();
		userInfo = loader2.getList();
		nameMap = new HashMap<String, String>();
		allNames = new HashSet<String>();
		HashSet<String> queNames = new HashSet<String>();
		HashMap<String, String> id2name = new HashMap<String, String>();
		for(int i = 0; i < userInfo.size(); i++)
		{
			id2name.put(userInfo.get(i).get("id"), userInfo.get(i).get("screen_name"));
			allNames.add(userInfo.get(i).get("screen_name"));
		}
		for(int i = 0; i < zhuanfaInfo.size(); i++)
		{
			queNames.add(id2name.get(zhuanfaInfo.get(i).get("userid")));
			String s = zhuanfaInfo.get(i).get("text");
			String[] temp = s.split("//@");
			if(temp.length >= 2)
			{
				for(int j = 1; j < temp.length; j++)
				{
					String[] temp2 = temp[j].split(":");
					if(!allNames.contains(temp2[0]))
					{
						allNames.add(temp2[0]);
					}
				}
			}
		}
		
		String[] names = allNames.toArray(new String[0]);//names是所有姓名
		for(int i = 1; i < zhuanfaInfo.size(); i++)
		{
			String s = zhuanfaInfo.get(i).get("text");
			
			if(s.contains(":"))
			{
				String[] temp = s.split(":");
				for(int j = 0; j < names.length; j++)
				{
					if(temp[0].contains(names[j]))
					{
						nameMap.put(id2name.get(zhuanfaInfo.get(i).get("userid")),names[j]);
					}
				}
			}
			else {
				nameMap.put(id2name.get(zhuanfaInfo.get(i).get("userid")), "海尔");
			}
			
		}
		
		for(int i = 0; i < names.length; i++)
		{
			if(!queNames.contains(names[i]))
				nameMap.put(names[i], "海尔");
		}
		/*
		Set<Entry<String, String>> set = nameMap.entrySet();
		Iterator<Entry<String, String>> iterator = set.iterator();
		while (iterator.hasNext()) {
			Entry<String, String> e = iterator.next();
			System.out.println(e.getKey() + "----->" + e.getValue());
		}*/
	}
	HashMap<String, String> getList(){
		return nameMap;
	}
	HashSet<String> getNodes()
	{
		return allNames;
	}
}
