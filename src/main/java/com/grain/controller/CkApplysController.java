package com.grain.controller;

/**
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Stream;

import com.alibaba.fastjson.JSON;
import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkSortEntity;
import com.grain.entity.CkStoreEntity;
import com.grain.service.CkGoodsService;
import com.grain.utils.ParseObject;
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
    @Autowired
    private CkGoodsService ckGoodsService;


    @RequestMapping(value = "/applysPrintSuccess", method = RequestMethod.POST)
    @ResponseBody
    public R applysPrintSuccess(@RequestBody List<CkApplysEntity> applys) {
        System.out.println("laile!!!" + applys);
        for (CkApplysEntity apply : applys) {
            apply.setApplyStatus(1);
            ckApplysService.update(apply);
        }
        return R.ok();
    }


    /**
     * 获取当天未完成分拣的打印最大次数
     */
    @ResponseBody
    @RequestMapping("/getPintMax")
    public R getPintMax() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
        String format = dateFormat.format(new Date());

        Integer printMax = ckApplysService.queryPintMax(format);
        System.out.println(printMax + " ???????");
        if (printMax == null) {
            return R.ok().put("data", 0);

        } else {
            return R.ok().put("data", printMax);
        }
    }


    /**
     * 获取未分拣完成的当日打印次数list
     */
    @ResponseBody
    @RequestMapping("/getPintTimes")
    public R getPintTimes() {

        //查询列表数据
        List<Integer> pirntTimes = ckApplysService.queryPintTimes();

        List<Integer> listTemp = new ArrayList<Integer>();
        Iterator<Integer> it = pirntTimes.iterator();
        while (it.hasNext()) {
            int a = it.next();
            if (listTemp.contains(a)) {
                it.remove();
            } else {
                listTemp.add(a);
            }
        }
        System.out.println("distince" + listTemp);
        return R.ok().put("data", listTemp);
    }


    /**
     * 按照商品货分店获取申请
     *
     * @param status 申请字段是 0
     * @param depId  出货部门id
     * @return 如果是
     */
    @RequestMapping(value = "/outDepQuerySorts", method = RequestMethod.POST)
    @ResponseBody
    public R outDepQuerySorts(@RequestParam Integer status, @RequestParam Integer depId) {
        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);
        System.out.println("weinxin??");

        Set<CkStoreEntity> storeList = new HashSet<>();
        TreeSet<CkGoodsEntity> goodsList = new TreeSet<>();
        TreeSet<CkGoodsEntity> goodsFatherList = new TreeSet<>();

        List<CkApplysEntity> applysEntities = ckApplysService.queryOutDepStores(map);
        for (CkApplysEntity apply : applysEntities) {
            storeList.add(apply.getStoreEntity());
            goodsList.add(apply.getCkGoodsEntity());
        }
        for (CkGoodsEntity goods : goodsList) {
            Integer fatherId = goods.getFatherId();
            CkGoodsEntity ckGoodsEntity = ckGoodsService.queryObject(fatherId);
            goodsFatherList.add(ckGoodsEntity);
        }


        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("storeList", storeList);
        resultMap.put("fatherGoodsList", goodsFatherList);

        System.out.println(resultMap + "rewutmap???");

        return R.ok().put("data", resultMap);


    }


    /**
     * 根据商品类别和分店获取申请
     * @param status 0
     * @param depId 出货部门id
     * @param queryFatherIds 搜索商品类别ids
     * @param queryStoreIds  搜索分店ids
     * @return 符合2个条件的apply
     */
    @RequestMapping(value = "/outDepQueryApplysBySorts", method = RequestMethod.GET)
    @ResponseBody
    public R outDepQueryApplysBySorts(@RequestParam  String status, @RequestParam Integer depId,
                                      @RequestParam String queryFatherIds, @RequestParam String queryStoreIds ) {

        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);


         String[] reArrFather = queryFatherIds.split(",");
         //String数组转List
         List<String> goodsIds=new ArrayList<>();

         for(String st2:reArrFather){
             goodsIds.add(st2);
         }
        if (queryFatherIds.equals("-1")) {
            System.out.println("shi -1");
            map.put("fatherGoodsIds", null);

        }else {
            map.put("fatherGoodsIds", goodsIds);

        }

        String[] reArrStore = queryStoreIds.split(",");
        List<String> storeIds=new ArrayList<>();
        for(String st:reArrStore){
            storeIds.add(st);
        }
        if(queryStoreIds.equals("-1")) {
            map.put("applyStoreIds", null);
        }else {
            map.put("applyStoreIds", storeIds);
        }

        //根据查询map获取申请
        List<CkApplysEntity> applysEntitiesBySort = ckApplysService.queryOutDepApplysByQueryIds(map);

        //组装申请
        List<Map<String, Object>> differentGoods = getDifferentGoods(applysEntitiesBySort);

        return R.ok().put("data", differentGoods);
   }


    /**
     * 出货部门
     */
    @RequestMapping(value = "/outDepQueryApplys", method = RequestMethod.POST)
    @ResponseBody
    public R outDepQueryApplys(@RequestParam Integer status, @RequestParam Integer depId) {
        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);

        //根据map查询申请
        List<CkApplysEntity> applysEntities = ckApplysService.queryOutDepApplysWithStatus(map);

        //组装申请
        List<Map<String, Object>> differentGoods = getDifferentGoods(applysEntities);

        return R.ok().put("data", differentGoods);

    }


    //组装申请方法
    private List<Map<String, Object>>  getDifferentGoods(List<CkApplysEntity> applysEntitiesBySort ){
        //遍历商品set
        TreeSet<CkGoodsEntity> goodsEntityTreeSet = new TreeSet<>();
        //存放申请list
        List<Map<String, Object>> goodsForapplys = new ArrayList<>();

        if (applysEntitiesBySort.size() > 0) {
            //1.获取商品list
            for (CkApplysEntity apply : applysEntitiesBySort) {
                goodsEntityTreeSet.add(apply.getCkGoodsEntity());
            }

            //2，遍历相同商品，存放申请
            for (CkGoodsEntity goods : goodsEntityTreeSet) {

                Map<String, Object> goodsApplyMap = new HashMap<>();
                List<CkApplysEntity> applys = new ArrayList<>();
                goodsApplyMap.put("goodsId", goods.getGoodsId());
                goodsApplyMap.put("applyStandardName" , goods.getApplyStandardName());
                goodsApplyMap.put("stockApplyStandard" , goods.getStockApplyStandard());
                goodsApplyMap.put("status", goods.getStatus());
                goodsApplyMap.put("goodsName", goods.getGoodsName());
                goodsApplyMap.put("purStandardName", goods.getPurStandardName());
                goodsApplyMap.put("price", goods.getPrice());

                Float applyNumber =0f;
                for (CkApplysEntity apply : applysEntitiesBySort) {
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
        return goodsForapplys;
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
//        ckApplys.setApplyLineId(ckApplys.getCkLineStoreEntity().getReLineId());

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
