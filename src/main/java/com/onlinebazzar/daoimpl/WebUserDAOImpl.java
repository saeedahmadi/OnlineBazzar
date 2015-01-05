package com.onlinebazzar.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.onlinebazzar.dao.WebUserDAO;
import com.onlinebazzar.model.WebUser;
@Repository("webuserDAO")
public class WebUserDAOImpl extends GenericDAOImpl<WebUser> implements WebUserDAO{

	@Override
	public WebUser findOneByUserName(String username) {
		Query query = getCurrentSession().createQuery("Select u from WebUser u where username=:username");
		query.setParameter("username", username);
		List<WebUser> users = query.list();
		return users.get(0);
	}

	@Override
	@Transactional
	public void enable(Long id) {
		// TODO Auto-generated method stub
		Query query = getCurrentSession().createQuery("Update WebUser u set u.enabled=true where u.id=:id ");
		query.setParameter("id", id);
		query.executeUpdate();
		
	}

	@Override
	public void updateUserByPasswordRecovery(String id) {
		// TODO Auto-generated method stub
		Query query = getCurrentSession().createQuery("Update WebUser u set u.enabled=true"
				+ " where u.passwordRecovery=:id ");
		
		query.setParameter("id", id);
		query.executeUpdate();
		
	}

}
