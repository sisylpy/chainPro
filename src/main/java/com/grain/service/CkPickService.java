package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-25 20:17:53
 */

import com.grain.entity.CkPickEntity;

import java.util.List;
import java.util.Map;

public interface CkPickService {
	
	CkPickEntity queryObject(Integer pickId);
	
	List<CkPickEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkPickEntity ckPick);
	
	void update(CkPickEntity ckPick);
	
	void delete(Integer pickId);
	
	void deleteBatch(Integer[] pickIds);
}
