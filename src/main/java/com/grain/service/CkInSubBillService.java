package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-28 13:18:57
 */

import com.grain.entity.CkInSubBillEntity;

import java.util.List;
import java.util.Map;

public interface CkInSubBillService {
	
	CkInSubBillEntity queryObject(Integer inSubBillId);
	
	List<CkInSubBillEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkInSubBillEntity ckInSubBill);
	
	void update(CkInSubBillEntity ckInSubBill);
	
	void delete(Integer inSubBillId);
	
	void deleteBatch(Integer[] inSubBillIds);
}
