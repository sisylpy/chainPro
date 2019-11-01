package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkStoreDao;
import com.grain.entity.CkStoreEntity;
import com.grain.service.CkStoreService;



@Service("ckStoreService")
public class CkStoreServiceImpl implements CkStoreService {
	@Autowired
	private CkStoreDao ckStoreDao;
	
	@Override
	public CkStoreEntity queryObject(Integer storeId){
		return ckStoreDao.queryObject(storeId);
	}
	
	@Override
	public List<CkStoreEntity> queryList(Map<String, Object> map){
		return ckStoreDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckStoreDao.queryTotal(map);
	}
	
	@Override
	public void save(CkStoreEntity ckStore){
		ckStoreDao.save(ckStore);
	}
	
	@Override
	public void update(CkStoreEntity ckStore){
		ckStoreDao.update(ckStore);
	}
	
	@Override
	public void delete(Integer storeId){
		ckStoreDao.delete(storeId);
	}
	
	@Override
	public void deleteBatch(Integer[] storeIds){
		ckStoreDao.deleteBatch(storeIds);
	}

    @Override
    public CkStoreEntity storeLogin(String phone) {

		return  ckStoreDao.storeLogin(phone);
    }

    @Override
    public List<CkStoreEntity> queryLineStore() {

	    return 	ckStoreDao.queryLineStore();
    }

}
