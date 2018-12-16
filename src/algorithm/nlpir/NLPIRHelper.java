package algorithm.nlpir;
import java.io.File;
import java.net.URISyntaxException;
import com.sun.jna.Library;
import com.sun.jna.Native;


public class NLPIRHelper {
	/**
	 * 获取NLPIR的dll绝对路径，Native.loadLibrary（绝对路径，用相对路径加载不到dll
	 * NLPIR.class.getResource("/").toURI()用toURI可以避免中文目录乱码问题，但是要处理URISyntaxException异常
	 * 所以单独写了个静态函数来获取绝对路径
	 * @return
	 */
	public  static String getNLPIRAbsolutePath(){
		String NLPIRPATH = null;
		try{
			NLPIRPATH = new File(NLPIR.class.getResource("/").toURI()).getAbsolutePath()+"\\win64\\NLPIR.DLL";
		}catch(URISyntaxException e){
			e.printStackTrace();
		}
		//NLPIRPATH = "C:\\Users\\Administrator\\Desktop\\ICTCLAS2015\\lib\\win64\\NLPIR.DLL";
		return NLPIRPATH;
	}
	
	// 定义接口CLibrary，继承自com.sun.jna.Library
	public interface NLPIR extends Library {
		// 定义并初始化接口的静态变量
		NLPIR Instance = (NLPIR) Native.loadLibrary(NLPIRHelper.getNLPIRAbsolutePath(), NLPIR.class);
		
		public int NLPIR_Init(String sDataPath, int encoding,String sLicenceCode);
				
		public String NLPIR_ParagraphProcess(String sSrc, int bPOSTagged);

		public String NLPIR_GetKeyWords(String sLine, int nMaxKeyLimit,boolean bWeightOut);
		
		public int NLPIR_AddUserWord(String sWord);//add by qp 2008.11.10
		public int NLPIR_DelUsrWord(String sWord);//add by qp 2008.11.10
		
		public void NLPIR_Exit();
	}
	
	private String encode = "UTF-8";

	private static NLPIRHelper instance;
	public static NLPIRHelper getInstance(){
		if(instance == null){
			instance = new NLPIRHelper();
		}
		return instance;
	}
	@Override
	protected void finalize(){
		exit();
	    System.out.println("nlpir exit");
	}
	private NLPIRHelper() {
		//NLPIR所需要的DATA目录下的configure.xml的绝对路径，这边也要绝对路径
		String configxml = null;
		try {
			configxml = new File(this.getClass().getClassLoader().getResource("").toURI()).getAbsolutePath();
		} catch (URISyntaxException e1) {
			e1.printStackTrace();
		}
		
		System.out.println("nlp的configxml文件路径"+configxml);
		String argu = configxml+"\\";
		//String argu = "C:\\Users\\Administrator\\Desktop\\JnaTest_NLPIR"+"\\";
		try {
			System.out.println(new File(this.getClass().getClassLoader().getResource("").toURI()).getAbsolutePath());
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}

		// String system_charset = "GBK";//GBK----0
		String system_charset = "UTF-8";
		int charset_type = 0;//编码格式GBK-0，UTF-1
		System.out.println();
		int init_flag = NLPIR.Instance.NLPIR_Init(argu, charset_type, "0");

		if (0 == init_flag) {
			System.err.println("初始化失败！");
			return;
		}
		System.out.println("初始化成功!");
	}
	/**
	 * 退出分词，释放资源。分词结束后必须调用该方法
	 * @return
	 */
	public void exit(){
		NLPIR.Instance.NLPIR_Exit();
	}
	
	/**
	 * 文本分词
	 * @param text
	 * @return
	 */
	public String paragraph(String text) {
		String nativeStr = NLPIR.Instance.NLPIR_ParagraphProcess(text, 1);//NLPIR_ParagraphProcess(text.getBytes(encode),1);
		
		return nativeStr;
	}
	
	/**
	 * 文本分词
	 * @param text
	 * @return
	 */
	public ParaResult paragraphResult(String text) {
		String nativeStr = NLPIR.Instance.NLPIR_ParagraphProcess(text,1);
		
		return new ParaResult(nativeStr);
	}
	
	/**
	 * 获取关键字和关键字权重
	 * @param text
	 * @param maxLimit
	 * @param weightOut
	 * @return
	 */
	public String getKeyWord(String text,int maxLimit,boolean weightOut){
		if(null == text || text.length() == 0){
			return "";
		}else{
			String nativeStr = NLPIR.Instance.NLPIR_GetKeyWords(text, maxLimit, weightOut);
			return nativeStr;
		}
	}
	
	public KeyWordResult getKeyWordResult(String text,int maxLimit,boolean weightOut){
		return new KeyWordResult(getKeyWord(text, maxLimit, weightOut));
	}
	
	public KeyWordResult getKeyWordResult(String text){
		return new KeyWordResult(getKeyWord(text, 100, true));
	}
	
	public static void main(String[] args) {
		File file;
		
			try {
				file = new File(NLPIR.class.getResource("").toURI());
				System.out.println("文件路径"+file.getAbsolutePath()+"NLPIR.dll"+"结束");
				//File file = new File(NLPIR.class.getResource("/").getPath().replace("%20", " ")+"NLPIR.dll");
				if(file.exists()){
					System.out.println("文件存在");
				}else{
					System.out.println("文件不存在");
				}
			} catch (URISyntaxException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
		String text2 = "@xxx 妹纸问我说，那个用户讲这个月表停了，但是她家这个月没有人住，怎么办？我说，所有表停的用户都说他家这个月没有人住的。这句话好熟悉，当年我还是妹纸的时候@屋虎乐 就是这么点我的，一晃忽然五年就过去了…我们都从妹纸变成了阿姨…";
		String text = "【荒唐透项】给张灵甫修墓，我没意见，说他在抗日中有功，我也同意。但是把这个沾满共产党鲜血、被解放军当场击毙的国民党将领的墓地修的如此奢华气派，并矗立多张身穿国军军服的照片，这就荒唐了[草泥马]粟裕将军也没这个待遇吧！当地政府必须问责！！";
		NLPIRHelper helper = new NLPIRHelper();
		String paragraph = helper.paragraph(text);
		System.out.println(paragraph);
		System.out.println( helper.paragraphResult(text));
		System.out.println( helper.getKeyWord(text, 100, true));
		System.out.println("关键词结果"+helper.getKeyWordResult(text, 100, true));
		helper.exit();//退出
	}
}
