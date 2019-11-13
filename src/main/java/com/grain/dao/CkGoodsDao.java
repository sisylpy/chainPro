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

    List<CkGoodsEntity> queryCateGoods();

    List<CkGoodsEntity> queryGoodsList(Map<String, Object> map);


    List<CkGoodsEntity> queryPinyin(String pinyin);

    List<CkGoodsEntity> queryHeadPinyin(String pinyin);

    List<CkGoodsEntity> queryOutDepCateList(Integer depId);

    List<CkGoodsEntity> queryOutDepGoodsListAll(Map<String, Object> map);

    List<CkGoodsEntity> queryOutDepGoodsListByFatherId(Map<String, Object> map);

}
