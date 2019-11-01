package com.grain.service;

/**
 * 用户与角色对应关系
 *
 * @author lpy
 * @date 2019-10-27 16:13:06
 */

import com.grain.entity.CkUserRoleEntity;

import java.util.List;
import java.util.Map;

public interface CkUserRoleService {
	
	CkUserRoleEntity queryObject(Long userRoleId);
	
	List<CkUserRoleEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkUserRoleEntity ckUserRole);
	
	void update(CkUserRoleEntity ckUserRole);
	
	void delete(Long userRoleId);
	
	void deleteBatch(Long[] userRoleIds);


	void saveOrUpdate(Integer userId, List<Long> roleIdList);

	/**
	 * 根据用户ID，获取角色ID列表
	 */
	List<Long> queryRoleIdList(Long userId);

}
