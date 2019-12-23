package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-11-07 19:44:55
 */

import java.util.*;

import com.grain.entity.CkApplysEntity;
import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkStoreEntity;
import com.grain.service.CkApplysService;
import com.grain.service.CkGoodsService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkStockRecordEntity;
import com.grain.service.CkStockRecordService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckstockrecord")
public class CkStockRecordController {
	@Autowired
	private CkStockRecordService ckStockRecordService;
	@Autowired
	private CkApplysService applysService;
	@Autowired
	private CkGoodsService ckGoodsService;


	/**
	 * 获取送货单店铺
	 */
	@ResponseBody
	@RequestMapping("/getDeliveryOrderStores")
	public R getDeliveryOrderStores(){
		System.out.println("get??");

     List<CkStockRecordEntity> stockRecordEntities = ckStockRecordService.getDeliverOrderStores();
		System.out.println("whyaaa"+ stockRecordEntities.size());

     TreeSet<CkStoreEntity> stores = new TreeSet<>();

      for (CkStockRecordEntity en : stockRecordEntities){
		  CkStoreEntity storeEntity = en.getStoreEntity();
		  stores.add(storeEntity);
	  }

		System.out.println(stores);

		System.out.println("shenmostore");
		return R.ok().put("data",stores);
	}


	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/listByDepId")
//	@RequiresPermissions("ckstockrecord:list")
	public R list(@RequestParam Integer status, @RequestParam Integer storeId,
				  @RequestParam Integer page, @RequestParam  Integer limit){
		System.out.println("thisisstoreId"+ storeId);
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		map.put("storeId", storeId);
		map.put("status",status);

		
		//查询列表数据
		List<CkStockRecordEntity> ckStockRecordList = ckStockRecordService.queryList(map);
		int total = ckStockRecordService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckStockRecordList, total, limit, page);
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{stockRecordId}")
//	@RequiresPermissions("ckstockrecord:info")
	public R info(@PathVariable("stockRecordId") Integer stockRecordId){
		CkStockRecordEntity ckStockRecord = ckStockRecordService.queryObject(stockRecordId);
		
		return R.ok().put("ckStockRecord", ckStockRecord);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping(value = "/save", method = RequestMethod.POST)
//	@RequiresPermissions("ckstockrecord:save")
	public R save(@RequestBody List<CkStockRecordEntity> ckStockRecords){
		System.out.println("saverecordl");

		System.out.println(ckStockRecords);

		for (CkStockRecordEntity record : ckStockRecords) {

			//1. 新增添出货记录
			record.setDeliveryStatus(0);
			record.setInOutType(0);
			ckStockRecordService.save(record);

			//2. 更新申请状态
			Integer stApplyId = record.getStApplyId();
			CkApplysEntity apply = new CkApplysEntity();
			apply.setApplyId(stApplyId);
			apply.setApplyStatus(2);
			applysService.update(apply);

			//3. 更新商品库存
			Integer goodsId = record.getStGoodsId();
			CkGoodsEntity ckGoodsEntity = ckGoodsService.queryObject(goodsId);
			Float f1 = 0.1f;

			String stockPurStandard = ckGoodsEntity.getStockPurStandard();
			String quantity = record.getQuantity();
			float v = Float.parseFloat(stockPurStandard) + f1;
			float v1 = Float.parseFloat(quantity) + f1;
			float v2 = v - v1;
			String s = Float.toString(v2);

			ckGoodsEntity.setStockPurStandard(s);

			System.out.println("kkkgoods" + ckGoodsEntity);
			ckGoodsService.update(ckGoodsEntity);

		}


		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
//	@RequiresPermissions("ckstockrecord:update")
	public R update(@RequestBody CkStockRecordEntity ckStockRecord){
		System.out.println("ccccckkkkk");
		System.out.println(ckStockRecord);
		ckStockRecordService.update(ckStockRecord);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckstockrecord:delete")
	public R delete(@RequestBody Integer[] stockRecordIds){
		ckStockRecordService.deleteBatch(stockRecordIds);
		
		return R.ok();
	}
	
}
