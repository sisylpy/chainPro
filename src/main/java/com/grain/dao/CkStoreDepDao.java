package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 12:11:19
 */

import com.grain.entity.CkStoreDepEntity;

import java.util.List;


public interface CkStoreDepDao extends BaseDao<CkStoreDepEntity> {

    List<CkStoreDepEntity> queryTypeList(Integer type);
}
