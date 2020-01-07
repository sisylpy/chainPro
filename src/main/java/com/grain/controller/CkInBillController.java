package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-28 13:22:25
 */

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkInBillEntity;
import com.grain.service.CkInBillService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckinbill")
public class CkInBillController {
	@Autowired
	private CkInBillService ckInBillService;





	/**
	 * 出货部门的未入库的入库单
	 */
	@ResponseBody
	@RequestMapping( value = "/listByInDepId/{depId}")
	@RequiresPermissions("ckinbill:list")
	public R list(@PathVariable  Integer depId){
		if(depId.equals(-1)){
			depId = null;
		}
		
		//查询列表数据
		List<CkInBillEntity> ckInBillList = ckInBillService.queryListByInDepId(depId);


		return R.ok().put("data", ckInBillList);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{inBillId}")
	@RequiresPermissions("ckinbill:info")
	public R info(@PathVariable("inBillId") Integer inBillId){
		CkInBillEntity ckInBill = ckInBillService.queryObject(inBillId);
		return R.ok().put("ckInBill", ckInBill);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckinbill:save")
	public R save(@RequestBody CkInBillEntity ckInBill){
		System.out.println("zhudanju....");
		System.out.println(ckInBill);
		ckInBillService.save(ckInBill);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckinbill:update")
	public R update(@RequestBody CkInBillEntity ckInBill){
		ckInBillService.update(ckInBill);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckinbill:delete")
	public R delete(@RequestBody Integer[] inBillIds){
		ckInBillService.deleteBatch(inBillIds);
		
		return R.ok();
	}
	
}
