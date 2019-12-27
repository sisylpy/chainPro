package com.grain.dao;

/**
 * 零售终端
 *
 * @author lpy
 * @date 2019-10-15 23:48:27
 */

import com.grain.entity.CkStoreEntity;

import java.util.List;


public interface CkStoreDao extends BaseDao<CkStoreEntity> {

    CkStoreEntity storeLogin(String phone);

    List<CkStoreEntity> queryLineStore();

    List<CkStoreEntity> queryAll();
}
