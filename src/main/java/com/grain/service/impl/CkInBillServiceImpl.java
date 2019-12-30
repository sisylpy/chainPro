package com.grain.service.impl;

import com.grain.entity.CkInSubBillEntity;
import com.grain.service.CkInSubBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import com.grain.dao.CkInBillDao;
import com.grain.entity.CkInBillEntity;
import com.grain.service.CkInBillService;



@Service("ckInBillService")
public class CkInBillServiceImpl implements CkInBillService {
	@Autowired
	private CkInBillDao ckInBillDao;
	@Autowired
	private CkInSubBillService subBillService;
	
	@Override
	public CkInBillEntity queryObject(Integer inBillId){
		return ckInBillDao.queryObject(inBillId);
	}
	
	@Override
	public List<CkInBillEntity> queryList(Map<String, Object> map){
		return ckInBillDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckInBillDao.queryTotal(map);
	}
	
	@Override
	public void save(CkInBillEntity ckInBill){

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/mm/dd");
		String todayDate = dateFormat.format(new Date());
		ckInBill.setInDatetime(todayDate);

		ckInBillDao.save(ckInBill);

		Integer inBillId = ckInBill.getInBillId();

		List<CkInSubBillEntity> subBillEntities = ckInBill.getSubBillEntities();
		for (CkInSubBillEntity s : subBillEntities) {
			subBillService.save(s);
			s.setMainBillId(inBillId);
			subBillService.update(s);
		}

	}
	
	@Override
	public void update(CkInBillEntity ckInBill){
		ckInBillDao.update(ckInBill);
	}
	
	@Override
	public void delete(Integer inBillId){
		ckInBillDao.delete(inBillId);
	}
	
	@Override
	public void deleteBatch(Integer[] inBillIds){
		ckInBillDao.deleteBatch(inBillIds);
	}



}
