package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 12:11:19
 */

import com.grain.entity.CkDepEntity;
import com.grain.entity.CkDepEntity;

import java.util.List;


public interface CkDepDao extends BaseDao<CkDepEntity> {

    List<CkDepEntity> queryTypeList(Integer type);
}
