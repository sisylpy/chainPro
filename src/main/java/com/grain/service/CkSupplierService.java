package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-09-19 23:44:01
 */

import com.grain.entity.CkSupplierEntity;

import java.util.List;
import java.util.Map;

public interface CkSupplierService {
	
	CkSupplierEntity queryObject(Integer supplierId);
	
	List<CkSupplierEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkSupplierEntity ckSupplier);
	
	void update(CkSupplierEntity ckSupplier);
	
	void delete(Integer supplierId);
	
	void deleteBatch(Integer[] supplierIds);

	List<CkSupplierEntity> queryByPayMethods(Integer methods);
}
