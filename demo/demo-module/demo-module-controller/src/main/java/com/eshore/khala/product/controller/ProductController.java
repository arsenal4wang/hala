package com.eshore.khala.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.common.model.PageList;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.core.controller.pub.action.BaseController;
import com.eshore.khala.product.pojo.Product;
import com.eshore.khala.product.service.IProductService;

@Controller
@RequestMapping("/product/product")
public class ProductController extends BaseController<Product> {

	@Autowired
	IProductService productService;

	@RequestMapping(value = "listExt", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchExt(PageConfig pageConfig, Product t, HttpServletRequest request) {
		try {
			PageList<Product> pageList = (PageList<Product>) productService.listExt(t, pageConfig);
			List<Product> list=productService.listExt(t, pageConfig);
			utils.setRequestAttribute("list", pageList);

			utils.setRequestAttribute("page", pageList.getPageConfig());

			// 把搜索条件继续带回页面
			utils.setRequestAttribute("model", t);
		} catch (Exception e) {
			e.printStackTrace();
			utils.setRequestAttribute("msg", e.getMessage());
		}
		utils.setRequestAttribute("path", this.getBasePath());
		return getBasePath() + "list";
	}

	@Override
	protected String getBasePath() {
		// TODO Auto-generated method stub
		return "/product/product/";
	}

	@Override
	protected IBaseService<Product> getService() {
		return productService;
	}

	public String getModuleName() {
		// TODO Auto-generated method stub
		return "产品模块>产品表";	
	}
}
