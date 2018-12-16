package csvLoader;

import java.util.ArrayList;
import java.util.HashMap;

public class AnalyseProvince {
	String[] province;
	HashMap<String, Integer> prHashMap;
	public AnalyseProvince(ArrayList<HashMap<String, String>> userInfo) {
		// TODO Auto-generated constructor stub
		prHashMap = new HashMap<String, Integer>();
		province = new String[]{"北京","天津","上海","重庆","河北","河南","云南","辽宁","黑龙江","湖南","安徽","山东","新疆","江苏","浙江","江西","湖北","广西","甘肃","山西","内蒙古","陕西","吉林","福建","贵州","广东","青海","西藏","四川","宁夏","海南","台湾","香港","澳门"};
		
		for(int i = 0; i < province.length; i++)
		{
			Integer count = 0;
			for(int j = 0; j < userInfo.size(); j++)
			{
				if(userInfo.get(j).get("location").contains(province[i]))
					count++;
			}
			prHashMap.put(province[i], count);
		}
	}
	
	public HashMap<String, Integer> getProvince() {
		return prHashMap;
	}
}
