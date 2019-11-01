package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 17:09:17
 */

import com.grain.entity.CkUserEntity;

import java.util.List;
import java.util.Map;

public interface CkUserService {
	
	CkUserEntity queryObject(Integer ckUserId);
	
	List<CkUserEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkUserEntity ckUser);
	
	void update(CkUserEntity ckUser);
	
	void delete(Integer ckUserId);
	
	void deleteBatch(Integer[] ckUserIds);
}
