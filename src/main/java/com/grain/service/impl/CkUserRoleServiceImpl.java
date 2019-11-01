package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.grain.dao.CkUserRoleDao;
import com.grain.entity.CkUserRoleEntity;
import com.grain.service.CkUserRoleService;



@Service("ckUserRoleService")
public class CkUserRoleServiceImpl implements CkUserRoleService {
	@Autowired
	private CkUserRoleDao ckUserRoleDao;
	
	@Override
	public CkUserRoleEntity queryObject(Long userRoleId){
		return ckUserRoleDao.queryObject(userRoleId);
	}
	
	@Override
	public List<CkUserRoleEntity> queryList(Map<String, Object> map){
		return ckUserRoleDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckUserRoleDao.queryTotal(map);
	}
	
	@Override
	public void save(CkUserRoleEntity ckUserRole){
		ckUserRoleDao.save(ckUserRole);
	}
	
	@Override
	public void update(CkUserRoleEntity ckUserRole){
		ckUserRoleDao.update(ckUserRole);
	}
	
	@Override
	public void delete(Long userRoleId){
		ckUserRoleDao.delete(userRoleId);
	}
	
	@Override
	public void deleteBatch(Long[] userRoleIds){
		ckUserRoleDao.deleteBatch(userRoleIds);
	}

	@Override
	public void saveOrUpdate(Integer userId, List<Long> roleIdList) {
		if(roleIdList.size() == 0){
			return ;
		}

		//先删除用户与角色关系
		ckUserRoleDao.delete(userId);

		//保存用户与角色关系
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("roleIdList", roleIdList);

		System.out.println(map);
		System.out.println("sisysisy...........................");
		ckUserRoleDao.save(map);
	}

	@Override
    public List<Long> queryRoleIdList(Long userId) {

		return ckUserRoleDao.queryRoleIdList(userId);
    }

}
