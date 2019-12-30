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


    Integer queryPrintMax(String date);

    List<CkApplysEntity> queryApplysByQueryIds(Map<String, Object> map);

    List<CkApplysEntity> queryApplysByQueryId(Map<String, Object> map);

    List<CkApplysEntity> queryApplysByLimit(Map<String, Object> map);

    int getApplysByLimit(Map<String, Object> map);

    List<CkApplysEntity> queryApplysAndSorts(Map<String, Object>  map);

    List<CkApplysEntity> getTodayApplysStores(Map<String, Object>  map);


    List<CkApplysEntity> queryApplysForWeigh(Map<String, Object> map);

    List<CkApplysEntity> queryapplysByGoodsIdForWeigh(Map<String, Object> map);

}
