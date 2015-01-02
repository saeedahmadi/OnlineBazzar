package com.onlinebazzar.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.WebUserDAO;
import com.onlinebazzar.model.WebUser;
@Repository
public class WebUserDAOImpl extends GenericDAOImpl<WebUser> implements WebUserDAO{

	@Override
	public WebUser findOneByUserName(String username) {
		Query query = getCurrentSession().createQuery("Select u from WebUser u where username=:username");
		query.setParameter("username", username);
		List<WebUser> users = query.list();
		return users.get(0);
	}

}
