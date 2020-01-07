package com.grain.service.impl;

import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkInSubBillEntity;
import com.grain.service.CkGoodsService;
import com.grain.service.CkInSubBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import com.grain.dao.CkInBillDao;
import com.grain.entity.CkInBillEntity;
import com.grain.service.CkInBillService;
import static com.grain.utils.DateUtils.formatWhatDay;



@Service("ckInBillService")
public class CkInBillServiceImpl implements CkInBillService {
	@Autowired
	private CkInBillDao ckInBillDao;
	@Autowired
	private CkInSubBillService subBillService;
	@Autowired
	private CkGoodsService ckGoodsService;
	
	@Override
	public CkInBillEntity queryObject(Integer inBillId){
		return ckInBillDao.queryObject(inBillId);
	}
	

	
	@Override
	public int queryTotal(Map<String, Object> map){
		return ckInBillDao.queryTotal(map);
	}
	
	@Override
	public void save(CkInBillEntity ckInBill){


		ckInBill.setInDatetime(formatWhatDay(0));
		ckInBill.setInUserId(0);

		ckInBillDao.save(ckInBill);
		System.out.println("ckckkckckckckckckkcckk");

		Integer inBillId = ckInBill.getInBillId();
		System.out.println(ckInBill);

		List<CkInSubBillEntity> subBillEntities = ckInBill.getSubBillEntities();
		for (CkInSubBillEntity s : subBillEntities) {
			System.out.println(s);

			subBillService.save(s);

			System.out.println("0000-------??????");
			s.setMainBillId(inBillId);
			System.out.println("1111111111========");
			subBillService.update(s);
			System.out.println("33333333---====---==--=-==");

			Float inQuantity = s.getInQuantity();
			CkGoodsEntity goodsEntity = ckGoodsService.queryObject(s.getSGoodsId());
			Float stockPurStandard = goodsEntity.getStockPurStandard();
			stockPurStandard = stockPurStandard + inQuantity;
			goodsEntity.setStockPurStandard(stockPurStandard);
			ckGoodsService.update(goodsEntity);
		}

	}
	
	@Override
	public void update(CkInBillEntity ckInBill){
		ckInBillDao.update(ckInBill);
	}
	
	@Override
	public void delete(Integer inBillId){
		ckInBillDao.delete(inBillId);
	}
	
	@Override
	public void deleteBatch(Integer[] inBillIds){
		ckInBillDao.deleteBatch(inBillIds);
	}

	@Override
	public List<CkInBillEntity> queryListByInDepId(Integer depId) {
		return   ckInBillDao.queryListByInDepId(depId);
	}


}
