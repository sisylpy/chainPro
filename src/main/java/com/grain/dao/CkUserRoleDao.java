package com.grain.dao;

/**
 * 用户与角色对应关系
 *
 * @author lpy
 * @date 2019-10-27 16:13:06
 */

import com.grain.entity.CkUserRoleEntity;

import java.util.List;


public interface CkUserRoleDao extends BaseDao<CkUserRoleEntity> {

    List<Long> queryRoleIdList(Long userId);
}
