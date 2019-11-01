package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkPickDao;
import com.grain.entity.CkPickEntity;
import com.grain.service.CkPickService;



@Service("ckPickService")
public class CkPickServiceImpl implements CkPickService {
	@Autowired
	private CkPickDao ckPickDao;
	
	@Override
	public CkPickEntity queryObject(Integer pickId){
		return ckPickDao.queryObject(pickId);
	}
	
	@Override
	public List<CkPickEntity> queryList(Map<String, Object> map){
		return ckPickDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckPickDao.queryTotal(map);
	}
	
	@Override
	public void save(CkPickEntity ckPick){
		ckPickDao.save(ckPick);
	}
	
	@Override
	public void update(CkPickEntity ckPick){
		ckPickDao.update(ckPick);
	}
	
	@Override
	public void delete(Integer pickId){
		ckPickDao.delete(pickId);
	}
	
	@Override
	public void deleteBatch(Integer[] pickIds){
		ckPickDao.deleteBatch(pickIds);
	}
	
}
