package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-09-26 12:59:43
 */

import com.grain.entity.CkLineEntity;

import java.util.List;


public interface CkLineDao extends BaseDao<CkLineEntity> {

    List<CkLineEntity> querLineList();


}
