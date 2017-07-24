package cn.Register;

import java.util.List;

import javax.swing.JOptionPane;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.PO.UserInfoPO;
import cn.addHibernateFile.HibernateSessionFactory;

public class LoginRegisterInfo {
	private Session session;
	private Transaction transaction;
	HibernateSessionFactory getSession;
	public LoginRegisterInfo(){
		
	}

	public List queryInfo(String type, Object value) {
		// TODO Auto-generated method stub
		getSession=new HibernateSessionFactory();
		session = getSession.getSession();
		if (session == null) {
			System.out.println("session === null");
		}
		try{
			transaction=session.beginTransaction();
			String hqlsql="from UserInfoPO where userName='"+value+"'";
			Query query=session.createQuery(hqlsql);
			List list=query.list();
			transaction.commit();
			return list;
		}catch(Exception e){
			message("LoginRegisterInfo类中有异常，异常为："+e);
			e.printStackTrace();
			return null;
		}
		
	}

	public String saveInfo(UserInfoPO info) {
		// TODO Auto-generated method stub
		String mess="error";
		getSession=new HibernateSessionFactory();
		session=getSession.getSession();
		try{
			transaction=session.beginTransaction();
			session.save(info);
			transaction.commit();
			mess="success";
			return mess;
		}catch(Exception e){
			message("Registerinfo.error:"+e);
			e.printStackTrace();
			return null;
		}
		
	}

	public void message(String mess) {
		// TODO Auto-generated method stub
		int type=JOptionPane.YES_NO_OPTION;
		String title="提示信息";
		JOptionPane.showMessageDialog(null,mess,title,type);
	}

}


