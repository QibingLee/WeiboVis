package algorithm.nlpir;

public class KeyWordResultElement {

	private String word;
	private String wordType;
	private Float weight;
	
	
	public KeyWordResultElement() {
		// TODO Auto-generated constructor stub
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
	public Float getWeight() {
		return weight;
	}
	public void setWeight(Float weight) {
		this.weight = weight;
	}
	
	@Override
	public String toString() {
		return "{word="+word+",wordType="+wordType+",weight="+weight+"}";
	}
}
