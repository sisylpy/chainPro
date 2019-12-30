package com.grain.dao;

/**
 * 
 *
 * @author lpy
 * @date 2019-12-28 10:30:47
 */

import com.grain.entity.CkStockBillEntity;
import com.grain.service.CkStockBillService;

import java.util.List;


public interface CkStockBillDao extends BaseDao<CkStockBillEntity> {

    List<CkStockBillEntity> queryByInStoreId(Integer storeId);
}
