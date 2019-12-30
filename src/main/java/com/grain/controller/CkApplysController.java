package com.grain.controller;

/**
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import java.util.*;
import com.grain.entity.*;
import com.grain.service.CkDepService;
import com.grain.service.CkGoodsService;
import com.grain.utils.*;
import org.apache.poi.ss.formula.functions.T;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.service.CkApplysService;
import sun.jvm.hotspot.oops.ObjectHeap;

import static com.grain.utils.DateUtils.*;
import static com.grain.utils.SplitStringUtil.splitString;


@Controller
@RequestMapping("/sys/ckapplys")

public class CkApplysController {
    @Autowired
    private CkApplysService ckApplysService;
    @Autowired
    private CkGoodsService ckGoodsService;
    @Autowired
    private CkDepService ckDepService;





    /** ok
     * 分拣 -- 根据商品类别id获取申请
     * @param fatherId 商品类别id
     * @return gatherapplys
     */
   @RequestMapping(value = "/getWeighByFatherId/{fatherId}")
   @ResponseBody
   public R getWeighByFatherId(@PathVariable Integer fatherId) {
       System.out.println(fatherId + "fatherIdd????");
       Map<String, Object> map = new HashMap<>();
       map.put("delivery", formatWhatDay(1));
       map.put("goodsId", fatherId);
       List<CkApplysEntity> applysEntities1 =  ckApplysService.queryApplysByGoodsIdForWeigh(map);
       List<Map<String, Object>> mapList = gatherApplysAmount(applysEntities1);
       return R.ok().put("data", mapList);
   }

    /** ok
     * 分拣 - 初始化
     */

    @RequestMapping(value = "/getWeigh")
    @ResponseBody
    public R getWeigh() {
        Map<String, Object> map = new HashMap<>();
        map.put("delivery", formatWhatDay(1));

        List<CkApplysEntity> applysEntities =  ckApplysService.queryApplysForWeigh(map);
        System.out.println(applysEntities.size()+ "sisssss");
        List<Map<String, Object>> mapList = gatherApplysByFatherGoodsInOutDep(applysEntities);

        return R.ok().put("data",mapList);
    }




    /** ok
     * 备货 - 打印备货单成功
     * @param applys 申请
     * @return r
     */
    @RequestMapping(value = "/applysPrintSuccess", method = RequestMethod.POST)
    @ResponseBody
    public R applysPrintSuccess(@RequestBody List<CkApplysEntity> applys) {
        for (CkApplysEntity apply : applys) {
            apply.setApplyStatus(1);
            ckApplysService.update(apply);
        }
        return R.ok();
    }



    /** ok
     * 备货页面select2 条件查询gatherApplys
     * @param status         0
     * @param queryOutDepIds 出货部门id
     * @param queryFatherIds 搜索商品类别ids
     * @param queryStoreIds  搜索分店ids
     * @return 符合2个条件的apply
     */
    @RequestMapping(value = "/getGatherApplys", method = RequestMethod.GET)
    @ResponseBody
    public R queryGatherApplys(@RequestParam String status, @RequestParam String queryOutDepIds,
                               @RequestParam String queryFatherIds, @RequestParam String queryStoreIds) {

        List<CkApplysEntity> applysEntities = queryApplysBySorts(status, queryOutDepIds, queryFatherIds, queryStoreIds);
        return R.ok().put("data", gatherApplysAmount(applysEntities));
    }


    /** ok
     * 备货页面-获取当天未完成分拣的打印最大次数
     */
    @ResponseBody
    @RequestMapping("/getPintMax")
    public R getPintMax() {

        Integer printMax = ckApplysService.queryPintMax(formatWhatDay(0));
        if (printMax == null) {
            return R.ok().put("data", 0);

        } else {
            return R.ok().put("data", printMax);
        }
    }


    /** ok
     * 备货页面-初始化
     */
    @RequestMapping(value = "/getPrepare")
    @ResponseBody
    public R getPrepare() {

        List<CkApplysEntity> applysEntities1 =
                queryApplysByParams("0", "-1", "-1", "-1", formatWhatDay(1));

        return R.ok().put("data", gatherApplysAndOutDepsAndStores(applysEntities1));
    }

    private Map<String, Object>  gatherApplysAndOutDepsAndStores(List<CkApplysEntity> applysEntities) {

        Set<CkDepEntity> depEntities = new HashSet<>();
        Set<CkStoreEntity> storeEntities = new HashSet<>();

        for (CkApplysEntity apply : applysEntities) {
            Integer outDepId = apply.getOutDepId();
            depEntities.add(ckDepService.queryObject(outDepId));
            storeEntities.add(apply.getStoreEntity());
        }

        List<Map<String, Object>> differentGoods = gatherApplysAmount(applysEntities);
        Map<String, Object> map2 = new HashMap<>();
        map2.put("storeList", storeEntities);
        map2.put("outDepList", depEntities);
        map2.put("applys", differentGoods);

        return map2;
    }

    private  List<Map<String, Object>> gatherApplysByFatherGoodsInOutDep(List<CkApplysEntity> applysEntities) {
        Set<CkDepEntity> depEntities = new HashSet<>();
        Set<CkGoodsEntity> goodsEntities = new TreeSet<>();
        List<Map<String, Object>> resList = new ArrayList<>();
        Map<String, Object> depMap = new HashMap<>();
        for (CkApplysEntity apply : applysEntities) {
            depEntities.add(ckDepService.queryObject(apply.getOutDepId()));
            goodsEntities.add(ckGoodsService.queryObject(apply.getApplyGoodsFatherId()));
        }

        for (CkDepEntity depEntity : depEntities) {
            List<CkGoodsEntity> goodsEntities1 = new ArrayList<>();
            depMap.put("dep", depEntity.getDepName());
            for (CkGoodsEntity goods : goodsEntities) {
                if (depEntity.getDepId().equals(goods.getOutDepId())) {
                    goodsEntities1.add(goods);
                }
                depMap.put("fathers",goodsEntities1);
            }
        }

        CkGoodsEntity goodsEntity = (CkGoodsEntity)goodsEntities.toArray()[0];
        Integer goodsId = goodsEntity.getGoodsId();
        Map<String, Object> map = new HashMap<>();
        map.put("goodsId", goodsId);
        map.put("delivery", formatWhatDay(1));
        List<CkApplysEntity> applysEntities1 =  ckApplysService.queryApplysByGoodsIdForWeigh(map);
        List<Map<String, Object>> mapList = gatherApplysAmount(applysEntities1);

        depMap.put("applys", mapList);
        resList.add(depMap);


        return resList;
    }



    /** ok
     * 订货 - 今日申请
     * 获取订货分店列表
     * @return 订货分店
     */
    @RequestMapping("/getTodayApplysStores")
    @ResponseBody
    public R getTodayApplysStores() {

        List<CkApplysEntity> applysEntities =
                queryApplysByParams("-1", "-1", "-1", "-1", formatWhatDay(1));

        Set<CkStoreEntity> storeEntities = new HashSet<>();
        for (CkApplysEntity applys : applysEntities) {
            CkStoreEntity storeEntity = applys.getStoreEntity();
            storeEntities.add(storeEntity);
        }
        return R.ok().put("data", storeEntities);
    }

    /** ok
     * 订货 - 今日申请
     * 根据分店id获取分页申请
     * @param page 页数
     * @param limit 一页多少
     * @param storeId 分店id
     * @return list
     */
    @RequestMapping(value = "/getStoreApplysByLimit", method = RequestMethod.POST)
    @ResponseBody
    public R getStoreApplysByLimit(@RequestParam Integer page, @RequestParam Integer limit, @RequestParam Integer storeId) {

        Map<String, Object> map = new HashMap<>();
        map.put("offset", (page - 1) * limit);
        map.put("limit", limit);
        map.put("storeId", storeId);
        map.put("delivery", formatWhatDay(1));

        List<CkApplysEntity> applysEntities = ckApplysService.queryApplysByLimit(map);


        int total = ckApplysService.queryTotalByLimit(map);

        PageUtils pageUtil = new PageUtils(applysEntities, total, limit, page);

        return R.ok().put("data", pageUtil);
    }

    /** ok
     * 订货 - 今日申请
     * 删除yige
     */
    @ResponseBody
    @RequestMapping("/deleteOne/{applyId}")
    @RequiresPermissions("ckapplys:delete")
    public R deleteOne(@PathVariable Integer applyId) {
        ckApplysService.delete(applyId);
        return R.ok();
    }

    /** ok
     * 订货 - 代下单
     * @param orders 申请列表
     * @return r
     */
    @RequestMapping(value = "/saveTomorrowApplys", method = RequestMethod.POST)
    @ResponseBody
    public R saveTomorrowApplys(@RequestBody List<CkApplysEntity> orders) {

        String toworrow = formatWhatDay(1);
        String todayTime = formatWhatDayTime(0);

        for (CkApplysEntity apply : orders) {
            String format = format(new Date());

            apply.setApplyTime(todayTime);
            apply.setDeliveryDate(toworrow);
            apply.setApplyStatus(0);
            ckApplysService.save(apply);
        }

        return R.ok();
    }


    /** ====== wait ======

    /**
     * wait
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
     * wait
     * 批量删除
     * @param applyIds 申请id
     * @return r
     */
    @ResponseBody
    @RequestMapping("/delete")
    @RequiresPermissions("ckapplys:delete")
    public R delete(@RequestBody Integer[] applyIds) {
        ckApplysService.deleteBatch(applyIds);
        return R.ok();
    }


    //根据ids查询订货申请
    private List<CkApplysEntity> queryApplysByParams(String status, String outDepId, String goodsFatherId, String storeId, String delivery){

        Map<String, Object> map = new HashMap<>();

        if (status.equals("-1")) {
            map.put("status", null);
        } else {
            map.put("status", status);
        }
        if (outDepId.equals("-1")) {
            map.put("queryOutDepId", null);
        } else {
            map.put("queryOutDepId", outDepId);
        }
        if (goodsFatherId.equals("-1")) {
            map.put("fatherGoodsId", null);
        } else {
            map.put("fatherGoodsId", goodsFatherId);
        }
        if (storeId.equals("-1")) {
            map.put("applyStoreId", null);
        } else {
            map.put("applyStoreId", storeId);
        }
        if (delivery.equals("-1")) {
            map.put("delivery", null);
        } else {
            map.put("delivery", delivery);
        }

        //根据查询map获取申请
        return ckApplysService.queryApplysByQueryId(map);

    }

    //根据ids查询订货申请
    private List<CkApplysEntity> queryApplysBySorts(String status, String outDepIds, String goodsFatherIds, String storeIds){

        Map<String, Object> map = new HashMap<>();
        map.put("status", status);


        if (outDepIds.equals("-1")) {
            map.put("queryOutDepIds", null);
        } else {
            map.put("queryOutDepIds", splitString(outDepIds));
        }

        if (goodsFatherIds.equals("-1")) {
            map.put("fatherGoodsIds", null);
        } else {
            map.put("fatherGoodsIds", splitString(goodsFatherIds));
        }
        if (storeIds.equals("-1")) {
            map.put("applyStoreIds", null);
        } else {
            map.put("applyStoreIds", splitString(storeIds));
        }

        //根据查询map获取申请
        return ckApplysService.queryApplysByQueryIds(map);

    }



    //组装申请方法
    private List<Map<String, Object>> gatherApplysAmountHasFather(List<CkApplysEntity> applysEntitiesBySort) {
        //遍历商品set
        TreeSet<CkGoodsEntity> goodsEntityTreeSet = new TreeSet<>();
        //商品类别Set
        TreeSet<CkGoodsEntity> goodsEntityTreeSetFather = new TreeSet<>();
        //最终要的按商品类别下有商品的申请list
        List<Map<String, Object>> finalList = new ArrayList<>();

        if (applysEntitiesBySort.size() > 0) {

            for (CkApplysEntity apply : applysEntitiesBySort) {
                Integer applyGoodsFatherId = apply.getApplyGoodsFatherId();
                goodsEntityTreeSetFather.add(ckGoodsService.queryObject(applyGoodsFatherId));
            }
            for (CkApplysEntity apply : applysEntitiesBySort) {
                goodsEntityTreeSet.add(apply.getCkGoodsEntity());
            }
            for (CkGoodsEntity fatherGoods : goodsEntityTreeSetFather) {
                Integer goodsFatherId = fatherGoods.getGoodsId();
                String goodsFatherName = fatherGoods.getGoodsName();
                Map<String, Object> fatherMap = new HashMap<>();
                fatherMap.put("fatherName", goodsFatherName);
                fatherMap.put("fatherId", goodsFatherId);

                List<Object> smallList = new ArrayList();
                for (CkGoodsEntity goods : goodsEntityTreeSet) {
                    if (goods.getFatherId().equals(goodsFatherId)) {
                        Map<String, Object> goodsApplyMap = goodsGatherMap(goods,applysEntitiesBySort);
                        smallList.add(goodsApplyMap);
                    }
                }
                fatherMap.put("goodsList", smallList);
                fatherMap.put("goodsAmount", smallList.size());
                finalList.add(fatherMap);
            }
        }
        return finalList;
    }

    //组装申请方法
    private List<Map<String, Object>> gatherApplysAmount(List<CkApplysEntity> applysEntitiesBySort) {
        //遍历商品set
        TreeSet<CkGoodsEntity> goodsEntityTreeSet = new TreeSet<>();
        List<Map<String, Object>> finalList = new ArrayList();

        if (applysEntitiesBySort.size() > 0) {
            for (CkApplysEntity apply : applysEntitiesBySort) {
                goodsEntityTreeSet.add(apply.getCkGoodsEntity());
            }
            for (CkGoodsEntity goods : goodsEntityTreeSet) {
                Map<String, Object> goodsApplyMap = goodsGatherMap(goods, applysEntitiesBySort);
                finalList.add(goodsApplyMap);
            }
        }
        return finalList;
    }


    private Map<String, Object> goodsGatherMap(CkGoodsEntity goods, List<CkApplysEntity> applysEntitiesBySort){
        List<CkApplysEntity> applys = new ArrayList<>();
        Map<String, Object> goodsApplyMap = new HashMap<>();
        goodsApplyMap.put("goodsId", goods.getGoodsId());
        goodsApplyMap.put("applyStandardName", goods.getApplyStandardName());
        goodsApplyMap.put("stockApplyStandard", goods.getStockApplyStandard());
        goodsApplyMap.put("status", goods.getStatus());
        goodsApplyMap.put("goodsName", goods.getGoodsName());
        goodsApplyMap.put("purStandardName", goods.getPurStandardName());
        goodsApplyMap.put("price", goods.getPrice());
        goodsApplyMap.put("finished", false);
        Float applyNumber = 0f;
        for (CkApplysEntity apply : applysEntitiesBySort) {
            if (apply.getApplyGoodsId().equals(goods.getGoodsId())) {
                applyNumber += apply.getApplyNumber();
                apply.setOnFocus(false);
                applys.add(apply);
                CkStockRecordEntity recordEntity = applyGetStockRecord(apply);
                apply.setStockRecordEntity(recordEntity);
            }
        }
        goodsApplyMap.put("totalNumber", applyNumber);
        goodsApplyMap.put("applys", applys);
        return goodsApplyMap;
    }
    private CkStockRecordEntity applyGetStockRecord(CkApplysEntity apply){
        CkStockRecordEntity recordEntity = new CkStockRecordEntity();
        recordEntity.setStApplyId(apply.getApplyId());
        recordEntity.setQuantity("");
        recordEntity.setStGoodsId(apply.getApplyGoodsId());
        recordEntity.setInStoreId(apply.getApplyStoreId());
        recordEntity.setOutDepId(apply.getOutDepId());
        recordEntity.setDiscountPrice(apply.getCkGoodsEntity().getPrice());
        recordEntity.setIsDiscount(0);
        return recordEntity;
    }








}
