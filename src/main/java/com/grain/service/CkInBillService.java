package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-28 13:22:25
 */

import com.grain.entity.CkInBillEntity;

import java.util.List;
import java.util.Map;

public interface CkInBillService {
	
	CkInBillEntity queryObject(Integer inBillId);

	int queryTotal(Map<String, Object> map);
	
	void save(CkInBillEntity ckInBill);
	
	void update(CkInBillEntity ckInBill);
	
	void delete(Integer inBillId);
	
	void deleteBatch(Integer[] inBillIds);

	List<CkInBillEntity> queryListByInDepId(Integer depId);
}
