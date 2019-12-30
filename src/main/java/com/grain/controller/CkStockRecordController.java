package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-11-07 19:44:55
 */

import java.awt.geom.FlatteningPathIterator;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.zip.DeflaterOutputStream;

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
import static com.grain.utils.DateUtils.formatWhatDay;


@Controller
@RequestMapping("/sys/ckstockrecord")
public class CkStockRecordController {
	@Autowired
	private CkStockRecordService ckStockRecordService;
	@Autowired
	private CkApplysService applysService;
	@Autowired
	private CkGoodsService ckGoodsService;
	@Autowired
	private CkStockBillService ckStockBillService;




	/**
	 * 出货单打印完成
	 * @param recordEntities 出货数据
	 * @return r
	 */
	@RequestMapping(value = "/deliveryPrintSuccess", method = RequestMethod.POST)
	@ResponseBody
	public R applysPrintSuccess(@RequestBody List<CkStockRecordEntity> recordEntities) {
		System.out.println("lailerecordEntities!!!" + recordEntities);

       Integer inStoreId = -1;
       Double total = 0.0;
		for (CkStockRecordEntity record : recordEntities) {

			total= total + Double.valueOf(record.getSubTotal());
			inStoreId = record.getInStoreId();
			record.setDeliveryStatus(1);
			ckStockRecordService.update(record);

		}

		NumberFormat nf = NumberFormat.getNumberInstance();
		nf.setMaximumFractionDigits(2);
		String format = nf.format(total);
		CkStockBillEntity stockBillEntity = new CkStockBillEntity();
		stockBillEntity.setTotal(format);
		stockBillEntity.setDate(formatWhatDay(0));
		stockBillEntity.setInStoreId(inStoreId);
		ckStockBillService.save(stockBillEntity);

		return R.ok();
	}


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
		Double total = 0.0;
		for(CkStockRecordEntity record: ckStockRecordList) {
			String quantity = record.getQuantity();
			String discountPrice = record.getDiscountPrice();
			total = total + Double.valueOf(quantity) * Double.valueOf(discountPrice);
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
		TreeSet<CkStoreEntity> stores = new TreeSet<>();
		for (CkStockRecordEntity en : stockRecordEntities){
			CkStoreEntity storeEntity = en.getStoreEntity();
			stores.add(storeEntity);
		}
		return R.ok().put("data",stores);
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
