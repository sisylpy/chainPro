package com.grain.service.impl;

import com.grain.dao.CkUserRoleDao;
import com.grain.service.CkUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkUserDao;
import com.grain.entity.CkUserEntity;
import com.grain.service.CkUserService;



@Service("ckUserService")
public class CkUserServiceImpl implements CkUserService {
	@Autowired
	private CkUserDao ckUserDao;

	@Autowired
	private CkUserRoleService ckUserRoleService;
	
	@Override
	public CkUserEntity queryObject(Integer ckUserId){
		return ckUserDao.queryObject(ckUserId);
	}
	
	@Override
	public List<CkUserEntity> queryList(Map<String, Object> map){
		return ckUserDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckUserDao.queryTotal(map);
	}
	
	@Override
	public void save(CkUserEntity ckUser){

		System.out.println("service impl li!!");

		ckUserDao.save(ckUser);

		ckUserRoleService.saveOrUpdate(ckUser.getCkUserId(), ckUser.getRoleIds());


	}
	
	@Override
	public void update(CkUserEntity ckUser){
		ckUserDao.update(ckUser);
	}
	
	@Override
	public void delete(Integer ckUserId){
		ckUserDao.delete(ckUserId);
	}
	
	@Override
	public void deleteBatch(Integer[] ckUserIds){
		ckUserDao.deleteBatch(ckUserIds);
	}
	
}
