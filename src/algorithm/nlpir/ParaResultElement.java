package algorithm.nlpir;

public class ParaResultElement {

	private String word;
	private String wordType;
	private Boolean isWeiboUser;
	
	public ParaResultElement() {
		isWeiboUser = false;
	}
	
	public ParaResultElement(String word,String wordType) {
		this();
		this.word = word;
		this.wordType = wordType;
		if (wordType.startsWith("nr")&&word.startsWith("@")) {
			isWeiboUser = true;
		}
	}
	
	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getWordType() {
		return wordType;
	}

	public void setWordType(String wordType) {
		this.wordType = wordType;
	}

	
	public Boolean getIsWeiboUser() {
		return isWeiboUser;
	}

	public void setIsWeiboUser(Boolean isWeiboUser) {
		this.isWeiboUser = isWeiboUser;
	}
	@Override
	public String toString() {
		return "{word="+word+",wordType="+wordType+",isWeiboUser="+isWeiboUser+"}";
	}

}
