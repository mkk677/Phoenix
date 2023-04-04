package com.phoenix.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phoenix.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		boolean result = false;
		
		if(sqlsession.insert("User.join", user) == 1) {
			result = true;
		}
		
		return result;
	}
	
	
	public boolean checkId(String userid) {
		boolean result = false;
		
		int cnt = 0;
		cnt = sqlsession.selectOne("User.checkId", userid);
		if( cnt == 1 ) {
			result = true;
		}
		
		return result;
	}
	
	public UserDTO login(String userid,String userpw) {
		System.out.println("================"+userid+"=========="+userpw+"=========");
		boolean result = false;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		UserDTO member =
				sqlsession.selectOne("User.login",datas);
		
		return member;
	}
	
	

}







