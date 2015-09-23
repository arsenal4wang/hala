package  com.eshore.khala.product.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eshore.khala.core.data.api.dao.IBaseDao;
import com.eshore.khala.core.service.impl.BaseServiceImpl;
import com.eshore.khala.product.dao.ICategoryDao;
import com.eshore.khala.product.pojo.Category;
import com.eshore.khala.product.service.ICategoryService;

/**
 * 类型表业务接口实现
 * 
 * @author 
 * @version 1.0 2012-10-19
 */
@Service
@Transactional
public class CategoryServiceImpl extends BaseServiceImpl<Category> implements ICategoryService {

	@Autowired
	ICategoryDao categoryDao;
	
	@Override
	public IBaseDao<Category> getDao() {
		return (IBaseDao<Category>)categoryDao;
	}
}
