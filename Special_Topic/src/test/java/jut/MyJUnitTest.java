package jut;

import java.sql.Timestamp;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import Work.hunter.bean.ComApply;
import Work.hunter.dao.ComApplyDao;

class MyJUnitTest {

	@Before
	void setUp() throws Exception {
	}

	@After
	void tearDown() throws Exception {
	}

	@Test
	void test() {
		//準備資料
		ComApply comApply = new ComApply();
		comApply.setComApplyAcc("12345024");
		comApply.setComApplyPwd("123456");
		comApply.setComApplyName("John");
		comApply.setComApplyPrincipal("John");
		comApply.setComApplyAdd("Taipei");
		comApply.setComApplyPhone("+886-2-23456789");
		comApply.setComApplyWeb("www.iii.org.tw");
		comApply.setComApplyMail("tester@gmail.com");
		comApply.setComApplyDay(new Timestamp(System.currentTimeMillis()));
		comApply.setComApplyStatus(0);
		
		//存入
		ComApplyDao comApplyDao = new ComApplyDao();
		comApplyDao.save(comApply);
		
		/*
		Session session = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.save(comApply);
			tx.commit();
		} catch(Exception e) {
			if(tx != null) tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null) session.close();
		}
		HibernateUtils.getSessionFactory().close();
		*/
	}

}
