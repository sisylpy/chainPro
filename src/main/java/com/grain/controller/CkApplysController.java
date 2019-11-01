package com.grain.controller;

/**
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import java.text.SimpleDateFormat;
import java.util.*;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.grain.entity.CkStoreEntity;
import com.grain.utils.ParseObject;
import com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList;
import org.apache.shiro.authz.annotation.RequiresPermissions;
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



    @RequestMapping(value = "/outDepQueryApplys", method = RequestMethod.POST)
    @ResponseBody
    public R outDepQueryApplys(@RequestParam Integer status, @RequestParam Integer depId) {
        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);




        List<CkApplysEntity> applysEntities = ckApplysService.queryOutDepApplysWithStatus(map);

        List<Map<String, Object>> goodsApplys = new ArrayList<>();
        List<Map<String, Object>> lines = new ArrayList<>();

        if (applysEntities.size() > 0) {

            for (CkApplysEntity apply : applysEntities) {

                if(goodsApplys.size() > 0) {

                    for(Map<String, Object> goodsApply : goodsApplys) {
                        Integer goodsId = (Integer) goodsApply.get("goodsId");
                        if(goodsId.equals(apply.getApplyGoodsId())){
                            List<CkApplysEntity>  mapApplys = (List<CkApplysEntity>) goodsApply.get("applys");
                            mapApplys.add(apply);
                            goodsApply.put("applys", mapApplys);
                            Float totalAmount = (Float) goodsApply.get("totalAmount");
                            Float applyNumber = apply.getApplyNumber();
                            totalAmount += applyNumber;
                            goodsApply.put("totalAmount", totalAmount);

                        }else {
                            Map<String, Object> map1 = saveNewApply(apply);
                            goodsApplys.add(map1);
                        }
                        break;
                    }
                }else {
                    Map<String, Object> map1 = saveNewApply(apply);
                    goodsApplys.add(map1);
                }

                if(lines.size() > 0) {
                    for(Map<String, Object> line : lines) {
                        Integer lineId = (Integer) line.get("lineId");
                        if(lineId.equals(apply.getApplyLineId())){
                            List<Map<String, Object>> stores1 = (List<Map<String, Object>>) line.get("stores");
                            for(Map<String, Object> store : stores1){
                                Integer storeId = (Integer) store.get("storeId");
                                if(!storeId.equals(apply.getStoreEntity().getStoreId())){
                                    List<Map<String, Object>> stores = (List<Map<String, Object>>) line.get("stores");
                                    Map<String, Object> map2 = saveNewStore(apply);
                                    stores.add(map2);
                                    line.put("stores", stores);
                                }
                                break;
                            }

                        }else {
                            Map<String, Object> newLine = saveNewLine(apply);
                            lines.add(newLine);
                        }
                        break;
                    }

//                    break;
                }else{
                    Map<String, Object> map1 = saveNewLine(apply);
                    lines.add(map1);
                    System.out.println("haha");
                }

            }
        }


        Map<String, Object> orderMap = new HashMap<>();
        orderMap.put("applys",goodsApplys);
        orderMap.put("lines", lines);

        return R.ok().put("data",orderMap);

    }

    public Map<String, Object> saveNewApply(CkApplysEntity apply) {
        Map<String, Object> tempMap = new HashMap<>();
        tempMap.put("goodsId", apply.getApplyGoodsId());
        tempMap.put("goodsName", apply.getCkGoodsEntity().getGoodsName());
        tempMap.put("applyStandardName", apply.getCkGoodsEntity().getApplyStandardName());
        tempMap.put("totalAmount",apply.getApplyNumber());
        List<CkApplysEntity> tempApplys = new ArrayList<>();
        tempApplys.add(apply);
        tempMap.put("applys", tempApplys);

        return tempMap;

    }


    /**
     *
     * @param apply
     * @return
     */
    private Map<String, Object> saveNewLine(CkApplysEntity apply) {

        Map<String, Object> lineMap = new HashMap<>();
        Map<String, Object> storeMap = new HashMap<>();
        List<Map<String, Object>> stores = new ArrayList<>();

        lineMap.put("lineId", apply.getApplyLineId());

        storeMap.put("storeId", apply.getApplyStoreId());
        storeMap.put("storeName", apply.getStoreEntity().getStoreName());
        storeMap.put("printLabel", apply.getStoreEntity().getPrintLabel());
        stores.add(storeMap);

        lineMap.put("lineId", apply.getApplyLineId());
        lineMap.put("stores",stores);

        return lineMap;

    }

    private Map<String, Object> saveNewStore(CkApplysEntity apply) {

        Map<String, Object> storeMap = new HashMap<>();
        storeMap.put("storeId", apply.getApplyStoreId());
        storeMap.put("storeName", apply.getStoreEntity().getStoreName());
        storeMap.put("printLabel", apply.getStoreEntity().getPrintLabel());
        return storeMap;
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
