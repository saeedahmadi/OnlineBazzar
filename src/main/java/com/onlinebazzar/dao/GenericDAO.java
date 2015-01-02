package com.onlinebazzar.dao;

import java.util.List;

public interface GenericDAO<T> {
	public T findOne(final long id);

	public List<T> findAll();

	public T save(final T entity);

	public T update(final T entity);

	public void delete(final T entity);

	public void deleteById(final long id);

	public Integer countAll();
}

