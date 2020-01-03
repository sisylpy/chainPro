package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-12-28 10:30:47
 */

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.grain.entity.CkInBillEntity;
import com.grain.entity.CkStockRecordEntity;
import com.grain.service.CkStockRecordService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkStockBillEntity;
import com.grain.service.CkStockBillService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;

import static com.grain.utils.DateUtils.formatWhatDayTime;


@Controller
@RequestMapping("/sys/ckstockbill")
public class CkStockBillController {
	@Autowired
	private CkStockBillService ckStockBillService;
	@Autowired
	private CkStockRecordService ckStockRecordService;


	@RequestMapping(value = "/getLastThreeInBillByStoreId/{storeId}")
	@ResponseBody
	public R getStoreInBill (@PathVariable Integer storeId) {
		System.out.println("houtaile" + storeId);
		List<CkStockBillEntity> stockBillEntities  = ckStockBillService.queryByInStoreId(storeId);
		if(stockBillEntities.size() > 0){
			List<CkStockBillEntity> bills = new ArrayList<>();
			for(int i = 0; i < stockBillEntities.size(); i++) {
				if(i < 3) {
					CkStockBillEntity bill = stockBillEntities.get(i);
					bills.add(bill);
				}
			}
			return R.ok().put("data", bills);
		}else {
			return R.ok().put("data", null);
		}
	}

	/**
	 * 出货单打印完成
	 * @param stockBillEntity 出库单
	 * @return r
	 */
	@RequestMapping(value = "/deliveryPrintSuccess", method = RequestMethod.POST)
	@ResponseBody
	public R applysPrintSuccess(@RequestBody CkStockBillEntity stockBillEntity) {
		System.out.println(stockBillEntity);
		System.out.println("haihaihai");
		CkStockBillEntity bill = new CkStockBillEntity();
		bill.setInStoreId(stockBillEntity.getInStoreId());
		bill.setBillDate(formatWhatDayTime(0));
		bill.setTotal(stockBillEntity.getTotal());
		ckStockBillService.save(bill);

		System.out.println(bill.getStockBillId() + "ididididiididd");

		List<CkStockRecordEntity> recordEntities = stockBillEntity.getCkStockRecordEntities();


		for (CkStockRecordEntity record : recordEntities) {
			record.setDeliveryStatus(1);
			record.setCkStockBillId(bill.getStockBillId());
			ckStockRecordService.update(record);

		}



		return R.ok();
	}
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("ckstockbill:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkStockBillEntity> ckStockBillList = ckStockBillService.queryList(map);
		int total = ckStockBillService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckStockBillList, total, limit, page);
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{stockBillId}")
	@RequiresPermissions("ckstockbill:info")
	public R info(@PathVariable("stockBillId") Integer stockBillId){
		CkStockBillEntity ckStockBill = ckStockBillService.queryObject(stockBillId);
		
		return R.ok().put("ckStockBill", ckStockBill);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckstockbill:save")
	public R save(@RequestBody CkStockBillEntity ckStockBill){
		ckStockBillService.save(ckStockBill);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckstockbill:update")
	public R update(@RequestBody CkStockBillEntity ckStockBill){
		ckStockBillService.update(ckStockBill);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckstockbill:delete")
	public R delete(@RequestBody Integer[] stockBillIds){
		ckStockBillService.deleteBatch(stockBillIds);
		
		return R.ok();
	}
	
}
