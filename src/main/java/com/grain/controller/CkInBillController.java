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
	 * 列表
	 */
	@ResponseBody
	@RequestMapping( value = "/list", method = RequestMethod.POST)
	@RequiresPermissions("ckinbill:list")
	public R list(@RequestParam  Integer page,@RequestParam  Integer limit,@RequestParam  Integer depId){
		System.out.println("hai lei");
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		map.put("depId",depId);
		
		//查询列表数据
		List<CkInBillEntity> ckInBillList = ckInBillService.queryList(map);
		int total = ckInBillService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckInBillList, total, limit, page);
		System.out.println(page);
		System.out.println("kankanpage?");
		
		return R.ok().put("page", pageUtil);
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
