package algorithm.nlpir;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AnalyseEmotion {
	
	HashMap<Integer, Double> emotionHashMap;
	public AnalyseEmotion(ArrayList<HashMap<String, String>> zhaunfaInfo) {
		// TODO Auto-generated constructor stub
		NLPIRHelper helper = NLPIRHelper.getInstance();
		List<String> wordList = new ArrayList<String>();
		NBSentAnalysis nbSentAnalysis= new NBSentAnalysis();
		
		for(int i = 0; i < zhaunfaInfo.size(); i++)
		{
			String s = zhaunfaInfo.get(i).get("text");
			String temp = helper.paragraph(s);
			String wordArray [] = s.split(" ");
			for(int wi = 0; wi < wordArray.length; wi++){
	         	String words[] = wordArray[wi].split("/");
	         	wordList.add(words[0]);
	        }
		}
		emotionHashMap = nbSentAnalysis.getEmotion(wordList);
		
	}
	
	HashMap<Integer, Double> getEmotion()
	{
		return emotionHashMap;
	}
}
