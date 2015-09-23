package  com.eshore.khala.product.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.khala.common.model.PageConfig;
import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.khala.product.dao.IProductDao;
import com.eshore.khala.product.pojo.Product;
import com.eshore.khala.product.service.IProductService;

/**
 * 产品表业务接口实现
 * 
 * @author 
 * @version 1.0 2012-10-19
 */
@Service
@Transactional
public class ProductServiceImpl extends BaseServiceImpl<Product> implements IProductService {

	@Autowired
	IProductDao productDao;
	
	@Override
    public List<Product> listExt(Product product,PageConfig pageConfig) {
        return productDao.queryPageExt(product, pageConfig);
    }
    
	@Override
	public IBaseDao<Product> getDao() {
		return (IBaseDao<Product>)productDao;
	}
}
