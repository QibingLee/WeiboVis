package csvLoader;

import java.util.ArrayList;
import java.util.HashMap;

public class myTest {

	/**
	 * @param args
	 * @throws Exception 
	 */
	static ArrayList<HashMap<String, String>> userInfoArrayList;
	static ArrayList<HashMap<String, String>> userlineArrayList;
	
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		CsvLoader loader = new CsvLoader("resources/data/haier转发用户.csv");
		userInfoArrayList = loader.getList();
		CsvLoader loader2 = new CsvLoader("resources/data/haier转发微博.csv");
		userlineArrayList = loader2.getList();
		System.out.println(userInfoArrayList.size());
	}
	
}
