package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkInSubBillDao;
import com.grain.entity.CkInSubBillEntity;
import com.grain.service.CkInSubBillService;



@Service("ckInSubBillService")
public class CkInSubBillServiceImpl implements CkInSubBillService {
	@Autowired
	private CkInSubBillDao ckInSubBillDao;
	
	@Override
	public CkInSubBillEntity queryObject(Integer inSubBillId){
		return ckInSubBillDao.queryObject(inSubBillId);
	}
	
	@Override
	public List<CkInSubBillEntity> queryList(Map<String, Object> map){
		return ckInSubBillDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckInSubBillDao.queryTotal(map);
	}
	
	@Override
	public void save(CkInSubBillEntity ckInSubBill){

		ckInSubBillDao.save(ckInSubBill);
	}
	
	@Override
	public void update(CkInSubBillEntity ckInSubBill){
		System.out.println("updatelema?");
		System.out.println(ckInSubBill);
		ckInSubBillDao.update(ckInSubBill);
	}
	
	@Override
	public void delete(Integer inSubBillId){
		ckInSubBillDao.delete(inSubBillId);
	}
	
	@Override
	public void deleteBatch(Integer[] inSubBillIds){
		ckInSubBillDao.deleteBatch(inSubBillIds);
	}
	
}
