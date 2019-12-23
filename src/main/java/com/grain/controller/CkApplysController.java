package com.grain.controller;

/**
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import java.io.File;
import java.io.FileInputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.grain.entity.*;
import com.grain.service.CkDepService;
import com.grain.service.CkGoodsService;
import com.grain.service.CkStockRecordService;
import com.grain.service.impl.CkLineStoreServiceImpl;
import com.grain.utils.*;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.service.CkApplysService;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/sys/ckapplys")

public class CkApplysController {
    @Autowired
    private CkApplysService ckApplysService;
    @Autowired
    private CkGoodsService ckGoodsService;
    @Autowired
    private CkStockRecordService ckStockRecordService;
    @Autowired
    private CkDepService ckDepService;




    @RequestMapping(value = "/storeGetApplysByLimit", method = RequestMethod.POST)
    @ResponseBody
    public R storeGetApplysByLimit(@RequestParam Integer page, @RequestParam Integer limit, @RequestParam Integer storeId) {

        Map<String, Object> map = new HashMap<>();
        map.put("offset", (page - 1) * limit);
        map.put("limit", limit);
        map.put("storeId", storeId);

        Date date=new Date();
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH,1);
        date=calendar.getTime();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/mm/dd");
        String format = dateFormat.format(date);
        map.put("delivery", format);

        List<CkApplysEntity> applysEntities =  ckApplysService.queryApplysByLimit(map);


        int total = ckApplysService.queryTotalByLimit(map);

        PageUtils pageUtil = new PageUtils(applysEntities, total, limit, page);

        return R.ok().put("data", pageUtil);
    }


     @RequestMapping(value = "/replaceOrder", method = RequestMethod.POST)
      @ResponseBody
      public R replaceOrder (@RequestBody List<CkApplysEntity> orders) {
         Date date=new Date();
         Calendar calendar = new GregorianCalendar();
         calendar.setTime(date);
         calendar.add(Calendar.DAY_OF_MONTH,1);
         date=calendar.getTime();
         SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
         SimpleDateFormat dateFormat2 = new SimpleDateFormat("MMM dd, yyyy HH:mm", Locale.CHINA);
         String format = dateFormat.format(date);
         String format1 = dateFormat2.format(new Date());
         for (CkApplysEntity apply : orders) {
             apply.setApplyTime(format1);
             apply.setDeliveryDate(format);
             apply.setApplyStatus(0);

             ckApplysService.save(apply);

         }


         return R.ok();
      }


    @RequestMapping(value = "/saveApplys", method = RequestMethod.POST)
    @ResponseBody
    public R saveApplys(@RequestBody List<CkApplysEntity> applys) {
        System.out.println(applys);
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
        String format = dateFormat.format(new Date());
        for (CkApplysEntity apply : applys) {


            apply.setApplyTime(format);
            apply.setDeliveryDate(format);
            apply.setApplyStatus(0);
            ckApplysService.save(apply);
        }
        return R.ok();
    }


    @RequestMapping(value = "/wx/changeApplysToMarketPurchase", method = RequestMethod.POST)
    @ResponseBody
    public R changeApplysToMarketPurchase(@RequestBody List<CkApplysEntity> applysEntities) {
        System.out.println("yeah!");
        System.out.println(applysEntities);
        for (CkApplysEntity apply : applysEntities) {
            apply.setApplyStatus(1);
            ckApplysService.update(apply);
        }

        return R.ok();
    }


    @RequestMapping(value = "/wx/getApplyGoodsStatusByDepId/{depId}")
    @ResponseBody
    public R getApplyGoodsByDepId(@PathVariable Integer depId) {
        Map<String, Object> map = new HashMap<>();
        map.put("depId", depId);
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
        String todayDate = dateFormat.format(new Date());
        map.put("applyTime", todayDate);
        map.put("deliveryDate", todayDate);
        List<CkApplysEntity> applysEntities = ckApplysService.queryApplysGoodsStatusByDepId(map);

        System.out.println("xiaoyuhao" + applysEntities.size());

        List<CkApplysEntity> newApplys = new ArrayList<>();
        List<CkApplysEntity> marketApplys = new ArrayList<>();
        List<CkApplysEntity> weixinApplys = new ArrayList<>();
        List<CkApplysEntity> couldApplys = new ArrayList<>();
        for (CkApplysEntity apply : applysEntities) {
            Integer applyStatus = apply.getApplyStatus();

            if (applyStatus.equals(0)) {
                newApplys.add(apply);
            } else if (applyStatus.equals(1)) {
                marketApplys.add(apply);
            } else if (applyStatus.equals(2)) {
                weixinApplys.add(apply);
            } else if (applyStatus.equals(3)) {
                couldApplys.add(apply);
            }
        }

        List<Map<String, Object>> differentGoods = getDifferentGoodsHasFather(newApplys);
        Integer totalGoodsAmount = 0;

        for (Map<String, Object> map1 : differentGoods) {
            Integer goodsAmount = (Integer) map1.get("goodsAmount");
            totalGoodsAmount += goodsAmount;
        }
        Map<String, Object> newApplysMap = new HashMap<>();
        newApplysMap.put("totalGoodsAmount", totalGoodsAmount);
        newApplysMap.put("applys", differentGoods);

        Map<String, Object> applyMap = new HashMap<>();
        applyMap.put("newApplys", newApplysMap);
        applyMap.put("marketApplys", marketApplys);
        applyMap.put("weixinApplys", weixinApplys);
        applyMap.put("couldApplys", couldApplys);
        return R.ok().put("data", applyMap);
    }


    @RequestMapping(value = "/queryFatherGoodsByPickStores", method = RequestMethod.POST)
    @ResponseBody
    public R queryFatherGoodsByPickStores(@RequestParam Integer depId, @RequestParam Integer status,

                                          @RequestParam String storeArr) {

        Map<String, Object> map = new HashMap<>();
        map.put("status", 0);
        map.put("depId", depId);

        String replace = storeArr.replace("[", "");
        String replace1 = replace.replace("]", "");

        String[] split = replace1.split(",");
        List<Integer> storeIdArr = new ArrayList<>();
        for (String s : split) {
            CkStoreEntity ckStoreEntity = JSON.parseObject(s, CkStoreEntity.class);
            Integer storeId = ckStoreEntity.getStoreId();
            storeIdArr.add(storeId);
        }
        map.put("storeIds", storeIdArr);

        List<CkApplysEntity> applysEntities = ckApplysService.queryGoodsFatherByStoreIds(map);
        TreeSet<CkGoodsEntity> goodsEntityTreeSet = new TreeSet<>();

        for (CkApplysEntity apply : applysEntities) {
            Integer applyGoodsFatherId = apply.getApplyGoodsFatherId();
            CkGoodsEntity ckGoodsEntity = ckGoodsService.queryObject(applyGoodsFatherId);
            goodsEntityTreeSet.add(ckGoodsEntity);
        }

        return R.ok().put("data", goodsEntityTreeSet);
    }


    /**
     * 微信出货部门获取添加拣货单的店铺
     *
     * @param depId 出货部门id
     * @return 分店list
     */
    @RequestMapping(value = "/wx/getPickStoreList/{depId}")
    @ResponseBody
    public R getPickStoreList(@PathVariable Integer depId) {
        Map<String, Object> map = new HashMap<>();
        map.put("status", 0);
        map.put("depId", depId);
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
        String todayDate = dateFormat.format(new Date());
        map.put("applyTime", todayDate);
        map.put("deliveryDate", todayDate);

        List<CkApplysEntity> applyEntities = ckApplysService.getPickStoreListByOutDepId(map);
        TreeSet<CkStoreEntity> storeEntities = new TreeSet<>();
        for (CkApplysEntity apply : applyEntities) {
            CkStoreEntity storeEntity = apply.getStoreEntity();
            storeEntity.setIsSelected(false);
            storeEntities.add(storeEntity);
        }

        return R.ok().put("data", storeEntities);

    }


    /**
     * 微信根据打印次数获取录入出货数量申请
     *
     * @param status     申请状态 0
     * @param depId      出货部门id
     * @param pageNumber 打印次数
     * @return 返回申请list
     */
    @RequestMapping(value = "/wx/getEnterApplyByPageNumber", method = RequestMethod.POST)
    @ResponseBody
    public R getEnterApplyByPageNumber(@RequestParam Integer status, @RequestParam Integer depId,
                                       @RequestParam Integer pageNumber) {

        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);
        map.put("pageNumber", pageNumber);
        System.out.println("weinxin??");
        //获取昨天日期，查询deliveryDate
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
        String todayDate = dateFormat.format(new Date());
        map.put("applyTime", todayDate);
        map.put("deliveryDate", todayDate);

        List<CkApplysEntity> applysEntityList = ckApplysService.queryEnterApplysByPageNumber(map);
        List<Map<String, Object>> differentGoods = getDifferentGoods(applysEntityList);

        System.out.println(differentGoods);
        System.out.println("kankanna");
        return R.ok().put("data", differentGoods);
    }


    /**
     * 微信获取首页
     *
     * @param status 申请字段是 0
     * @param depId  出货部门id
     * @return
     */
    @RequestMapping(value = "/wx/getSorts", method = RequestMethod.POST)
    @ResponseBody
    public R getSorts(@RequestParam Integer status, @RequestParam Integer depId) {
        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);
        System.out.println("weinxin??");

        //获取昨天日期，查询deliveryDate
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
//        Calendar calendar=Calendar.getInstance();
//        calendar.set(Calendar.HOUR_OF_DAY,-24);
//        String yesterdayDate=dateFormat.format(calendar.getTime());

//        System.out.println(yesterdayDate + "yesterdayDate???");

        String todayDate = dateFormat.format(new Date());
        map.put("applyTime", todayDate);
        map.put("deliveryDate", todayDate);


        Set<CkStoreEntity> storeList = new HashSet<>();
        TreeSet<CkGoodsEntity> goodsList = new TreeSet<>();
        TreeSet<CkGoodsEntity> setGoodsList = new TreeSet<>();

        //
        List<CkApplysEntity> pickApplyList = new ArrayList<>();


        List<CkApplysEntity> applysEntities = ckApplysService.querySorts(map);

        for (CkApplysEntity apply : applysEntities) {
            //获取分店list
            storeList.add(apply.getStoreEntity());
            //获取商品list
            goodsList.add(apply.getCkGoodsEntity());
            //获取打印申请list
            if (apply.getApplyStatus().equals(1)) {
                pickApplyList.add(apply);
            }
        }

        //获取商品类别list
        for (CkGoodsEntity goods : goodsList) {
            Integer goodsId = goods.getGoodsId();
            CkGoodsEntity ckGoodsEntity = ckGoodsService.queryObject(goodsId);
            setGoodsList.add(ckGoodsEntity);
        }


        List<Integer> pageNumbers = new ArrayList<>();
        for (CkApplysEntity apply :
                pickApplyList) {
            Integer pageNumber = apply.getPageNumber();
            if (!pageNumbers.contains(pageNumber)) {
                if (!pageNumber.equals(0)) {
                    pageNumbers.add(pageNumber);
                }
            }
        }


        //获取出货单的分店
        List<CkStockRecordEntity> stockRecordEntities = ckStockRecordService.getDeliverOrderStores();

        TreeSet<CkStoreEntity> storesForBill = new TreeSet<>();
        for (CkStockRecordEntity en : stockRecordEntities) {
            CkStoreEntity storeEntity = en.getStoreEntity();
            storesForBill.add(storeEntity);
        }


        Integer storeAmount = storeList.size();
        Integer goodsAmount = setGoodsList.size();

        Map<String, Object> storeMap = new HashMap<>();
        storeMap.put("storeAmount", storeAmount);
        storeMap.put("storeList", storeList);

        Map<String, Object> goodsMap = new HashMap<>();
        goodsMap.put("goodsAmount", goodsAmount);
        goodsMap.put("goodsList", setGoodsList);

        Map<String, Object> pickMap = new HashMap<>();
        pickMap.put("pickAmount", pageNumbers);


        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("store", storeMap);
        resultMap.put("goods", goodsMap);
        resultMap.put("pick", pickMap);
        resultMap.put("bill", storesForBill);

        System.out.println("rewutmap???");

        System.out.println(storeMap);
        System.out.println("====>>.");
        System.out.println(resultMap);

        return R.ok().put("data", resultMap);


    }


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
    @RequestMapping("/getPintTimes/{outDepId}")
    public R getPintTimes(@PathVariable Integer outDepId) {

        //查询列表数据
        List<Integer> pirntTimes = ckApplysService.queryPintTimes(outDepId);

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




     @RequestMapping(value = "/queryApplysAndSorts")
      @ResponseBody
      public R queryApplysSorts () {

         Date date=new Date();
         Calendar calendar = new GregorianCalendar();
         calendar.setTime(date);
         calendar.add(Calendar.DAY_OF_MONTH,1);
         date=calendar.getTime();
         SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
         String format = dateFormat.format(date);

         List<CkApplysEntity> applysEntities =  ckApplysService.queryApplysAndSorts(format);
         Set<CkDepEntity> depEntities = new HashSet<>();
         Set<CkStoreEntity> storeEntities = new HashSet<>();

         for (CkApplysEntity apply : applysEntities) {
             Integer outDepId = apply.getOutDepId();
             depEntities.add(ckDepService.queryObject(outDepId));
             storeEntities.add(apply.getStoreEntity());
         }

         List<Map<String, Object>> differentGoods = getDifferentGoods(applysEntities);
         Map<String, Object> map = new HashMap<>();
         System.out.println("//////sotre==="+storeEntities + ">>>>");
         map.put("sss",storeEntities);
         System.out.println("00000000000000" + map);
         map.put("ddd", depEntities);
         System.out.println("11111111111111" + map.get("storeList"));
         map.put("applys", differentGoods);
         System.out.println("22222222222222" + map.get("outDepList"));

         return R.ok().put("data", map);
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
        System.out.println("outDepQuerySortsoutDepQuerySorts" + depId);
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
     *
     * @param status         0
     * @param depId          出货部门id
     * @param queryFatherIds 搜索商品类别ids
     * @param queryStoreIds  搜索分店ids
     * @return 符合2个条件的apply
     */
    @RequestMapping(value = "/outDepQueryApplysBySorts", method = RequestMethod.GET)
    @ResponseBody
    public R outDepQueryApplysBySorts(@RequestParam String status, @RequestParam Integer depId,
                                      @RequestParam String queryFatherIds, @RequestParam String queryStoreIds) {

        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);


        String[] reArrFather = queryFatherIds.split(",");
        //String数组转List
        List<String> goodsIds = new ArrayList<>();

        for (String st2 : reArrFather) {
            goodsIds.add(st2);
        }
        if (queryFatherIds.equals("-1")) {
            map.put("fatherGoodsIds", null);
        } else {
            map.put("fatherGoodsIds", goodsIds);
        }

        String[] reArrStore = queryStoreIds.split(",");
        List<String> storeIds = new ArrayList<>();
        for (String st : reArrStore) {
            storeIds.add(st);
        }
        if (queryStoreIds.equals("-1")) {
            map.put("applyStoreIds", null);
        } else {
            map.put("applyStoreIds", storeIds);
        }

        //根据查询map获取申请
        List<CkApplysEntity> applysEntitiesBySort = ckApplysService.queryOutDepApplysByQueryIds(map);

        //组装申请
        List<Map<String, Object>> differentGoods = getDifferentGoods(applysEntitiesBySort);

        return R.ok().put("data", differentGoods);
    }


    @RequestMapping(value = "/outDepQueryApplysByPageNumber", method = RequestMethod.POST)
    @ResponseBody
    public R outDepQueryApplysByPageNumber(@RequestParam Integer depId, @RequestParam Integer pageNumber) {
        System.out.println("hello" + pageNumber);
        Map<String, Object> map = new HashMap<>();
        map.put("status", 1);
        map.put("depId", depId);
        map.put("pageNumber", pageNumber);

        //根据map查询申请
        List<CkApplysEntity> applysEntities = ckApplysService.queryOutDepApplysWithStatusAndPageNumber(map);

        //组装申请
        List<Map<String, Object>> differentGoods = getDifferentGoods(applysEntities);

        return R.ok().put("data", differentGoods);

    }



    /**
     * 出货部门
     */
    @RequestMapping(value = "/outDepQueryApplys", method = RequestMethod.POST)
    @ResponseBody
    public R outDepQueryApplys(@RequestParam Integer depId,@RequestParam Integer status) {
        Map<String, Object> map = new HashMap<>();
        map.put("status", status);
        map.put("depId", depId);

        //根据map查询申请
        List<CkApplysEntity> applysEntities = ckApplysService.queryOutDepApplysWithStatus(map);
        System.out.println("kkkkk" + map);

        //组装申请
        List<Map<String, Object>> differentGoods = getDifferentGoods(applysEntities);

        System.out.println("shenjing" + differentGoods.size());

        System.out.println(differentGoods );

        return R.ok().put("data", differentGoods);

    }






    //组装申请方法
    private List<Map<String, Object>> getDifferentGoodsHasFather(List<CkApplysEntity> applysEntitiesBySort) {
        //遍历商品set
        TreeSet<CkGoodsEntity> goodsEntityTreeSet = new TreeSet<>();
        //商品类别Set
        TreeSet<CkGoodsEntity> goodsEntityTreeSetFather = new TreeSet<>();
        //最终要的按商品类别下有商品的申请list
        List<Map<String, Object>> finalList = new ArrayList<>();


        if (applysEntitiesBySort.size() > 0) {

            //1,获取商品类别list
            for (CkApplysEntity apply : applysEntitiesBySort) {
                System.out.println(apply);
                Integer applyGoodsFatherId = apply.getApplyGoodsFatherId();
                System.out.println(applyGoodsFatherId + "look?");
                goodsEntityTreeSetFather.add(ckGoodsService.queryObject(applyGoodsFatherId));
            }
            //2.获取商品list
            for (CkApplysEntity apply : applysEntitiesBySort) {
                goodsEntityTreeSet.add(apply.getCkGoodsEntity());
            }


            //3,遍历商品类别
            for (CkGoodsEntity fatherGoods : goodsEntityTreeSetFather) {

                Integer goodsFatherId = fatherGoods.getGoodsId();
                String goodsFatherName = fatherGoods.getGoodsName();
                List<List<Map<String, Object>>> fatherMaplist = new ArrayList<>();

                Map<String, Object> fatherMap = new HashMap<>();

                fatherMap.put("fatherName", goodsFatherName);
                fatherMap.put("fatherId", goodsFatherId);

                List<Object> smallList = new ArrayList();


                for (CkGoodsEntity goods : goodsEntityTreeSet) {

                    if (goods.getFatherId().equals(goodsFatherId)) {

                        Map<String, Object> goodsApplyMap = new HashMap<>();
                        List<CkApplysEntity> applys = new ArrayList<>();
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
                                CkStockRecordEntity recordEntity = new CkStockRecordEntity();
                                recordEntity.setStApplyId(apply.getApplyId());
                                recordEntity.setQuantity("");
                                recordEntity.setStGoodsId(apply.getApplyGoodsId());
                                recordEntity.setInStoreId(apply.getApplyStoreId());
                                recordEntity.setOutDepId(apply.getOutDepId());
                                recordEntity.setDiscountPrice(apply.getCkGoodsEntity().getPrice());
                                recordEntity.setIsDiscount(0);
                                apply.setStockRecordEntity(recordEntity);
                            }
                        }
                        goodsApplyMap.put("totalNumber", applyNumber);
                        goodsApplyMap.put("applys", applys);
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
    private List<Map<String, Object>> getDifferentGoods(List<CkApplysEntity> applysEntitiesBySort) {
        //遍历商品set
        TreeSet<CkGoodsEntity> goodsEntityTreeSet = new TreeSet<>();

        List<Map<String, Object>> smallList = new ArrayList();


        if (applysEntitiesBySort.size() > 0) {

            //1.获取商品list
            for (CkApplysEntity apply : applysEntitiesBySort) {
                goodsEntityTreeSet.add(apply.getCkGoodsEntity());
            }

            //3,遍历商品类别
            for (CkGoodsEntity goods : goodsEntityTreeSet) {

                Map<String, Object> goodsApplyMap = new HashMap<>();
                List<CkApplysEntity> applys = new ArrayList<>();
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
                        CkStockRecordEntity recordEntity = new CkStockRecordEntity();
                        recordEntity.setStApplyId(apply.getApplyId());
                        recordEntity.setQuantity("");
                        recordEntity.setStGoodsId(apply.getApplyGoodsId());
                        recordEntity.setInStoreId(apply.getApplyStoreId());
                        recordEntity.setOutDepId(apply.getOutDepId());
                        recordEntity.setDiscountPrice(apply.getCkGoodsEntity().getPrice());
                        recordEntity.setIsDiscount(0);
                        apply.setStockRecordEntity(recordEntity);
                    }
                }
                goodsApplyMap.put("totalNumber", applyNumber);
                goodsApplyMap.put("applys", applys);
                smallList.add(goodsApplyMap);

            }

        }
        return smallList;
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
    public R save(@RequestBody CkApplysEntity ckApply) {
        System.out.println(ckApply);
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.CHINA);
        String format = dateFormat.format(new Date());
        Date date = new Date();

        long time = date.getTime();
//        ckApply.setApplyTime(date.getTime());
        ckApply.setDeliveryDate(format);
        ckApply.setApplyStatus(0);
//        ckApplys.setApplyLineId(ckApplys.getCkLineStoreEntity().getReLineId());

        System.out.println("===>>>>>>>>>>>>>>>>>");
        ckApplysService.save(ckApply);

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
    /**
     * 删除yige
     */
    @ResponseBody
    @RequestMapping("/deleteOne/{applyId}")
    @RequiresPermissions("ckapplys:delete")
    public R deleteOne(@PathVariable Integer applyId) {
        System.out.println("shi delete ma ?");
        System.out.println(applyId);
        ckApplysService.delete(applyId);
        return R.ok();
    }


    @ResponseBody
    @RequestMapping("/getApplys/{storeId}")
    public R storeGetApplys(@PathVariable Integer storeId) {
        List<CkApplysEntity> applysEntities = ckApplysService.getStoreApplys(storeId);
        return R.ok().put("data", applysEntities);
    }




}
