package com.onlinebazzar.daoimpl;

import java.lang.reflect.ParameterizedType;

import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.transaction.annotation.Transactional;

import com.onlinebazzar.dao.GenericDAO;
public class GenericDAOImpl<T> implements GenericDAO<T> {

	private Class<T> clazz;
	@Autowired
	private SessionFactory sessionFactory;

	private T entity;

	public GenericDAOImpl() {
		Type t = getClass().getGenericSuperclass();
		ParameterizedType pt = (ParameterizedType) t;
		clazz = (Class) pt.getActualTypeArguments()[0];
	}

	public void setClazz(final Class<T> clazzToSet) {
		clazz = clazzToSet;
	}

	public T findOne(final long id) {
		return (T) getCurrentSession().get(clazz, id);
	}

	public List<T> findAll() {
		return getCurrentSession().createQuery("from " + clazz.getName())
				.list();
	}

	public T save(T entity) {
		System.out.println("Hello 2");
		getCurrentSession().persist(entity);
		this.entity = entity;
		return entity;
	}

	@Transactional
	public T update(T entity) {
		return (T) getCurrentSession().merge(entity);
	}

	public void delete(T entity) {
		getCurrentSession().delete(entity);
	}

	public void deleteById(final long id) {
		final T entity = findOne(id);
		delete(entity);
	}

	protected final Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public Integer countAll() {
		return DataAccessUtils.intResult(getCurrentSession().createQuery(
				"select count(*) from " + clazz.getName()).list());
	}
}
