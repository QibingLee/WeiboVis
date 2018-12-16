package edge;
import java.io.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;
public class MakeGml {
	public MakeGml(HashSet<String> nodeSet, HashMap<String, String> edges) throws IOException
	{
		
		//定义写入文件的类
		String path2 = "polblogs.gml";
		File filede = new File(path2);
		if(filede.isFile()&&filede.exists())
		{
			filede.delete();
		}
		FileWriter fw = new FileWriter(path2,true);
		PrintWriter pw = new PrintWriter(fw);
		pw.println("Creator \"SunYuanZhen\"");
		pw.println("graph [");
		pw.println("  directed 1");
		String[] nodes = nodeSet.toArray(new String[0]);
		for(int i=1 ; i<nodes.length;i++)
		{
			pw.println("  node [");
			pw.println("    id "+"\""+nodes[i]+"\"");
			pw.println("    lable "+"\""+nodes[i]+"\"");
			pw.println("    value 0");
			pw.println("    source "+"\""+nodes[i]+"\"");
			pw.println("  ]");
		}
		Set<Entry<String, String>> set = edges.entrySet();
		Iterator<Entry<String, String>> iterator = set.iterator();
		while(iterator.hasNext())
		{
			Entry<String, String> e = iterator.next();
			pw.println("  edge [");
			pw.println("    source "+"\""+e.getKey()+"\"");
			pw.println("    target "+"\""+e.getValue()+"\"");
			pw.println("  ]");
		}
		pw.println("]");
		pw.close();
	}
}
