package com.grain.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.grain.dao.CkLineDao;
import com.grain.entity.CkLineEntity;
import com.grain.service.CkLineService;



@Service("ckLineService")
public class CkLineServiceImpl implements CkLineService {
	@Autowired
	private CkLineDao ckLineDao;
	
	@Override
	public CkLineEntity queryObject(Integer lineId){
		return ckLineDao.queryObject(lineId);
	}
	
	@Override
	public List<CkLineEntity> queryList(Map<String, Object> map){
		return ckLineDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckLineDao.queryTotal(map);
	}
	
	@Override
	public void save(CkLineEntity ckLine){
		ckLineDao.save(ckLine);
	}
	
	@Override
	public void update(CkLineEntity ckLine){
		ckLineDao.update(ckLine);
	}
	
	@Override
	public void delete(Integer lineId){
		ckLineDao.delete(lineId);
	}
	
	@Override
	public void deleteBatch(Integer[] lineIds){
		ckLineDao.deleteBatch(lineIds);
	}

    @Override
    public List<CkLineEntity> queryLineList(Map<String, Object> map) {

		return ckLineDao.querLineList();
    }



}
