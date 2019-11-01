package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkStoreDepDao;
import com.grain.entity.CkStoreDepEntity;
import com.grain.service.CkStoreDepService;



@Service("ckStoreDepService")
public class CkStoreDepServiceImpl implements CkStoreDepService {
	@Autowired
	private CkStoreDepDao ckStoreDepDao;
	
	@Override
	public CkStoreDepEntity queryObject(Integer depId){
		return ckStoreDepDao.queryObject(depId);
	}
	
	@Override
	public List<CkStoreDepEntity> queryList(Map<String, Object> map){
		return ckStoreDepDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckStoreDepDao.queryTotal(map);
	}
	
	@Override
	public void save(CkStoreDepEntity ckStoreDep){
		ckStoreDepDao.save(ckStoreDep);
	}
	
	@Override
	public void update(CkStoreDepEntity ckStoreDep){
		ckStoreDepDao.update(ckStoreDep);
	}
	
	@Override
	public void delete(Integer depId){
		ckStoreDepDao.delete(depId);
	}
	
	@Override
	public void deleteBatch(Integer[] depIds){
		ckStoreDepDao.deleteBatch(depIds);
	}

    @Override
    public List<CkStoreDepEntity> queryTypeDepList(Integer type) {

		return ckStoreDepDao.queryTypeList(type);
    }

}
