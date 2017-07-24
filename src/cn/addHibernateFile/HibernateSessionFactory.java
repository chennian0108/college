package cn.addHibernateFile;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {
	private SessionFactory sf;
	public HibernateSessionFactory(){
		}
	public void init(){
		try{
		Configuration cfg = new Configuration().configure();
		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
		sf= cfg.buildSessionFactory(serviceRegistry);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
//	static{
//		try{
//			Configuration configuration=new Configuration();
//			configuration.configure("hibernate.cfg.xml");
//			
//		}catch(Exception e){
//			e.getMessage();
//			e.printStackTrace();
//		}
//	}
	public  Session getSession(){
		init();
		Session session = sf.openSession();
		if (session == null) {
			System.out.println("session === null");
		}
		return session;
	}
	
}
