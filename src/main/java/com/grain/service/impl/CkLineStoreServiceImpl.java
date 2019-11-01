package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkLineStoreDao;
import com.grain.entity.CkLineStoreEntity;
import com.grain.service.CkLineStoreService;



@Service("ckLineStoreService")
public class CkLineStoreServiceImpl implements CkLineStoreService {
	@Autowired
	private CkLineStoreDao ckLineStoreDao;
	
	@Override
	public CkLineStoreEntity queryObject(Integer lineStoreId){
		return ckLineStoreDao.queryObject(lineStoreId);
	}
	
	@Override
	public List<CkLineStoreEntity> queryList(Map<String, Object> map){
		return ckLineStoreDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckLineStoreDao.queryTotal(map);
	}
	
	@Override
	public void save(CkLineStoreEntity ckLineStore){
		ckLineStoreDao.save(ckLineStore);
	}
	
	@Override
	public void update(CkLineStoreEntity ckLineStore){
		ckLineStoreDao.update(ckLineStore);
	}
	
	@Override
	public void delete(Integer lineStoreId){
		ckLineStoreDao.delete(lineStoreId);
	}
	
	@Override
	public void deleteBatch(Integer[] lineStoreIds){
		ckLineStoreDao.deleteBatch(lineStoreIds);
	}
	
}
