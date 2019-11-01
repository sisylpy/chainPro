package com.grain.controller;

/**
 * 用户与角色对应关系
 *
 * @author lpy
 * @date 2019-10-27 16:13:06
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

import com.grain.entity.CkUserRoleEntity;
import com.grain.service.CkUserRoleService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("ckuserrole")
public class CkUserRoleController {
	@Autowired
	private CkUserRoleService ckUserRoleService;
	
	@RequestMapping("/ckuserrole.html")
	public String list(){
		return "ckuserrole/ckuserrole.html";
	}
	
	@RequestMapping("/ckuserrole_add.html")
	public String add(){
		return "ckuserrole/ckuserrole_add.html";
	}
	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("ckuserrole:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkUserRoleEntity> ckUserRoleList = ckUserRoleService.queryList(map);
		int total = ckUserRoleService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckUserRoleList, total, limit, page);
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{userRoleId}")
	@RequiresPermissions("ckuserrole:info")
	public R info(@PathVariable("userRoleId") Long userRoleId){
		CkUserRoleEntity ckUserRole = ckUserRoleService.queryObject(userRoleId);
		
		return R.ok().put("ckUserRole", ckUserRole);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckuserrole:save")
	public R save(@RequestBody CkUserRoleEntity ckUserRole){
		ckUserRoleService.save(ckUserRole);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckuserrole:update")
	public R update(@RequestBody CkUserRoleEntity ckUserRole){
		ckUserRoleService.update(ckUserRole);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckuserrole:delete")
	public R delete(@RequestBody Long[] userRoleIds){
		ckUserRoleService.deleteBatch(userRoleIds);
		
		return R.ok();
	}
	
}
