package csvLoader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class NBSentAnalysis {
	/*
	 *0：喜悦
	 *1：愤怒
	 *2：厌恶
	 *3：低落
	*/
	//每个类别的所占比例
	private double pc[];
	//词、类别、个数
	private HashMap categoryMap[];
	//每个类别词的个数
	private int categoryWordCount[];
	
	public NBSentAnalysis(){
		pc = new double[4];
		categoryMap = new HashMap[4];
		categoryWordCount = new int[4];
		initSample();
	}
	
	public int getSentimentType(String weiboStr){
		int type = -1;
		
		return type;
	}
	
	public int getSentimentType(List<String> wordList){
		int type = -1;
		double ptMax = 0;
		for(int ci = 0; ci < 4; ci++){
        	double pt = this.postOfWeibo(wordList, ci);
        	if(pt > ptMax){
        		type = ci;
        		ptMax = pt;
        	}
        	System.out.println(ci+"="+pt);
        }
		return type;
	}
	public HashMap<Integer, Double> getEmotion(List<String> wordList)
	{
		int type = -1;
		HashMap<Integer, Double> emo = new HashMap<Integer, Double>();
		double ptMax = 0;
		for(int ci = 0; ci < 4; ci++){
        	double pt = this.postOfWeibo(wordList, ci);
        	if(pt > ptMax){
        		type = ci;
        		ptMax = pt;
        	}
        	System.out.println(ci+"="+pt);
        	emo.put(ci,  pt);
        }
		return emo;
	}
	//计算微博的情感后验概率、4个类类别
	public double postOfWeibo(String [] words, int category){
		
		double pt = 1;
		
		pt = pc[category] * pt;
		
		for(String word : words){
			pt *= priorOfWords(word, category);
		}
		
		return pt;
	}
	
	//计算微博的情感后验概率、4个类类别
	public double postOfWeibo(List<String> words, int category){
		
		double pt = 1;
		
		pt = pc[category] * pt;
		
		for(String word : words){
			pt *= priorOfWords(word, category);
		}
		
		return pt;
	}
	
	public int readCorpus(String filePath, HashMap<String, Integer> categoryMap){
		int wordCount = 0;
		try{
			File source = new File(filePath);
	
			String encoding="GBK";
	        InputStream in= new java.io.FileInputStream(source);
	        byte[] b = new byte[3];
	        in.read(b);
	        in.close();
	        if (b[0] == -17 && b[1] == -69 && b[2] == -65){
	        	 encoding = "UTF-8";
	        }
	        if(source.isFile() && source.exists()){	
	            InputStreamReader read = new InputStreamReader(
	            new FileInputStream(source),encoding);
	            BufferedReader bufferedReader = new BufferedReader(read);
	            String lineTxt = null;
	            while(null != (lineTxt = bufferedReader.readLine())){ 
	            	
	            	String wordArray [] = lineTxt.split(" ");
	    	        for(int wi = 0; wi < wordArray.length; wi++){
	    	         	String words[] = wordArray[wi].split("/");
	    	         	//wordsArray[i][0] = words[0];//词
	    	         	//wordsArray[i][0] = words[1];//词性	
	    	         	wordCount++;
	    	         	if(!categoryMap.containsKey(words[0]) && words.length == 2){
	    	             	categoryMap.put(words[0], 1);
	    	         	}else if(categoryMap.containsKey(words[0])){
	    	         		int count = categoryMap.get(words[0]) + 1;
	    	         		categoryMap.put(words[0], count);
	    	         	}
	    	        }	            		 
	            }
	        }else{
	        	throw new Exception("找不到文件:"+filePath);
	        }
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return wordCount;
	}
	
	public void initSample(){
		
		String filePath[] = {
				 "emotion/0_simplifyweibo.txt"
				,"emotion/1_simplifyweibo.txt"
				,"emotion/2_simplifyweibo.txt"
				,"emotion/3_simplifyweibo.txt"	
		};
		
		//统计4个类别的单词
		int allCount = 0;
		for(int ci = 0; ci < 4; ci++){
			categoryMap[ci] = new HashMap<String, Integer>();
			//读取语料文件
			categoryWordCount[ci] = readCorpus(filePath[ci], categoryMap[ci]);
			allCount += categoryWordCount[ci];
		}
		
		//计算每个类别的比例
		for(int ci = 0; ci < 4; ci++){
			pc[ci] = categoryWordCount[ci]*1.0 / allCount*1.0;
		}
	}
	
	//计算每个单词的先验概率
	//类别category中词w出现的次数/类别category所有词
	//分词，然后保存每个单词，所属类别个数
	public double priorOfWords(String word, int category){
		double pw  = ((Integer)categoryMap[category].get(word) + 1.0 )/ (categoryWordCount[category] + 1.0);
		return pw;
	}
	
	public static void main(String[] args) {
		NBSentAnalysis nbSentAnalysis= new NBSentAnalysis();
		String weibostr = "家/n 有/vyou 傻/a 犬/ng ~/x 不要/d 再/d 裝/x 笨/a 好/a 不好/a .../ww ./wj ./wj   ";
		String wordArray [] = weibostr.split(" ");
		List<String> wordList = new ArrayList<String>();
		
        for(int wi = 0; wi < wordArray.length; wi++){
         	String words[] = wordArray[wi].split("/");
         	wordList.add(words[0]);
        }

        System.out.println(nbSentAnalysis.getSentimentType(wordList));
	}
}
