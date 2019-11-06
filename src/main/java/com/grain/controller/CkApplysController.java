package com.grain.controller;

/**
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import java.text.SimpleDateFormat;
import java.util.*;

import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkStoreEntity;
import com.grain.service.CkGoodsService;
import com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.omg.CORBA.OBJ_ADAPTER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkApplysEntity;
import com.grain.service.CkApplysService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;


@Controller
@RequestMapping("/sys/ckapplys")
public class CkApplysController {
    @Autowired
    private CkApplysService ckApplysService;
    @Autowired
    private CkGoodsService ckGoodsService;


    @RequestMapping(value = "/outDepQueryStores", method = RequestMethod.POST)
    @ResponseBody
    public R outDepQueryStores(@RequestParam Integer status, @RequestParam Integer depId) {
        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);

        List<CkApplysEntity> applysEntities = ckApplysService.queryOutDepStores(map);
        Set<CkStoreEntity> storeList = new HashSet<>();
        for (CkApplysEntity apply : applysEntities) {
            storeList.add(apply.getStoreEntity());
        }

        return R.ok().put("data", storeList);
    }


    /**
     * ;;;;;;
     */


    @RequestMapping(value = "/outDepQueryApplys", method = RequestMethod.POST)
    @ResponseBody
    public R outDepQueryApplys(@RequestParam Integer status, @RequestParam Integer depId,
                                @RequestParam Integer page, @RequestParam  Integer limit) {
        Map<String, Object> map = new HashMap<>();
        map.put("offset", (page - 1) * limit);
        map.put("limit", limit);
        map.put("status", status);
        map.put("depId", depId);


        List<CkApplysEntity> applysEntities = ckApplysService.queryOutDepApplysWithStatus(map);
        System.out.println("===========================>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        System.out.println(applysEntities.size());

        //遍历商品set
//        HashSet<CkGoodsEntity> goodsEntityHashSet = new HashSet<>();
        TreeSet<CkGoodsEntity> goodsEntityHashSet = new TreeSet<>();

        //存放申请list
        List<Map<String, Object>> goodsForapplys = new ArrayList<>();

        if (applysEntities.size() > 0) {

            //1.获取商品list
            for (CkApplysEntity apply : applysEntities) {
                goodsEntityHashSet.add(apply.getCkGoodsEntity());
                Integer applyGoodsId = apply.getApplyGoodsId();

            }


            //2，遍历相同商品，存放申请
            for (CkGoodsEntity goods : goodsEntityHashSet) {

                Map<String, Object> goodsApplyMap = new HashMap<>();
                List<CkApplysEntity> applys = new ArrayList<>();
                goodsApplyMap.put("goodsId", goods.getGoodsId());
                goodsApplyMap.put("applyStandardName" , goods.getApplyStandardName());
                goodsApplyMap.put("stockApplyStandard" , goods.getStockApplyStandard());
                goodsApplyMap.put("status", goods.getStatus());
                goodsApplyMap.put("goodsName", goods.getGoodsName());

                Float applyNumber =0f;
                for (CkApplysEntity apply : applysEntities) {
                    if (apply.getApplyGoodsId().equals(goods.getGoodsId())) {
                        applyNumber += apply.getApplyNumber();
                        applys.add(apply);
                    }
                }
                goodsApplyMap.put("totalNumber", applyNumber);
                goodsApplyMap.put("applys", applys);
                goodsForapplys.add(goodsApplyMap);
            }
        }



        int total = ckApplysService.outDepQueryTotalByStatus(map);
        PageUtils pageUtil = new PageUtils(goodsForapplys, total, limit, page);

        return R.ok().put("page", pageUtil);

    }



    /**
     * 列表
     */
    @ResponseBody
    @RequestMapping("/list")
    @RequiresPermissions("ckapplys:list")
    public R list(Integer page, Integer limit) {
        Map<String, Object> map = new HashMap<>();
        map.put("offset", (page - 1) * limit);
        map.put("limit", limit);

        //查询列表数据
        List<CkApplysEntity> ckApplysList = ckApplysService.queryList(map);
        int total = ckApplysService.queryTotal(map);

        PageUtils pageUtil = new PageUtils(ckApplysList, total, limit, page);

        return R.ok().put("page", pageUtil);
    }


    /**
     * 信息
     */
    @ResponseBody
    @RequestMapping("/info/{applyId}")
    @RequiresPermissions("ckapplys:info")
    public R info(@PathVariable("applyId") Integer applyId) {
        CkApplysEntity ckApplys = ckApplysService.queryObject(applyId);

        return R.ok().put("ckApplys", ckApplys);
    }

    /**
     * 保存
     */
    @ResponseBody
    @RequestMapping("/save")
//	@RequiresPermissions("ckapplys:save")
    public R save(@RequestBody CkApplysEntity ckApplys) {
        System.out.println(ckApplys);
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
        String format = dateFormat.format(new Date());
        ckApplys.setApplyTime(format);
        ckApplys.setDeliveryDate(format);
        ckApplys.setApplyStatus(0);
        System.out.println("===>>>>>>>>>>>>>>>>>");
        System.out.println(ckApplys);
        ckApplysService.save(ckApplys);

        return R.ok();
    }

    /**
     * 修改
     */
    @ResponseBody
    @RequestMapping("/update")
    @RequiresPermissions("ckapplys:update")
    public R update(@RequestBody CkApplysEntity ckApplys) {
        ckApplysService.update(ckApplys);

        return R.ok();
    }

    /**
     * 删除
     */
    @ResponseBody
    @RequestMapping("/delete")
    @RequiresPermissions("ckapplys:delete")
    public R delete(@RequestBody Integer[] applyIds) {
        ckApplysService.deleteBatch(applyIds);

        return R.ok();
    }

    @ResponseBody
    @RequestMapping("/getApplys")
    public R storeGetApplys(@RequestBody CkStoreEntity storeEntity) {

        Integer storeId = storeEntity.getStoreId();

        List<CkApplysEntity> applysEntities = ckApplysService.getStoreApplys(storeId);

        return R.ok().put("data", applysEntities);
    }

}
