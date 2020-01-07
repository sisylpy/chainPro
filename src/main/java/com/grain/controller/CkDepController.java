package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 12:11:19
 */

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.grain.entity.CkDepEntity;
import com.grain.utils.ParseObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.service.CkDepService;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckdep")
public class CkDepController {
	@Autowired
	private CkDepService ckDepService;


	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping(value = "/list/{type}")
	@RequiresPermissions("ckdep:list")
	public R queryTypeDepList(@PathVariable Integer type ){
		System.out.println("new dep");

		//查询列表数据
		List<CkDepEntity> ckStoreDepList = ckDepService.queryTypeDepList(type);


		return R.ok().put("data", ckStoreDepList);
	}


	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{depId}")
	@RequiresPermissions("ckdep:info")
	public R info(@PathVariable("depId") Integer depId){
		CkDepEntity ckStoreDep = ckDepService.queryObject(depId);

		return R.ok().put("ckStoreDep", ckStoreDep);
	}

	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckdep:save")
	public R save(@RequestBody String ckStoreDep){
		String s = ParseObject.parseObj(ckStoreDep);
		CkDepEntity CkDepEntity = JSON.parseObject(s, CkDepEntity.class);
		ckDepService.save(CkDepEntity);

		return R.ok();
	}

	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckdep:update")
	public R update(@RequestBody CkDepEntity ckStoreDep){
		ckDepService.update(ckStoreDep);

		return R.ok();
	}

	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckdep:delete")
	public R delete(@RequestBody Integer[] depIds){
		ckDepService.deleteBatch(depIds);
		
		return R.ok();
	}
	
}
