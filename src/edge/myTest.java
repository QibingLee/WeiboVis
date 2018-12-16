package edge;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;

public class myTest {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		EdgeMaker edgeMaker = new EdgeMaker("resources/data/haier转发微博.csv","resources/data/haier转发用户.csv");
		//EdgeMaker edgeMaker = new EdgeMaker("E:\\haier转发微博.csv","E:\\haier转发用户.csv");
		MakeGml m = new MakeGml(edgeMaker.getNodes(), edgeMaker.getList());
		WithAutoLayout withAutoLayout = new WithAutoLayout();
		withAutoLayout.script("polblogs.gml", "output.gexf");
		PartitionGraph partitionGraph = new PartitionGraph();
		partitionGraph.script("output.gexf", "out.gexf");
	}

}
