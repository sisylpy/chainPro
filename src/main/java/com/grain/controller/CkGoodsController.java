package com.grain.controller;

/**
 * @author lpy
 * @date 2019-09-19 19:11:01
 */

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.grain.entity.SysUserEntity;
import com.grain.utils.ParseObject;
import com.grain.utils.PinYin4jUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkGoodsEntity;
import com.grain.service.CkGoodsService;
import com.grain.utils.PageUtils;
import com.grain.utils.R;

import static com.grain.utils.PinYin4jUtils.*;


@Controller
@RequestMapping("/sys/ckgoods")
public class CkGoodsController {
    @Autowired
    private CkGoodsService ckGoodsService;


    @RequestMapping(value = "/goodsList", method = RequestMethod.POST)
    @ResponseBody
    public R getCateGoods(@RequestParam Integer page,@RequestParam Integer limit,@RequestParam Integer fatherId) {
        System.out.println(page);
        System.out.println(limit);
        System.out.println(fatherId);
        Map<String, Object> map = new HashMap<>();
        map.put("offset", (page - 1) * limit);
        map.put("limit", limit);
        map.put("fatherId", fatherId);
        List<CkGoodsEntity> cateGoodsList = ckGoodsService.queryCateGoodsList(map);
        int total = ckGoodsService.queryTotal(map);

        PageUtils pageUtil = new PageUtils(cateGoodsList, total, limit, page);
        System.out.println(cateGoodsList);
        System.out.println("sisy");
        return R.ok().put("page", pageUtil);
    }


    @ResponseBody
    @RequestMapping("/queryPinyin/{pinyin}")
    public R queryPinyin(@PathVariable String  pinyin) {

       List<CkGoodsEntity> list =   ckGoodsService.queryPinyin(pinyin);
        return R.ok().put("data",list);
    }


    @RequestMapping("/cateList")
    @ResponseBody
    public R cateGoods() {
        List<CkGoodsEntity> list = ckGoodsService.queryCateGoods();
        return R.ok().put("data", list);
    }





    /**
     * 信息
     */
    @ResponseBody
    @RequestMapping("/info/{goodsId}")
    @RequiresPermissions("ckgoods:info")
    public R info(@PathVariable("goodsId") Integer goodsId) {
        System.out.println("info");
        System.out.println(goodsId);
        CkGoodsEntity ckGoods = ckGoodsService.queryObject(goodsId);

        return R.ok().put("data", ckGoods);
    }

    /**
     * 保存
     */
    @ResponseBody
    @RequestMapping("/save")
    @RequiresPermissions("ckgoods:save")
    public R save(@RequestBody String param) {


        String s = ParseObject.parseObj(param);
        CkGoodsEntity ckGoodsEntity = JSON.parseObject(s, CkGoodsEntity.class);
        String goodsName = ckGoodsEntity.getGoodsName();
        String pinyin = hanziToPinyin(goodsName);

        String headPinyin = getHeadStringByString(goodsName, false, null);
        ckGoodsEntity.setPinyin(pinyin);
        ckGoodsEntity.setHeadPinyin(headPinyin);
        ckGoodsService.save(ckGoodsEntity);
        return R.ok();
    }


    /**
     * 修改
     */
    @ResponseBody
    @RequestMapping("/update")
    @RequiresPermissions("ckgoods:update")
    public R update(@RequestBody String ckGoods) {

        String obj = ParseObject.parseObj(ckGoods);
        CkGoodsEntity ckGoodsEntity = JSON.parseObject(obj, CkGoodsEntity.class);

        ckGoodsService.update(ckGoodsEntity);

        return R.ok();
    }

    /**
     * 删除
     */
    @ResponseBody
    @RequestMapping("/delete")
    @RequiresPermissions("ckgoods:delete")
    public R delete(@RequestBody Integer[] goodsIds) {
        ckGoodsService.deleteBatch(goodsIds);

        return R.ok();
    }


}
