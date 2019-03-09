package Work.hunter.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;

import Work.hunter.bean.ComApply;
import Work.hunter.utility.HibernateUtils;

public class ComApplyDao implements IComApplyDao {
	// Constructor & Session =================================
	SessionFactory factory;

	public ComApplyDao() {
		factory = HibernateUtils.getSessionFactory();
	}
	
	public void closeFactory() {
		factory.close();
	}
	
	// 存取方法 ======================================
	@Override
	public Object save(ComApply comApply) {
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		Object key = null;
		try {
			tx = session.beginTransaction();
			key = session.save(comApply);
			tx.commit();
			System.out.println("key:" + key);
		} catch (Exception e) {
			if (tx!=null) tx.rollback();
			System.out.println(e.getMessage());
		}
		
		return key;
	}
	
	@Override
	public ComApply findByAcc(String comApplyAcc) {
		ComApply comApply = null;
		
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		Object key = null;
		try {
			tx = session.beginTransaction();
			comApply = (ComApply) session.get(ComApply.class, comApplyAcc);
			tx.commit();
			System.out.println("key:" + key);
		} catch (Exception e) {
			if (tx!=null) tx.rollback();
			System.out.println(e.getMessage());
		}
		
		return comApply;
	}


	@Override
	public List<ComApply> findUnconfirm() {
		List<ComApply> comApplys = new ArrayList<ComApply>();
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			comApplys = session.createQuery("FROM comApply WHERE comApplyStatus='0'").getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx!=null) tx.rollback();
			System.out.println(e.getMessage());
		}
	
		return comApplys;
	}

	@Override
	public List<ComApply> getAll() {
		List<ComApply> comApplys = new ArrayList<ComApply>();
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			comApplys = session.createQuery("FROM comApply").getResultList();
			tx.commit();
		} catch (Exception e) {
			if (tx!=null) tx.rollback();
			System.out.println(e.getMessage());
		}
	
		return comApplys;
	}

	//=================================================
	@Test
	public static void main(String[] args) {
		ComApply comApply = new ComApply();
		comApply.setComApplyAcc("88880000");
		comApply.setComApplyPwd("123456");
		comApply.setComApplyName("John");
		comApply.setComApplyPrincipal("John");
		comApply.setComApplyAdd("Taipei");
		comApply.setComApplyPhone("+886-2-23456789");
		comApply.setComApplyWeb("www.iii.org.tw");
		comApply.setComApplyMail("tester@gmail.com");
		comApply.setComApplyDay(Timestamp.valueOf("1980-01-01 12:00:00"));
		
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
	}

}
