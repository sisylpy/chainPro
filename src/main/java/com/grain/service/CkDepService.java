package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 12:11:19
 */

import com.grain.entity.CkDepEntity;

import java.util.List;
import java.util.Map;

public interface CkDepService {
	
	CkDepEntity queryObject(Integer depId);
	
	List<CkDepEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkDepEntity ckStoreDep);
	
	void update(CkDepEntity ckStoreDep);
	
	void delete(Integer depId);
	
	void deleteBatch(Integer[] depIds);

    List<CkDepEntity> queryTypeDepList(Integer type);
}
