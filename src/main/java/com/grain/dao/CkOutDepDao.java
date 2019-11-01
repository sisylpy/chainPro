package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-20 13:35:40
 */

import com.grain.entity.CkOutDepEntity;

import java.util.List;


public interface CkOutDepDao extends BaseDao<CkOutDepEntity> {

    List<CkOutDepEntity> queryAll();

}
