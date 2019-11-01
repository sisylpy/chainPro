package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-09-19 23:44:01
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

import com.grain.entity.CkSupplierEntity;
import com.grain.service.CkSupplierService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("cksupplier")
public class CkSupplierController {
	@Autowired
	private CkSupplierService ckSupplierService;
	
	@RequestMapping("/cksupplier.html")
	public String list(){
		System.out.println("ckkkk");
		return "cksupplier/cksupplier.html";
	}
	
	@RequestMapping("/cksupplier_add.html")
	public String add(){
		return "cksupplier/cksupplier_add.html";
	}
	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("cksupplier:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkSupplierEntity> ckSupplierList = ckSupplierService.queryList(map);
		int total = ckSupplierService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckSupplierList, total, limit, page);
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{supplierId}")
	@RequiresPermissions("cksupplier:info")
	public R info(@PathVariable("supplierId") Integer supplierId){
		CkSupplierEntity ckSupplier = ckSupplierService.queryObject(supplierId);
		
		return R.ok().put("ckSupplier", ckSupplier);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("cksupplier:save")
	public R save(@RequestBody CkSupplierEntity ckSupplier){
		ckSupplierService.save(ckSupplier);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("cksupplier:update")
	public R update(@RequestBody CkSupplierEntity ckSupplier){
		ckSupplierService.update(ckSupplier);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("cksupplier:delete")
	public R delete(@RequestBody Integer[] supplierIds){
		ckSupplierService.deleteBatch(supplierIds);
		
		return R.ok();
	}
	
}
