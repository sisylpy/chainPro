package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-28 13:22:25
 */

import com.grain.entity.CkInBillEntity;

import java.util.List;


public interface CkInBillDao extends BaseDao<CkInBillEntity> {

    List<CkInBillEntity> queryListByInDepId(Integer depId);
}
