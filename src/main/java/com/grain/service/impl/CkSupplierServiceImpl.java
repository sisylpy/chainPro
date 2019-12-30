package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkSupplierDao;
import com.grain.entity.CkSupplierEntity;
import com.grain.service.CkSupplierService;



@Service("ckSupplierService")
public class CkSupplierServiceImpl implements CkSupplierService {
	@Autowired
	private CkSupplierDao ckSupplierDao;
	
	@Override
	public CkSupplierEntity queryObject(Integer supplierId){
		return ckSupplierDao.queryObject(supplierId);
	}
	
	@Override
	public List<CkSupplierEntity> queryList(Map<String, Object> map){
		return ckSupplierDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckSupplierDao.queryTotal(map);
	}
	
	@Override
	public void save(CkSupplierEntity ckSupplier){
		ckSupplierDao.save(ckSupplier);
	}
	
	@Override
	public void update(CkSupplierEntity ckSupplier){
		ckSupplierDao.update(ckSupplier);
	}
	
	@Override
	public void delete(Integer supplierId){
		ckSupplierDao.delete(supplierId);
	}
	
	@Override
	public void deleteBatch(Integer[] supplierIds){
		ckSupplierDao.deleteBatch(supplierIds);
	}

	@Override
	public List<CkSupplierEntity> queryByPayMethods(Integer methods) {
		return ckSupplierDao.queryByPayMethods(methods);
	}


}
