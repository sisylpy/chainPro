package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import com.grain.entity.CkApplysEntity;
import com.grain.entity.CkDepEntity;
import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkStoreEntity;

import java.util.List;
import java.util.Map;


public interface CkApplysDao extends BaseDao<CkApplysEntity> {

    List<CkApplysEntity> storeGetApplys(Integer storeId);

    List<CkApplysEntity> queryOutDepApplysWithStatus(Map<String, Object> map);

    List<CkApplysEntity> queryOutDepStores(Map<String, Object> map);

    List<Integer> queryPintTimes(Integer outDepId);

    Integer queryPrintMax(String date);

    List<CkApplysEntity> queryOutDepApplysByQueryIds(Map<String, Object> map);

    List<CkApplysEntity> querySorts(Map<String, Object> map);

    List<CkApplysEntity> queryEnterApplysByPageNumber(Map<String, Object> map);

    List<CkApplysEntity> queryPickStoreListByOutDepId(Map<String, Object> map);

    List<CkApplysEntity> queryGoodsFatherByStoreIds(Map<String, Object> map);

    List<CkApplysEntity> queryTodayApplysByDepId(Map<String, Object> map);

    List<CkApplysEntity> queryOutDepApplysWithStatusAndPageNumber(Map<String, Object> map);

    List<CkApplysEntity> queryApplysByLimit(Map<String, Object> map);

    int getApplysByLimit(Map<String, Object> map);

    List<CkApplysEntity> queryApplysAndSorts(Map<String, Object>  map);


    List<CkApplysEntity> getTodayApplysStores(Map<String, Object>  map);

    List<CkApplysEntity> queryApplysByFatherId(Map<String, Object> map);
}
