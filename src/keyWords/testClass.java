package keyWords;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import java.util.Map.Entry;

import csvLoader.CsvLoader;

public class testClass {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		CsvLoader loader = new CsvLoader("resources/weiboData/haier转发微博.csv");
		ArrayList<HashMap<String, String>> userInfoArrayList = loader.getList();
		
		StringBuilder s = new StringBuilder();
		System.out.println(userInfoArrayList.size());
		
		for(int i = 0; i < userInfoArrayList.size(); i++)
		{
			s.append(userInfoArrayList.get(i).get("text"));
		}
		
		HashMap<String, Integer> hereHashMap = KeyWordExtraction.getKeywords(s.toString(), 10);
		Set<Entry<String, Integer>> keyset = hereHashMap.entrySet();
		for(Entry<String, Integer> m : keyset)
		{
			System.out.println(m.getKey()+ "   " + m.getValue());
		}
	}

}
