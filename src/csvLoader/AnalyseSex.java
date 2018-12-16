package csvLoader;

import java.util.ArrayList;
import java.util.HashMap;

public class AnalyseSex {
	HashMap<String, Double> sex;
	
	public AnalyseSex(ArrayList<HashMap<String, String>> userInfo) {
		// TODO Auto-generated constructor stub
		double man = 0;
		double woman = 0;
		for(int i = 0; i < userInfo.size(); i++)
		{
			if(userInfo.get(i).get("gender").equals("m"))
				man++;
			else {
				woman++;
			}
		}
		sex.put("man", man / (man + woman));
		sex.put("woman", woman / (man + woman));
	}
	
	public HashMap<String, Double> getSex() {
		return sex;
	}
}
