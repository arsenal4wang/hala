package com.eshore.khala.product.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.common.utils.type.StringUtils;
import com.eshore.khala.core.data.jpa.dao.impl.JpaDaoImpl;
import com.eshore.khala.product.dao.IProductDao;
import com.eshore.khala.product.pojo.Product;


@Repository
public class ProductDaoImpl extends JpaDaoImpl<Product> implements IProductDao{
    
    @Override
    public List<Product> queryPage(Product product, PageConfig pageConfig) {
        //hql语句中使用对象名称级成员变量名称
        //以name为查询条件的例子
        StringBuilder sql = new StringBuilder("from Product where 1=1");
        if(StringUtils.isNotEmpty(product.getName())){
            sql.append(" and name like '%" + product.getName() + "%'");
        }
        return super.queryPage(sql.toString(), pageConfig, null);
    }
    
    @Override
    public List<Product> queryPageExt(Product product, PageConfig pageConfig) {
        //hql语句中使用对象名称级成员变量名称
        //以name为查询条件的例子
        StringBuilder sql = new StringBuilder("from Product p where 1=1");
        if(StringUtils.isNotEmpty(product.getName())){
            sql.append(" and p.name like '%" + product.getName() + "%'");
        }
        if(StringUtils.isNotEmpty(product.getCategory().getName())){
            sql.append(" and p.category.name like '%" + product.getCategory().getName() + "%'");
        }        
        return (List<Product>)super.queryPage(sql.toString(), pageConfig, null);
    }
}
