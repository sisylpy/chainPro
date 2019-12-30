package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-12-28 10:30:47
 */

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.grain.entity.CkInBillEntity;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkStockBillEntity;
import com.grain.service.CkStockBillService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckstockbill")
public class CkStockBillController {
	@Autowired
	private CkStockBillService ckStockBillService;


	@RequestMapping(value = "/queryLastThreeInBillByStoreId/{storeId}")
	@ResponseBody
	public R queryStoreInBill (@PathVariable Integer storeId ) {
		System.out.println("ssssstoreId" + storeId);
		List<CkStockBillEntity> stockBillEntities  = ckStockBillService.queryByInStoreId(storeId);
		System.out.println(stockBillEntities);

		return R.ok().put("data", stockBillEntities);
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
