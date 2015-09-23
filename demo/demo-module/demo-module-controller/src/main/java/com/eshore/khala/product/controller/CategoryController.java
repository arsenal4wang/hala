package com.eshore.khala.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.khala.product.pojo.Category;
import com.eshore.khala.product.service.ICategoryService;


@Controller
@RequestMapping("/product/category")
public class CategoryController extends BaseController<Category> {

	@Autowired ICategoryService  categoryService;

	
	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/product/category/";
	}

	@Override
	protected IBaseService<Category> getService() {
		return categoryService;
	}

	
	public String getModuleName() {
		// TODO Auto-generated method stub
		return "产品模块>类型表";
	}

}
