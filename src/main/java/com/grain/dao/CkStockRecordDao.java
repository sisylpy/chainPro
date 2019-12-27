package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-11-07 19:44:55
 */

import com.grain.entity.CkStockRecordEntity;
import com.grain.entity.CkStoreEntity;

import java.util.List;
import java.util.Map;


public interface CkStockRecordDao extends BaseDao<CkStockRecordEntity> {

    List<CkStockRecordEntity> getDeliverStores();

    List<CkStockRecordEntity> queryListByStoreId(Map<String, Object> map);

}
