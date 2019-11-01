package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-09-26 12:59:43
 */

import com.grain.entity.CkLineEntity;

import java.util.List;
import java.util.Map;

public interface CkLineService {
	
	CkLineEntity queryObject(Integer lineId);
	
	List<CkLineEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkLineEntity ckLine);
	
	void update(CkLineEntity ckLine);
	
	void delete(Integer lineId);
	
	void deleteBatch(Integer[] lineIds);

    List<CkLineEntity> queryLineList(Map<String, Object> map);
}
