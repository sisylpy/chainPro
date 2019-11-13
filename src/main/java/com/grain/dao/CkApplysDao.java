package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import com.grain.entity.CkApplysEntity;

import java.util.List;
import java.util.Map;


public interface CkApplysDao extends BaseDao<CkApplysEntity> {

    List<CkApplysEntity> storeGetApplys(Integer storeId);

    List<CkApplysEntity> queryOutDepApplysWithStatus(Map<String, Object> map);

    List<CkApplysEntity> queryOutDepStores(Map<String, Object> map);

    List<Integer> queryPintTimes();

    Integer queryPrintMax(String date);

    List<CkApplysEntity> queryOutDepApplysByQueryIds(Map<String, Object> map);
}
