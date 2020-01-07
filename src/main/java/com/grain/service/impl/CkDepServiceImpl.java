package com.grain.service.impl;

import com.grain.entity.CkDepEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkDepDao;
import com.grain.service.CkDepService;



@Service("ckStoreDepService")
public class CkDepServiceImpl implements CkDepService {
	@Autowired
	private CkDepDao ckDepDao;
	
	@Override
	public CkDepEntity queryObject(Integer depId){
		return ckDepDao.queryObject(depId);
	}
	
	@Override
	public List<CkDepEntity> queryList(Map<String, Object> map){
		return ckDepDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckDepDao.queryTotal(map);
	}
	
	@Override
	public void save(CkDepEntity ckStoreDep){
		ckDepDao.save(ckStoreDep);
	}
	
	@Override
	public void update(CkDepEntity ckStoreDep){
		ckDepDao.update(ckStoreDep);
	}
	
	@Override
	public void delete(Integer depId){
		ckDepDao.delete(depId);
	}
	
	@Override
	public void deleteBatch(Integer[] depIds){
		ckDepDao.deleteBatch(depIds);
	}

    @Override
    public List<CkDepEntity> queryTypeDepList(Integer type) {

		return ckDepDao.queryTypeList(type);
    }



}
