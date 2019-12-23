package com.grain.service.impl;

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
	public void update(CkApplysEntity ckApplys){

		ckApplysDao.update(ckApplys);
	}
	
	@Override
	public void delete(Integer applyId){
		ckApplysDao.delete(applyId);
	}
	
	@Override
	public void deleteBatch(Integer[] applyIds){
		ckApplysDao.deleteBatch(applyIds);
	}

    @Override
    public List<CkApplysEntity> getStoreApplys(Integer storeId) {

		return ckApplysDao.storeGetApplys(storeId);
    }

    @Override
    public List<CkApplysEntity> queryOutDepApplysWithStatus(Map<String, Object>  map) {

		return ckApplysDao.queryOutDepApplysWithStatus(map);
    }

	@Override
	public List<CkApplysEntity> queryOutDepStores(Map<String, Object> map) {

		return  ckApplysDao.queryOutDepStores(map);
	}



    @Override
    public List<Integer> queryPintTimes(Integer outDepId) {

		return ckApplysDao.queryPintTimes(outDepId);
    }

	@Override
	public Integer queryPintMax(String date) {

		return ckApplysDao.queryPrintMax(date);
	}

    @Override
    public List<CkApplysEntity> queryOutDepApplysByQueryIds(Map<String, Object> map) {

		return ckApplysDao.queryOutDepApplysByQueryIds(map);
    }

    @Override
    public List<CkApplysEntity> querySorts(Map<String, Object> map) {

		return ckApplysDao.querySorts(map);
    }

    @Override
    public List<CkApplysEntity> queryEnterApplysByPageNumber(Map<String, Object> map) {

		return ckApplysDao.queryEnterApplysByPageNumber(map);
    }

    @Override
    public List<CkApplysEntity> getPickStoreListByOutDepId(Map<String, Object> map) {

		return ckApplysDao.queryPickStoreListByOutDepId(map);
    }

	@Override
	public List<CkApplysEntity> queryGoodsFatherByStoreIds(Map<String, Object> map) {
		return ckApplysDao.queryGoodsFatherByStoreIds(map);
	}

    @Override
    public List<CkApplysEntity> queryApplysGoodsStatusByDepId(Map<String, Object> map) {

		return ckApplysDao.queryTodayApplysByDepId(map);
    }

	@Override
	public List<CkApplysEntity> queryOutDepApplysWithStatusAndPageNumber(Map<String, Object> map) {
		return ckApplysDao.queryOutDepApplysWithStatusAndPageNumber(map);
	}

	@Override
	public List<CkApplysEntity> queryApplysByLimit(Map<String, Object> map) {
		return ckApplysDao.queryApplysByLimit(map);
	}

	@Override
	public int queryTotalByLimit(Map<String, Object> map) {
		return ckApplysDao.getApplysByLimit(map);
	}

    @Override
    public List<CkApplysEntity> queryApplysAndSorts(String format) {

		return ckApplysDao.queryApplysAndSorts(format);
    }


}
