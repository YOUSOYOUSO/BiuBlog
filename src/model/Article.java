package model;

public class Article {
	private int article_id;
	private String article_title;
	private String article_text;
	
	public Article(){
		super();
	}
	
	public Article(String article_title,String article_text ){
		super();
		this.article_title=article_title;
		this.article_text=article_text;
	}
	
	public int getArticle_id() {
		return article_id;
	}
	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public String getArticle_text() {
		return article_text;
	}
	public void setArticle_text(String article_text) {
		this.article_text = article_text;
	}
}
