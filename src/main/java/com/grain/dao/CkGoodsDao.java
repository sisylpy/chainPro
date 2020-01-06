package com.grain.dao;

/**
 *
 *
 * @author lpy
 * @date 2019-09-19 19:11:01
 */

import com.grain.entity.CkGoodsEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


public interface CkGoodsDao extends BaseDao<CkGoodsEntity> {

    List<CkGoodsEntity> queryTypeGoods(Map<String, Object> map);


    List<CkGoodsEntity> queryGoodsList(Map<String, Object> map);

    List<CkGoodsEntity> queryPinyin(String pinyin);

    List<CkGoodsEntity> queryHeadPinyin(String pinyin);

    List<CkGoodsEntity> queryGoodsListByRecord(String substring);

    List<CkGoodsEntity> getAll();

    List<CkGoodsEntity> queryPurchaseGoods(@Param("purDepId") Integer purDepId);

    List<CkGoodsEntity> queryGoodsByParams(Map<String, Object> map);

    int queryTotalByParams(Map<String, Object> map);

    List<CkGoodsEntity> querypurchaseGoodsByFatherId(Map<String, Object> map);

    List<CkGoodsEntity> queryCateList(Integer type);

    List<CkGoodsEntity> queryPurchaseGoodsByType(Integer type);
}
