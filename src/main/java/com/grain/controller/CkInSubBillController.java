package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-28 13:18:57
 */

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkInSubBillEntity;
import com.grain.service.CkInSubBillService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("ckinsubbill")
public class CkInSubBillController {
	@Autowired
	private CkInSubBillService ckInSubBillService;

	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("ckinsubbill:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkInSubBillEntity> ckInSubBillList = ckInSubBillService.queryList(map);
		int total = ckInSubBillService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckInSubBillList, total, limit, page);
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{inSubBillId}")
	@RequiresPermissions("ckinsubbill:info")
	public R info(@PathVariable("inSubBillId") Integer inSubBillId){
		CkInSubBillEntity ckInSubBill = ckInSubBillService.queryObject(inSubBillId);
		return R.ok().put("ckInSubBill", ckInSubBill);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckinsubbill:save")
	public R save(@RequestBody CkInSubBillEntity ckInSubBill){
		ckInSubBillService.save(ckInSubBill);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckinsubbill:update")
	public R update(@RequestBody CkInSubBillEntity ckInSubBill){
		ckInSubBillService.update(ckInSubBill);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckinsubbill:delete")
	public R delete(@RequestBody Integer[] inSubBillIds){
		ckInSubBillService.deleteBatch(inSubBillIds);
		
		return R.ok();
	}
	
}
