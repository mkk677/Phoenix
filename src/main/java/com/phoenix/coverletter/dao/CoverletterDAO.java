package com.phoenix.coverletter.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phoenix.mybatis.SqlMapConfig;

public class CoverletterDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public CoverletterDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public CoverletterDTO[] loadDB(CoverletterDTO coverletter) {
		
//		coverletter = sqlsession.selectOne("User.loadCoverLetter",coverletter);
		 List<Map<String, Object>> result = sqlsession.selectList("User.loadCoverLetter",coverletter);
		//[{CTITLE=test, CCONTENTS=test, USERID=test1, CNUM=tb_1}, {CTITLE=test2, CCONTENTS=test2, USERID=test1, CNUM=tb_2}]

		 CoverletterDTO[] coverletterArray = new CoverletterDTO[result.size()];
		 
		System.out.println("=====================coverletter==================");
		for(int i=0;i<result.size();i++) {
//			System.out.println(result.get(i).get("CCONTENTS"));
			coverletterArray[i] = new CoverletterDTO();
			coverletterArray[i].setCcontents((String) result.get(i).get("CCONTENTS"));
			coverletterArray[i].setCtitle((String) result.get(i).get("CTITLE"));
			coverletterArray[i].setCnum((String) result.get(i).get("CNUM"));
			coverletterArray[i].setUserid((String) result.get(i).get("USERID"));
		}
		System.out.println("==================================================");
		
		return coverletterArray;
	}
	
	public int getCLlen(CoverletterDTO coverletter) {
		int len = 0;
		System.out.println("=====================len : "+len+"==================");
		len = sqlsession.selectOne("User.checkCoverLetterLen",coverletter);
		
		System.out.println("=====================len : "+len+"==================");
		return len;
	}
	
	public boolean saveCL(CoverletterDTO coverletter) {
		boolean result = false;
		
		
		//네임스페이스 나중에 바꾸끼
		
		int cnt = 0;
		cnt = sqlsession.selectOne("User.checkCoverLetter", coverletter);
		System.out.println("==================cnt : "+cnt+"==================");
		if( cnt == 1 ) {
			System.out.println("=========1에들어옴====");
			//이미있는 디비
			if(sqlsession.update("User.updateCoverLetter", coverletter) == 1) {
				result = true;
			}
		}else {
			System.out.println("=========2에들어옴====");
			if(sqlsession.insert("User.savecl", coverletter) == 1) {
				result = true;
			}
		}
		
		
		return result;
	}
	
	public boolean delCL(CoverletterDTO dto) {
		boolean result = false;
		System.out.println("=========jefhsdjil에들어옴====");
		if(sqlsession.delete("User.delCoverLetter",dto) == 1) {
			result = true;
		}
		
		return result;
	}
	
	
}
