package algorithm.nlpir;

import java.util.ArrayList;
import java.util.List;
import com.framework.core.util.StringUtil;


public class KeyWordResult {

	List<KeyWordResultElement> elements;
	
	public KeyWordResult() {
		
	}
	
	public KeyWordResult(String nativeStr) {
		elements = new ArrayList<KeyWordResultElement>();
		for (String str:nativeStr.split("#"))
		{
			if (!StringUtil.isEmpty(str.trim())) {
				String[] temp = str.split("/");
				if (temp.length == 4) {
					KeyWordResultElement element = new KeyWordResultElement();
					element.setWord(temp[0]);
					element.setWordType(temp[1]);
					element.setWeight(Float.valueOf(temp[2]));
					elements.add(element);
				}
			}
		}
	}

	public List<KeyWordResultElement> getElements() {
		return elements;
	}

	public void setElements(List<KeyWordResultElement> elements) {
		this.elements = elements;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return elements.toString();
	}
}
