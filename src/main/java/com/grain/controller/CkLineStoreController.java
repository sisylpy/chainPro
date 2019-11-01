package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-18 17:12:45
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

import com.grain.entity.CkLineStoreEntity;
import com.grain.service.CkLineStoreService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("cklinestore")
public class CkLineStoreController {
	@Autowired
	private CkLineStoreService ckLineStoreService;
	
	@RequestMapping("/cklinestore.html")
	public String list(){
		return "cklinestore/cklinestore.html";
	}
	
	@RequestMapping("/cklinestore_add.html")
	public String add(){
		return "cklinestore/cklinestore_add.html";
	}
	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("cklinestore:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkLineStoreEntity> ckLineStoreList = ckLineStoreService.queryList(map);
		int total = ckLineStoreService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckLineStoreList, total, limit, page);
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{lineStoreId}")
	@RequiresPermissions("cklinestore:info")
	public R info(@PathVariable("lineStoreId") Integer lineStoreId){
		CkLineStoreEntity ckLineStore = ckLineStoreService.queryObject(lineStoreId);
		
		return R.ok().put("ckLineStore", ckLineStore);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("cklinestore:save")
	public R save(@RequestBody CkLineStoreEntity ckLineStore){
		ckLineStoreService.save(ckLineStore);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("cklinestore:update")
	public R update(@RequestBody CkLineStoreEntity ckLineStore){
		ckLineStoreService.update(ckLineStore);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("cklinestore:delete")
	public R delete(@RequestBody Integer[] lineStoreIds){
		ckLineStoreService.deleteBatch(lineStoreIds);
		
		return R.ok();
	}
	
}
