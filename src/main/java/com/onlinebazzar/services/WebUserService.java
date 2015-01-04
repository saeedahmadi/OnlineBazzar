package com.onlinebazzar.services;

import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.WebUser;

public interface WebUserService extends GenericService<WebUser>{

	void enable(Long id);

}
