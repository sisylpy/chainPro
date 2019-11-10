package com.grain.service.impl;

import com.grain.entity.CkStoreEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkStockRecordDao;
import com.grain.entity.CkStockRecordEntity;
import com.grain.service.CkStockRecordService;



@Service("ckStockRecordService")
public class CkStockRecordServiceImpl implements CkStockRecordService {
	@Autowired
	private CkStockRecordDao ckStockRecordDao;
	
	@Override
	public CkStockRecordEntity queryObject(Integer stockRecordId){
		return ckStockRecordDao.queryObject(stockRecordId);
	}
	
	@Override
	public List<CkStockRecordEntity> queryList(Map<String, Object> map){
		return ckStockRecordDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckStockRecordDao.queryTotal(map);
	}
	
	@Override
	public void save(CkStockRecordEntity ckStockRecord){
		ckStockRecordDao.save(ckStockRecord);
	}
	
	@Override
	public void update(CkStockRecordEntity ckStockRecord){
		ckStockRecordDao.update(ckStockRecord);
	}
	
	@Override
	public void delete(Integer stockRecordId){
		ckStockRecordDao.delete(stockRecordId);
	}
	
	@Override
	public void deleteBatch(Integer[] stockRecordIds){
		ckStockRecordDao.deleteBatch(stockRecordIds);
	}

    @Override
    public List<CkStockRecordEntity> getDeliverOrderStores() {

		return ckStockRecordDao.getDeliverStores();
    }


}
