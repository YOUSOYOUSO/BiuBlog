package test;

import java.sql.Connection;

import org.junit.Test;

import model.User;

import dao.UserDao;
import util.DbUtil;

public class testLogin {

	DbUtil dbUtil=new DbUtil();
	UserDao userDao=new UserDao();
	
	@Test
	public void testLogin(){
		String userName="youso";
		String password="111";
		User user=new User(userName,password);
		Connection con=null;
		try {
			con = dbUtil.getCon();
			User currentUser=userDao.login(con, user);
			System.out.println(currentUser.getUserName());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
