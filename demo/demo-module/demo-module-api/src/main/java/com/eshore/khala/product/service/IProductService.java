package com.eshore.khala.product.service;

import java.util.List;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.api.IBaseService;
import com.eshore.khala.product.pojo.Product;

/**
 * 
 */
public interface IProductService extends IBaseService<Product> {    
    public List<Product> listExt(Product product,PageConfig pageConfig);
}
