package test;
import java.sql.Connection;
import java.util.List;

import org.junit.Test;
import util.DbUtil;
import dao.ArticleDao;
import model.Article;
public class testArticle {

	DbUtil dbUtil=new DbUtil();
	ArticleDao articleDao=new ArticleDao();
	@Test
	public void testLogin(){
		Connection con;
		try {
			con = dbUtil.getCon();
			List<Article> article= articleDao.showArticle(con);
				for (int i= 0;i<article.size();i++){
					System.out.println(article.get(i).getArticle_text()+"---"+i+"---");
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
