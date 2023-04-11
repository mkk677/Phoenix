package com.phoenix.portfolio;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phoenix.coverletter.dao.CoverletterDTO;
import com.phoenix.mybatis.SqlMapConfig;
import com.phoenix.resumes.ResumesDTO;

public class PortfolioDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public PortfolioDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public int delDB(PortfolioDTO pdto) {
		//delPofol
		
		int result = 0; // 0 - 실패 1-있는정보삭제 2-빈테이블만삭제
		
		int cnt = 0;
		cnt = sqlsession.selectOne("User.checkPortfolio", pdto);
		
		if( cnt == 1 ) { //있는정보 삭제 시도
			if(sqlsession.delete("User.delPofol",pdto) == 1) {
				result = 1;
			}
		}else {//없는정보 삭제 시도
			result = 2;
			
		}
		
		return result;
	}
	
	public boolean saveDB(PortfolioDTO portfolio) {
		boolean result = false ;
		int cnt = 0;
		cnt = sqlsession.selectOne("User.checkPortfolio", portfolio);
		if(cnt == 0) {
			if(sqlsession.insert("User.savePortfolio", portfolio) == 1) {
				result = true;
			}
		}else {
			if(sqlsession.update("User.updatePortfolio", portfolio) == 1) {
				result = true;
			}
		}
		
		
		
		return result;
	}

	
	public PortfolioDTO loadDB2(String userid,String pnum) {
		PortfolioDTO Portfolios = new PortfolioDTO();
		Portfolios.setPnum(pnum);
		Portfolios.setUserid(userid);
		Portfolios = sqlsession.selectOne("User.loadPortfol", Portfolios);
		
		return Portfolios;
	}
	
	public PortfolioDTO[] loadDB(String userid) {
		 List<Map<String, Object>> result = sqlsession.selectList("User.loadPortfolios",userid);
		 System.out.println("=====================result : "+result.get(0).get("PCONTENTS")+"==================");
		 //{PNUM=100, USERID=admin, PPATH=/path/to/file, PURL=http://example.com, PTITLE=Portfolio Title, PCONTENTS=oracle.sql.CLOB@d2450a}
		 PortfolioDTO[] Portfolios = new PortfolioDTO[result.size()];
		 
//		 System.out.println("=====================coverletter==================");
			for(int i=0;i<Portfolios.length;i++) {
				Portfolios[i] = new PortfolioDTO();
				Portfolios[i].setPnum((String) result.get(i).get("PNUM"));
				Portfolios[i].setUserid((String) result.get(i).get("USERID"));
				Portfolios[i].setPpath((String) result.get(i).get("PPATH"));
				Portfolios[i].setPurl((String) result.get(i).get("PURL"));
				System.out.println("====================="+Portfolios[i].getPurl()+"==================");
				Portfolios[i].setPtitle((String) result.get(i).get("PTITLE"));
				Portfolios[i].setPcontents("clob타입이라 따로가져오키");
//				System.out.println("=================PCONTENTS : "+result.get(i).get("PCONTENTS")+"===============");

				
			}
//			System.out.println("==================================================");
		
		
		
		return Portfolios;
	}
	
}
