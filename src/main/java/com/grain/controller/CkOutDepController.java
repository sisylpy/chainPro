package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-20 13:35:40
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

import com.grain.entity.CkOutDepEntity;
import com.grain.service.CkOutDepService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckoutdep")
public class CkOutDepController {
	@Autowired
	private CkOutDepService ckOutDepService;
	




	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@RequiresPermissions("ckoutdep:list")
	public R list(){

		System.out.println("get???");
		//查询列表数据
		List<CkOutDepEntity> ckOutDepList  = ckOutDepService.queryAllList();

		return R.ok().put("data", ckOutDepList);
	}

//
//	/**
//	 * 列表
//	 */
//	@ResponseBody
//	@RequestMapping("/list")
//	@RequiresPermissions("ckoutdep:list")
//	public R list(Integer page, Integer limit){
//		Map<String, Object> map = new HashMap<>();
//		map.put("offset", (page - 1) * limit);
//		map.put("limit", limit);
//
//		//查询列表数据
//		List<CkOutDepEntity> ckOutDepList = ckOutDepService.queryList(map);
//		int total = ckOutDepService.queryTotal(map);
//
//		PageUtils pageUtil = new PageUtils(ckOutDepList, total, limit, page);
//
//		return R.ok().put("page", pageUtil);
//	}
//
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{outDepId}")
	@RequiresPermissions("ckoutdep:info")
	public R info(@PathVariable("outDepId") Integer outDepId){
		CkOutDepEntity ckOutDep = ckOutDepService.queryObject(outDepId);
		
		return R.ok().put("ckOutDep", ckOutDep);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckoutdep:save")
	public R save(@RequestBody String param){

		String s = ParseObject.parseObj(param);
		CkOutDepEntity CkOutDep = JSON.parseObject(s, CkOutDepEntity.class);
		ckOutDepService.save(CkOutDep);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckoutdep:update")
	public R update(@RequestBody CkOutDepEntity ckOutDep){
		ckOutDepService.update(ckOutDep);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckoutdep:delete")
	public R delete(@RequestBody Integer[] outDepIds){
		ckOutDepService.deleteBatch(outDepIds);
		
		return R.ok();
	}
	
}
