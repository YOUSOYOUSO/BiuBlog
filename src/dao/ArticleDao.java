package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import model.Article;


public class ArticleDao {
	public List<Article> showArticle(Connection con) throws SQLException{
		String sql="SELECT title,text FROM t_article `db_javablog`";
		PreparedStatement pstmt= con.prepareStatement(sql);
		ResultSet rs= pstmt.executeQuery();	
		 List<Article> articleList = new ArrayList<>();  
		 while(rs.next()){  
             String title = rs.getString("title");  
             String text = rs.getString("text"); 
             Article article= new Article();
             article.setArticle_title(title);
             article.setArticle_text(text);
             articleList.add(article);  
         }  
		return articleList;
	}
}
