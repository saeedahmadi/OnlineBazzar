package com.onlinebazzar.servicesimpl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.services.GenericService;



public abstract class GenericServiceImpl<T> implements GenericService<T> {
	protected abstract GenericDAO getDAO();

	public T findOne(Long id) {
		return (T) getDAO().findOne(id);
	}

	public List<T> findAll() {
		return getDAO().findAll();
	}

	@Transactional
	public T save(T entity) {
		System.out.println("hello");
		return (T) getDAO().save(entity);
	}

	@Transactional
	public T update(T entity) {
		return (T) getDAO().update(entity);
	}

	@Transactional
	public void delete(T entity) {
		getDAO().delete(entity);
	}

	@Transactional
	public void deleteById(long id) {
		getDAO().deleteById(id);
	}

	public Integer countAll() {
		return getDAO().countAll();
	}
}