package com.grain.dao;

import com.grain.entity.SysRoleEntity;

import java.util.List;

/**
 * 角色管理
 * 
 */
public interface SysRoleDao extends BaseDao<SysRoleEntity> {

    List<SysRoleEntity> queryListAll();

}
