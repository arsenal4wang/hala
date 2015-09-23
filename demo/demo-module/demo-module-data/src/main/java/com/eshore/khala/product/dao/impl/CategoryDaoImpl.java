package com.eshore.khala.product.dao.impl;

import org.springframework.stereotype.Repository;

import com.eshore.khala.core.data.jpa.dao.impl.JpaDaoImpl;
import com.eshore.khala.product.dao.ICategoryDao;
import com.eshore.khala.product.pojo.Category;


@Repository
public class CategoryDaoImpl extends JpaDaoImpl<Category> implements ICategoryDao{


}
