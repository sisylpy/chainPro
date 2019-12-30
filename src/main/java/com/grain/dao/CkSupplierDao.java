package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-09-19 23:44:01
 */

import com.grain.entity.CkSupplierEntity;

import java.util.List;


public interface CkSupplierDao extends BaseDao<CkSupplierEntity> {

    List<CkSupplierEntity> queryByPayMethods(Integer methods);
}
