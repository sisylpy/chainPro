package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkOutDepDao;
import com.grain.entity.CkOutDepEntity;
import com.grain.service.CkOutDepService;



@Service("ckOutDepService")
public class CkOutDepServiceImpl implements CkOutDepService {
	@Autowired
	private CkOutDepDao ckOutDepDao;
	
	@Override
	public CkOutDepEntity queryObject(Integer outDepId){
		return ckOutDepDao.queryObject(outDepId);
	}
	
	@Override
	public List<CkOutDepEntity> queryList(Map<String, Object> map){
		return ckOutDepDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckOutDepDao.queryTotal(map);
	}
	
	@Override
	public void save(CkOutDepEntity ckOutDep){
		ckOutDepDao.save(ckOutDep);
	}
	
	@Override
	public void update(CkOutDepEntity ckOutDep){
		ckOutDepDao.update(ckOutDep);
	}
	
	@Override
	public void delete(Integer outDepId){
		ckOutDepDao.delete(outDepId);
	}
	
	@Override
	public void deleteBatch(Integer[] outDepIds){
		ckOutDepDao.deleteBatch(outDepIds);
	}

    @Override
    public List<CkOutDepEntity> queryAllList() {
       return ckOutDepDao.queryAll();
    }

}
