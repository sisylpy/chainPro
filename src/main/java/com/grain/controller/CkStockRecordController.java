package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-11-07 19:44:55
 */

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.*;

import com.grain.entity.*;
import com.grain.service.CkApplysService;
import com.grain.service.CkGoodsService;
import com.grain.service.CkStockBillService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.service.CkStockRecordService;
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
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/listByStoreId/{storeId}")
	@RequiresPermissions("ckstockrecord:list")
	public R list(@PathVariable Integer storeId){
		System.out.println("thisisstoreId"+ storeId);
		Map<String, Object> map = new HashMap<>();

		map.put("storeId", storeId);
		map.put("status",0);

		
		//查询列表数据
		List<CkStockRecordEntity> ckStockRecordList = ckStockRecordService.queryList(map);
		Float total = 0.0f;
		for(CkStockRecordEntity record: ckStockRecordList) {
			Float subTotal = record.getSubTotal();
			total = total + subTotal;
		}

		String format = new DecimalFormat("0.0").format(total);
		Map<String, Object> map2  = new HashMap<>();
		map2.put("stockList", ckStockRecordList);
		map2.put("total", format);


		return R.ok().put("data", map2);
	}
	/**
	 * 获取送货单店铺
	 */
	@ResponseBody
	@RequestMapping("/getDeliveryOrderStores")
	public R getDeliveryOrderStores(){

		List<CkStockRecordEntity> stockRecordEntities = ckStockRecordService.getDeliverOrderStores();
		if(stockRecordEntities.size() > 0) {
			TreeSet<CkStoreEntity> stores = new TreeSet<>();
			for (CkStockRecordEntity en : stockRecordEntities){
				CkStoreEntity storeEntity = en.getStoreEntity();
				stores.add(storeEntity);
			}
			return R.ok().put("data",stores);
		}else {
			return R.ok().put("data",null);
		}

	}


	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{stockRecordId}")
	@RequiresPermissions("ckstockrecord:info")
	public R info(@PathVariable("stockRecordId") Integer stockRecordId){
		CkStockRecordEntity ckStockRecord = ckStockRecordService.queryObject(stockRecordId);
		return R.ok().put("ckStockRecord", ckStockRecord);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@RequiresPermissions("ckstockrecord:save")
	public R save(@RequestBody List<CkStockRecordEntity> ckStockRecords){

		System.out.println("sanjiaoyan");
		for (CkStockRecordEntity record : ckStockRecords) {
			System.out.println("haihaiidmfmdafma" + record.getQuantity());

			System.out.println(record.getSubTotal() + "ttttt");
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
			Float stockPurStandard = ckGoodsEntity.getStockPurStandard();
			Float orderNumber = ckGoodsEntity.getTodayQuantity();
			Float quantity = record.getQuantity();
			ckGoodsEntity.setStockPurStandard(stockPurStandard- quantity);
			ckGoodsEntity.setTodayQuantity(orderNumber - quantity);
			ckGoodsService.update(ckGoodsEntity);
		}
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckstockrecord:update")
	public R update(@RequestBody CkStockRecordEntity ckStockRecord){
		System.out.println(".>>>>>>>>>>>>>>>>>>>>>");
		System.out.println(ckStockRecord);
		System.out.println("update=======");
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
