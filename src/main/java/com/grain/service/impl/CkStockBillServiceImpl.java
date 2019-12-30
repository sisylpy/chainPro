package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkStockBillDao;
import com.grain.entity.CkStockBillEntity;
import com.grain.service.CkStockBillService;



@Service("ckStockBillService")
public class CkStockBillServiceImpl implements CkStockBillService {
	@Autowired
	private CkStockBillDao ckStockBillDao;
	
	@Override
	public CkStockBillEntity queryObject(Integer stockBillId){
		return ckStockBillDao.queryObject(stockBillId);
	}
	
	@Override
	public List<CkStockBillEntity> queryList(Map<String, Object> map){
		return ckStockBillDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckStockBillDao.queryTotal(map);
	}
	
	@Override
	public void save(CkStockBillEntity ckStockBill){
		ckStockBillDao.save(ckStockBill);
	}
	
	@Override
	public void update(CkStockBillEntity ckStockBill){
		ckStockBillDao.update(ckStockBill);
	}
	
	@Override
	public void delete(Integer stockBillId){
		ckStockBillDao.delete(stockBillId);
	}
	
	@Override
	public void deleteBatch(Integer[] stockBillIds){
		ckStockBillDao.deleteBatch(stockBillIds);
	}

	@Override
	public List<CkStockBillEntity> queryByInStoreId(Integer storeId) {
		return ckStockBillDao.queryByInStoreId(storeId);
	}

}
