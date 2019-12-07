package com.grain.controller;

/**
 * @author lpy
 * @date 2019-09-19 19:11:01
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.alibaba.fastjson.JSON;
import com.baidu.aip.speech.TtsResponse;
import com.baidu.aip.util.Util;
import com.grain.utils.*;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import com.grain.entity.CkGoodsEntity;
import com.grain.service.CkGoodsService;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import static com.grain.utils.PinYin4jUtils.*;


@Controller
@RequestMapping("/sys/ckgoods")
public class CkGoodsController {
    @Autowired
    private CkGoodsService ckGoodsService;







    /**
     * 读句子识别结果
     *
     * @param file
     * @param session
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/readGoods", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public Object readGoods(@RequestParam("file") MultipartFile file,
                            HttpSession session) throws Exception {

        //上传音频文件
        String newFileName = "uploadRecord";
        String realPath = UploadFile.upload(session, newFileName, file);

        //2，mp3转pcm格式
        String filename = file.getOriginalFilename();
        String wavfile = realPath + "/" + filename;


        String outfile = "";
        if (filename.contains(".mp3")) {
            String newoldName = filename.substring(0, filename.lastIndexOf(".")) + ".pcm";
            outfile = realPath + "/" + newoldName;
            FFMpegUtil.convetor(wavfile, outfile);
        }

        //3，百度识别
        try {
            File src = new File(outfile);
            FileInputStream fileInputStream = new FileInputStream(src);
            byte[] pcmBytes = IOUtils.toByteArray(fileInputStream);
            JSONObject resultJson = SpeechUtil.speechBdApi(pcmBytes);
            System.out.println(resultJson);
            System.out.println("why??????");
            if (null != resultJson && resultJson.getInt("err_no") == 0) {
                JSONArray jsonArray = resultJson.getJSONArray("result");
                String resStr = jsonArray.toString();
                resStr = resStr.replaceAll("[\\pP\\pS\\pZ]", "");

                String pinyin = hanziToPinyin(resStr);
                System.out.println(pinyin+"pinyin===========++++++");

               List<CkGoodsEntity> queryGoods = ckGoodsService.queryRecordGoods(pinyin);
                System.out.println("++++++");
                System.out.println(queryGoods);
                Map<String, Object> map = new HashMap<>();
                if(queryGoods.size() == 1){
                    map.put("code",1);
                    map.put("list", queryGoods);
                    return map;
                }else if(queryGoods.size() > 1){
                    System.out.println("猪头肉。。。。。。");
                    map.put("code",2);
                    map.put("list", queryGoods);
                    return map;
                }
                else {
                    map.put("code", 0);
                    map.put("result", resStr);
                    return map;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return -1;
    }


    @RequestMapping(value = "/outDepCateList/{depId}")
    @ResponseBody
    public R outDepCateList(@PathVariable Integer depId) {

        List<CkGoodsEntity> cateGoodsList = ckGoodsService.queryOutDepCateList(depId);

        return R.ok().put("data", cateGoodsList);
    }

    @RequestMapping(value = "/outDepGoodsList", method = RequestMethod.POST)
    @ResponseBody
    public R outDepGoodsList(@RequestParam Integer page,@RequestParam Integer limit,
                             @RequestParam Integer depId, @RequestParam Integer fatherId) {

        if(fatherId.equals(-1)){
            Map<String, Object> map = new HashMap<>();
            map.put("offset", (page - 1) * limit);
            map.put("limit", limit);
            map.put("depId", depId);
            List<CkGoodsEntity> allGoods = ckGoodsService.queryOutDepGoodsListAll(map);
            int total = ckGoodsService.queryTotal(map);

            PageUtils pageUtil = new PageUtils(allGoods, total, limit, page);
            return R.ok().put("page", pageUtil);

        }else {
            Map<String, Object> map = new HashMap<>();
            map.put("offset", (page - 1) * limit);
            map.put("limit", limit);
            map.put("depId", depId);
            map.put("fatherId", fatherId);
            List<CkGoodsEntity> byFatherGoods = ckGoodsService.queryOutDepGoodsListByFatherId(map);
            int total = ckGoodsService.queryTotal(map);

            PageUtils pageUtil = new PageUtils(byFatherGoods, total, limit, page);
            return R.ok().put("page", pageUtil);
        }




    }



    @ResponseBody
    @RequestMapping("/queryPinyin/{pinyin}")
    public R queryPinyin(@PathVariable String  pinyin) {

       List<CkGoodsEntity> list =   ckGoodsService.queryPinyin(pinyin);
        return R.ok().put("data",list);
    }




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
        List<CkGoodsEntity> cateGoodsList = ckGoodsService.queryGoodsList(map);
        int total = ckGoodsService.queryTotal(map);

        PageUtils pageUtil = new PageUtils(cateGoodsList, total, limit, page);
        System.out.println(cateGoodsList);
        System.out.println("sisy");
        return R.ok().put("page", pageUtil);
    }


    @RequestMapping("/cateList")
    @ResponseBody
    public R cateGoods() {
        List<CkGoodsEntity> list = ckGoodsService.queryCateGoods();

        System.out.println("jinlaile??");
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
    public R save(@RequestParam String param) {


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
