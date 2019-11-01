package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-28 14:25:38
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

import com.grain.entity.CkInBillEntity;
import com.grain.service.CkInBillService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("ckinbill")
public class CkInBillController {
	@Autowired
	private CkInBillService ckInBillService;
	
	@RequestMapping("/ckinbill.html")
	public String list(){
		return "ckinbill/ckinbill.html";
	}
	
	@RequestMapping("/ckinbill_add.html")
	public String add(){
		return "ckinbill/ckinbill_add.html";
	}
	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("ckinbill:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkInBillEntity> ckInBillList = ckInBillService.queryList(map);
		int total = ckInBillService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckInBillList, total, limit, page);
		
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
