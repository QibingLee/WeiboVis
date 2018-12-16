package keyWords;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;

import org.fnlp.app.keyword.AbstractExtractor;
import org.fnlp.app.keyword.WordExtract;

import edu.fudan.nlp.cn.tag.CWSTagger;
import edu.fudan.nlp.corpus.StopWords;
import edu.fudan.util.exception.LoadModelException;

/**
 * 关键词抽取使用示例
 * @author jyzhao,ltian
 *
 */
public class KeyWordExtraction {
	
	public static void main(String[] args) throws Exception {
		
		
		StopWords sw= new StopWords("models/stopwords");
		System.out.println("OK");
		CWSTagger seg = new CWSTagger("models/seg.m");
		AbstractExtractor key = new WordExtract(seg,sw);
		System.out.println("OK");
		System.out.println(key.extract("甬温线特别重大铁路交通事故车辆经过近24小时的清理工作，26日深夜已经全部移出事故现场，之前埋下的D301次动车车头被挖出运走", 20, true));
		
		//处理已经分好词的句子
		
		
		Set<Entry<String, Integer>> keyset = getKeywords("",10 ).entrySet();
		for(Entry<String, Integer> m : keyset)
		{
			System.out.println(m.getKey()+ "   " + m.getValue());
		}
		
	}
	
	static HashMap<String, Integer> getKeywords(String s, int num) throws LoadModelException
	{
		StopWords sw= new StopWords("models/stopwords");
		CWSTagger seg = new CWSTagger("models/seg.m");
		AbstractExtractor key = new WordExtract(seg,sw);
		HashMap<String, Integer> keysMap = (HashMap<String, Integer>) key.extract(s, num);
		return keysMap;
	}
}
