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
	public void save(CkGoodsEntity ckGoods){

		ckGoodsDao.save(ckGoods);
	}
	
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

//	@Override
//	public List<CkGoodsEntity> queryTypeGoods(Map<String, Object> map) {
//		return  	ckGoodsDao.queryTypeGoods(map);
//	}

    @Override
    public List<CkGoodsEntity> queryCateGoods() {

		return ckGoodsDao.queryCateGoods();
    }

    @Override
    public List<CkGoodsEntity> queryGoodsList(Map<String, Object> map) {

		return ckGoodsDao.queryGoodsList(map);
    }

    @Override
    public List<CkGoodsEntity> queryPinyin(String pinyin) {

		List<CkGoodsEntity> allList = new ArrayList<>();
		List<CkGoodsEntity> goodsEntities =  ckGoodsDao.queryPinyin(pinyin);
//		List<CkGoodsEntity> goodsEntities1 =  ckGoodsDao.queryHeadPinyin(pinyin);
		allList.addAll(goodsEntities);
//		allList.addAll(goodsEntities1);
		return allList;


    }

	@Override
	public List<CkGoodsEntity> queryOutDepCateList(Integer depId) {

		return ckGoodsDao.queryOutDepCateList(depId);
	}

	@Override
	public List<CkGoodsEntity> queryOutDepGoodsListAll(Map<String, Object> map) {

		return ckGoodsDao.queryOutDepGoodsListAll(map);
	}

	@Override
	public List<CkGoodsEntity> queryOutDepGoodsListByFatherId(Map<String, Object> map) {
		return ckGoodsDao.queryOutDepGoodsListByFatherId(map);
	}

    @Override
    public List<CkGoodsEntity> queryRecordGoods(String substring) {

		return ckGoodsDao.queryGoodsListByRecord(substring);
    }


}
