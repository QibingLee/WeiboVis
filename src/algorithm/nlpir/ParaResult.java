package algorithm.nlpir;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.framework.core.util.StringUtil;

public class ParaResult {

	private List<ParaResultElement> elements;

	public ParaResult() {
	}
	
	public ParaResult(byte[] nativeBytes) {
		elements = new ArrayList<ParaResultElement>();
		String nativeStr = null;
		try {
			nativeStr = new String(nativeBytes,0,nativeBytes.length,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (String str:nativeStr.split(" "))
		{
			if (StringUtil.isNotEmpty(str.trim())) {
				String[] temp = str.split("/");
				if (temp.length == 2) {
					ParaResultElement element = new ParaResultElement(temp[0],temp[1]);
					elements.add(element);
				}
			}
		}
	}
	
	public ParaResult(String nativeStr) {
		elements = new ArrayList<ParaResultElement>();
	
		for (String str:nativeStr.split(" "))
		{
			if (StringUtil.isNotEmpty(str.trim())) {
				String[] temp = str.split("/");
				if (temp.length == 2) {
					ParaResultElement element = new ParaResultElement(temp[0],temp[1]);
					elements.add(element);
				}
			}
		}
	}
	public List<ParaResultElement> getElements() {
		return elements;
	}

	public void setElements(List<ParaResultElement> elements) {
		this.elements = elements;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return elements.toString();
	}
}
