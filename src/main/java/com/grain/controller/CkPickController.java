package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-25 20:17:53
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

import com.grain.entity.CkPickEntity;
import com.grain.service.CkPickService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("ckpick")
public class CkPickController {
	@Autowired
	private CkPickService ckPickService;
	
	@RequestMapping("/ckpick.html")
	public String list(){
		return "ckpick/ckpick.html";
	}
	
	@RequestMapping("/ckpick_add.html")
	public String add(){
		return "ckpick/ckpick_add.html";
	}
	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("ckpick:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkPickEntity> ckPickList = ckPickService.queryList(map);
		int total = ckPickService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckPickList, total, limit, page);
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{pickId}")
	@RequiresPermissions("ckpick:info")
	public R info(@PathVariable("pickId") Integer pickId){
		CkPickEntity ckPick = ckPickService.queryObject(pickId);
		
		return R.ok().put("ckPick", ckPick);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckpick:save")
	public R save(@RequestBody CkPickEntity ckPick){
		ckPickService.save(ckPick);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckpick:update")
	public R update(@RequestBody CkPickEntity ckPick){
		ckPickService.update(ckPick);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckpick:delete")
	public R delete(@RequestBody Integer[] pickIds){
		ckPickService.deleteBatch(pickIds);
		
		return R.ok();
	}
	
}
