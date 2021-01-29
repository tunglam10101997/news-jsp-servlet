package com.hoclaptrinh.dao;

import java.util.List;
import com.hoclaptrinh.model.CategoryModel;

public interface ICategoryDAO {
	List<CategoryModel> findAll();
}
