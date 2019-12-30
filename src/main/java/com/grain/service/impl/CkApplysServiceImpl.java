package com.grain.service.impl;

import com.grain.entity.CkDepEntity;
import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkStoreEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkApplysDao;
import com.grain.entity.CkApplysEntity;
import com.grain.service.CkApplysService;



@Service("ckApplysService")
public class CkApplysServiceImpl implements CkApplysService {
	@Autowired
	private CkApplysDao ckApplysDao;
	
	@Override
	public CkApplysEntity queryObject(Integer applyId){
		return ckApplysDao.queryObject(applyId);
	}
	
	@Override
	public List<CkApplysEntity> queryList(Map<String, Object> map){
		return ckApplysDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckApplysDao.queryTotal(map);
	}
	
	@Override
	public void save(CkApplysEntity ckApplys){
		ckApplysDao.save(ckApplys);
	}
	
	@Override
	public void update(CkApplysEntity ckApplys){ ckApplysDao.update(ckApplys); }
	
	@Override
	public void delete(Integer applyId){
		ckApplysDao.delete(applyId);
	}
	
	@Override
	public void deleteBatch(Integer[] applyIds){ ckApplysDao.deleteBatch(applyIds); }

	@Override
	public Integer queryPintMax(String date) { return ckApplysDao.queryPrintMax(date); }

    @Override
    public List<CkApplysEntity> queryApplysByQueryIds(Map<String, Object> map) { return ckApplysDao.queryApplysByQueryIds(map); }

	@Override
	public List<CkApplysEntity> queryApplysByQueryId(Map<String, Object> map) { return ckApplysDao.queryApplysByQueryId(map); }

	@Override
	public List<CkApplysEntity> queryApplysByLimit(Map<String, Object> map) {
		return ckApplysDao.queryApplysByLimit(map);
	}

	@Override
	public int queryTotalByLimit(Map<String, Object> map) {
		return ckApplysDao.getApplysByLimit(map);
	}

    @Override
    public List<CkApplysEntity> queryApplysAndSorts(Map<String, Object>  map) { return ckApplysDao.queryApplysAndSorts(map); }

	@Override
	public List<CkApplysEntity> getTodayApplysStores(Map<String, Object>  map) { return ckApplysDao.getTodayApplysStores(map); }

	@Override
	public List<CkApplysEntity> queryApplysForWeigh(Map<String, Object> map) {
		return ckApplysDao.queryApplysForWeigh(map);
	}

	@Override
	public List<CkApplysEntity> queryApplysByGoodsIdForWeigh(Map<String, Object> map) {
		return ckApplysDao.queryapplysByGoodsIdForWeigh(map);
	}


}
