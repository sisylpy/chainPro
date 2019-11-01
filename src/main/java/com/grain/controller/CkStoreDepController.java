package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 12:11:19
 */

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.grain.entity.CkGoodsEntity;
import com.grain.utils.ParseObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkStoreDepEntity;
import com.grain.service.CkStoreDepService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckstoredep")
public class CkStoreDepController {
	@Autowired
	private CkStoreDepService ckStoreDepService;
	

	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping(value = "/list/{type}")
	@RequiresPermissions("ckstoredep:list")
	public R queryTypeDepList(@PathVariable Integer type ){
		System.out.println("new dep");
		
		//查询列表数据
		List<CkStoreDepEntity> ckStoreDepList = ckStoreDepService.queryTypeDepList(type);


		return R.ok().put("data", ckStoreDepList);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{depId}")
	@RequiresPermissions("ckstoredep:info")
	public R info(@PathVariable("depId") Integer depId){
		CkStoreDepEntity ckStoreDep = ckStoreDepService.queryObject(depId);
		
		return R.ok().put("ckStoreDep", ckStoreDep);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckstoredep:save")
	public R save(@RequestBody String ckStoreDep){
		String s = ParseObject.parseObj(ckStoreDep);
		CkStoreDepEntity ckStoreDepEntity = JSON.parseObject(s, CkStoreDepEntity.class);
		ckStoreDepService.save(ckStoreDepEntity);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckstoredep:update")
	public R update(@RequestBody CkStoreDepEntity ckStoreDep){
		ckStoreDepService.update(ckStoreDep);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckstoredep:delete")
	public R delete(@RequestBody Integer[] depIds){
		ckStoreDepService.deleteBatch(depIds);
		
		return R.ok();
	}
	
}
