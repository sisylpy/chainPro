package com.grain.service.impl;

import com.grain.entity.SysMenuEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.grain.dao.CkGoodsDao;
import com.grain.entity.CkGoodsEntity;
import com.grain.service.CkGoodsService;



@Service("ckGoodsService")
public class CkGoodsServiceImpl implements CkGoodsService {
	@Autowired
	private CkGoodsDao ckGoodsDao;
	
	@Override
	public CkGoodsEntity queryObject(Integer goodsId){
		return ckGoodsDao.queryObject(goodsId);
	}
	
	@Override
	public List<CkGoodsEntity> queryList(Map<String, Object> map){
		return ckGoodsDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckGoodsDao.queryTotal(map);
	}
	
	@Override
	public void save(CkGoodsEntity ckGoods){ ckGoodsDao.save(ckGoods); }
	
	@Override
	public void update(CkGoodsEntity ckGoods){
		ckGoodsDao.update(ckGoods);
	}
	
	@Override
	public void delete(Integer goodsId){
		ckGoodsDao.delete(goodsId);
	}
	
	@Override
	public void deleteBatch(Integer[] goodsIds){
		ckGoodsDao.deleteBatch(goodsIds);
	}

    @Override
    public List<CkGoodsEntity> queryGoodsList(Map<String, Object> map) { return ckGoodsDao.queryGoodsList(map); }

    @Override
    public List<CkGoodsEntity> queryPinyin(String pinyin) { return ckGoodsDao.queryPinyin(pinyin); }

    @Override
    public List<CkGoodsEntity> queryRecordGoods(String substring) { return ckGoodsDao.queryGoodsListByRecord(substring); }

    @Override
    public List<CkGoodsEntity> downloadGoods() { return ckGoodsDao.getAll(); }

    @Override
    public List<CkGoodsEntity> queryPurchaseGoods(Integer purDepId) { return ckGoodsDao.queryPurchaseGoods(purDepId); }

	@Override
	public List<CkGoodsEntity> queryGoodsByParams(Map<String, Object> map) {
		return ckGoodsDao.queryGoodsByParams(map);
	}

    @Override
    public int queryTotalByParams(Map<String, Object> map) {
        return ckGoodsDao.queryTotalByParams(map);
    }

	@Override
	public List<CkGoodsEntity> queryPurchaseGoodsByFatherId(Map<String, Object> map) {
		return ckGoodsDao.querypurchaseGoodsByFatherId(map);
	}

	@Override
	public List<CkGoodsEntity> queryTypeCateList(Integer type) {
		return ckGoodsDao.queryCateList(type);
	}

    @Override
    public List<CkGoodsEntity> queryPurchaseGoodsByType(Integer type) {
        return ckGoodsDao.queryPurchaseGoodsByType(type);

    }


}
