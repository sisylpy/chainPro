package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-20 13:35:40
 */

import com.grain.entity.CkOutDepEntity;

import java.util.List;
import java.util.Map;

public interface CkOutDepService {
	
	CkOutDepEntity queryObject(Integer outDepId);
	
	List<CkOutDepEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkOutDepEntity ckOutDep);
	
	void update(CkOutDepEntity ckOutDep);
	
	void delete(Integer outDepId);
	
	void deleteBatch(Integer[] outDepIds);

	List<CkOutDepEntity> queryAllList();

}
