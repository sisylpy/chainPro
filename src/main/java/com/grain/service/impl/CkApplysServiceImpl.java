package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkApplysDao;
import com.grain.entity.CkApplysEntity;
import com.grain.service.CkApplysService;



@Service("ckApplysService")
public class CkApplysServiceImpl implements CkApplysService {
	@Autowired
	private CkApplysDao ckApplysDao;
	
	@Override
	public CkApplysEntity queryObject(Integer applyId){
		return ckApplysDao.queryObject(applyId);
	}
	
	@Override
	public List<CkApplysEntity> queryList(Map<String, Object> map){
		return ckApplysDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckApplysDao.queryTotal(map);
	}
	
	@Override
	public void save(CkApplysEntity ckApplys){
		ckApplysDao.save(ckApplys);
	}
	
	@Override
	public void update(CkApplysEntity ckApplys){
		ckApplysDao.update(ckApplys);
	}
	
	@Override
	public void delete(Integer applyId){
		ckApplysDao.delete(applyId);
	}
	
	@Override
	public void deleteBatch(Integer[] applyIds){
		ckApplysDao.deleteBatch(applyIds);
	}

    @Override
    public List<CkApplysEntity> getStoreApplys(Integer storeId) {

		return ckApplysDao.storeGetApplys(storeId);
    }

    @Override
    public List<CkApplysEntity> queryOutDepApplysWithStatus(Map<String, Object>  map) {

		return ckApplysDao.queryOutDepApplysWithStatus(map);
    }

	@Override
	public List<CkApplysEntity> queryOutDepStores(Map<String, Object> map) {

		return  ckApplysDao.queryOutDepStores(map);
	}

    @Override
    public int outDepQueryTotalByStatus(Map<String, Object> map) {

		return  ckApplysDao.queryOutDepTotalByStatus(map);
    }

}
