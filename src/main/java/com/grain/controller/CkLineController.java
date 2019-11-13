package com.grain.controller;

/**
 * 
 *
 * @author lpy
 * @date 2019-09-26 12:59:43
 */

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkLineStoreEntity;
import com.grain.entity.CkStoreEntity;
import com.grain.service.CkLineStoreService;
import com.grain.service.CkStoreService;
import com.grain.utils.ParseObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkLineEntity;
import com.grain.service.CkLineService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckline")
public class CkLineController {
	@Autowired
	private CkLineService ckLineService;
	@Autowired
	private CkLineStoreService ckLineStoreService;
	@Autowired
	private CkStoreService storeService;




	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@RequiresPermissions("ckline:list")
	public R list(Integer page, Integer limit){
		Map<String, Object> map = new HashMap<>();
		map.put("offset", (page - 1) * limit);
		map.put("limit", limit);

		//查询列表数据
		List<CkLineEntity> ckLineList = ckLineService.queryLineList(map);
		System.out.println("begin==============>");
//		System.out.println(ckLineList);
		for (CkLineEntity ck : ckLineList
				) {
//			System.out.println("------");
			System.out.println(ck);
		}
		System.out.println("over==============>");

		int total = ckLineService.queryTotal(map);

		PageUtils pageUtil = new PageUtils(ckLineList, total, limit, page);

		return R.ok().put("page", pageUtil);
	}

	
	/**
	 * 信息
	 */
	@ResponseBody
	@RequestMapping("/info/{lineId}")
	@RequiresPermissions("ckline:info")
	public R info(@PathVariable("lineId") Integer lineId){
		CkLineEntity ckLine = ckLineService.queryObject(lineId);
		
		return R.ok().put("ckLine", ckLine);
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@RequiresPermissions("ckline:save")
	public R save(@RequestBody String param){

		String s = ParseObject.parseObj(param);
		CkLineEntity ckLine = JSON.parseObject(s, CkLineEntity.class);

		List<CkStoreEntity> storeEntityList = ckLine.getStoreEntityList();

		ckLineService.save(ckLine);
		Integer lineId = ckLine.getLineId();

		System.out.println("what is lineId value???");
		System.out.println(lineId);


		for (CkStoreEntity cs : storeEntityList) {
			Integer sort = 1;

			Integer storeId = cs.getStoreId();
			CkLineStoreEntity ls = new CkLineStoreEntity();
			ls.setReLineId(lineId);
			ls.setReStoreId(storeId);
			ls.setSort(sort);
			ckLineStoreService.save(ls);
			storeService.update(cs);

			sort++;
		}


		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("ckline:update")
	public R update(@RequestBody CkLineEntity ckLine){
		ckLineService.update(ckLine);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@ResponseBody
	@RequestMapping("/delete")
	@RequiresPermissions("ckline:delete")
	public R delete(@RequestBody Integer[] lineIds){
		ckLineService.deleteBatch(lineIds);
		
		return R.ok();
	}
	
}
