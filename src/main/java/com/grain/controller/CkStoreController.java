package com.grain.controller;

/**
 * 零售终端
 *
 * @author lpy
 * @date 2019-10-15 23:48:27
 */

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.grain.entity.CkLineEntity;
import com.grain.service.CkLineService;
import com.grain.utils.ParseObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkStoreEntity;
import com.grain.service.CkStoreService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckstore")
public class CkStoreController {
	@Autowired
	private CkStoreService ckStoreService;
	@Autowired
	private CkLineService ckLineService;


	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/queryLineStore")
	@RequiresPermissions("ckstore:list")
	public R queryLineStore(){


       Map<String, Object> map = new HashMap<>();
		List<CkLineEntity> lineEntities = ckLineService.queryLineList(map);
		System.out.println(lineEntities.size() + "sizzzz");
		List<Map<String, Object>> list = new ArrayList<>();

		for (CkLineEntity line : lineEntities) {
			Map<String, Object> map2 = new HashMap<>();
			System.out.println(line);
			List<CkStoreEntity> storeEntityList = line.getStoreEntityList();
			if(storeEntityList.size() > 0){
				String lineName = line.getLineName();
				map2.put("lineName", lineName);
				map2.put("storelist", storeEntityList);
				list.add(map2);

			}

		}


		return R.ok().put("data", list);
	}

	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping(value = "/listAll")
	@RequiresPermissions("ckstore:list")
	public R listAllWithLine(){



		//查询列表数据
		List<CkStoreEntity> ckStoreList = ckStoreService.queryListAll();



		return R.ok().put("data", ckStoreList);
	}

	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@RequiresPermissions("ckstore:list")
	public R list(Integer page, Integer limit){
		System.out.println("lailema?");
		System.out.println(page);
		System.out.println(limit);
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);
		
		//查询列表数据
		List<CkStoreEntity> ckStoreList = ckStoreService.queryList(map);
		int total = ckStoreService.queryTotal(map);
		
		PageUtils pageUtil = new PageUtils(ckStoreList, total, limit, page);
		System.out.println(ckStoreList);
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{storeId}")
	@RequiresPermissions("ckstore:info")
	public R info(@PathVariable("storeId") Integer storeId){
		CkStoreEntity ckStore = ckStoreService.queryObject(storeId);
		
		return R.ok().put("ckStore", ckStore);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions("ckstore:save")
	public R save(@RequestBody String ckStore){
		System.out.println(ckStore);
		String s = ParseObject.parseObj(ckStore);
		CkStoreEntity store = JSON.parseObject(s, CkStoreEntity.class);
		ckStoreService.save(store);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckstore:update")
	public R update(@RequestBody CkStoreEntity ckStore){
		ckStoreService.update(ckStore);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckstore:delete")
	public R delete(@RequestBody Integer[] storeIds){
		ckStoreService.deleteBatch(storeIds);
		
		return R.ok();
	}
	
}
