package csvLoader;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;



public class CsvLoader {

	private FileInputStream csvFileReader;
	private InputStreamReader isr;
	private BufferedReader csvReader;
	private String line;
	private String[] propertiy;
	private ArrayList<HashMap<String, String>> userInfoList;
	
	public CsvLoader(String fileUrl) throws Exception
	{
		csvFileReader = new FileInputStream(fileUrl);
		isr = new InputStreamReader(csvFileReader, "UTF-8");
		csvReader = new BufferedReader(isr);
		userInfoList = new ArrayList<HashMap<String,String>>();
		propertiy = csvReader.readLine().split(",");
		
		makeUserList();
	}
	
	private void makeUserList() throws Exception
	{
		line = "";
		while((line = csvReader.readLine()) != null )
		{
			if(line.length() > 5)
			{
			if(line.charAt(0)<='9' && line.charAt(0) >= '0')
			{
				HashMap<String, String> singleInfo = new HashMap<String, String>();
				
				String[] lineSet = line.split(",");
				
				for(int i = 0; i < propertiy.length; i++)
				{
					if(lineSet.length > i)
					{
					singleInfo.put(propertiy[i], lineSet[i]);
					}
					else {
						singleInfo.put(propertiy[i], "");
					}
				}
				userInfoList.add(singleInfo);
			}
		}
		}
	}
	
	public ArrayList<HashMap<String, String>> getList()
	{
		return userInfoList;
	}
}
