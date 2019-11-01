package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 17:09:17
 */

import java.text.SimpleDateFormat;
import java.util.*;

import com.alibaba.fastjson.JSON;
import com.grain.entity.CkGoodsEntity;
import com.grain.service.CkUserRoleService;
import com.grain.service.SysUserRoleService;
import com.grain.utils.ParseObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkUserEntity;
import com.grain.service.CkUserService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckuser/")
public class CkUserController {
	@Autowired
	private CkUserService ckUserService;

	@Autowired
	private CkUserRoleService userRoleService;
	



	
	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("ckuser:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);

		//查询列表数据
		List<CkUserEntity> ckUserList = ckUserService.queryList(map);
		int total = ckUserService.queryTotal(map);

		PageUtils pageUtil = new PageUtils(ckUserList, total, limit, page);

		return R.ok().put("page", pageUtil);
	}

	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{ckUserId}")
	@RequiresPermissions("ckuser:info")
	public R info(@PathVariable("ckUserId") Integer ckUserId){
		CkUserEntity ckUser = ckUserService.queryObject(ckUserId);
		
		return R.ok().put("ckUser", ckUser);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckuser:save")
	public R save(@RequestBody String ckUser){

		//转化
		String s = ParseObject.parseObj(ckUser);
		CkUserEntity userEntity = JSON.parseObject(s, CkUserEntity.class);


//		//保存用户
//		CkUserEntity user = new CkUserEntity();
//		user.setCkUserName(userEntity.getCkUserName());
//		user.setUserDepId(userEntity.getUserDepId());
//		SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
//		String format = dateFormat.format(new Date());
//		user.setUCreateTime(format);
//		ckUserService.save(user);
//
//		Integer ckUserId = user.getCkUserId();
//
//		System.out.println("zhuanhua");
//		String roleIds = userEntity.getRoleIds();
//		List<String> result = Arrays.asList(roleIds.split(","));
//		System.out.println(result);

//		userRoleService.saveOrUpdate(ckUserId,result);
		System.out.println("1111111");

		ckUserService.save(userEntity);

		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckuser:update")
	public R update(@RequestBody CkUserEntity ckUser){
		ckUserService.update(ckUser);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckuser:delete")
	public R delete(@RequestBody Integer[] ckUserIds){
		ckUserService.deleteBatch(ckUserIds);
		
		return R.ok();
	}
	
}
