package com.grain.controller;

/**
 * @author lpy
 * @date 2019-09-19 19:11:01
 */

import java.io.*;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.alibaba.fastjson.JSON;
import com.baidu.aip.speech.TtsResponse;
import com.baidu.aip.util.Util;
import com.grain.utils.*;
import org.apache.commons.io.IOUtils;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
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
import javax.servlet.http.HttpServletResponse;
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

                List<CkGoodsEntity> queryGoods = ckGoodsService.queryRecordGoods(pinyin);
                System.out.println("++++++");
                System.out.println(queryGoods);
                Map<String, Object> map = new HashMap<>();
                if (queryGoods.size() == 1) {
                    map.put("code", 1);
                    map.put("list", queryGoods);
                    return map;
                } else if (queryGoods.size() > 1) {
                    map.put("code", 2);
                    map.put("list", queryGoods);
                    return map;
                } else {
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
    public R outDepGoodsList(@RequestParam Integer page, @RequestParam Integer limit,
                             @RequestParam Integer depId, @RequestParam Integer fatherId) {

        if (fatherId.equals(-1)) {
            Map<String, Object> map = new HashMap<>();
            map.put("offset", (page - 1) * limit);
            map.put("limit", limit);
            map.put("depId", depId);
            List<CkGoodsEntity> allGoods = ckGoodsService.queryOutDepGoodsListAll(map);
            int total = ckGoodsService.queryTotal(map);

            PageUtils pageUtil = new PageUtils(allGoods, total, limit, page);
            return R.ok().put("page", pageUtil);

        } else {
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
    public R queryPinyin(@PathVariable String pinyin) {

        List<CkGoodsEntity> list = ckGoodsService.queryPinyin(pinyin);
        return R.ok().put("data", list);
    }


    @RequestMapping(value = "/goodsList", method = RequestMethod.POST)
    @ResponseBody
    public R getCateGoods(@RequestParam Integer page, @RequestParam Integer limit, @RequestParam Integer fatherId) {
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
        return R.ok().put("page", pageUtil);
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



    @RequestMapping("/downloadExcel")
    @ResponseBody
    public void downloadExcel(HttpServletResponse response) {

        System.out.println("haihaiahai");

        try {
            List<CkGoodsEntity> ckGoodsEntities = ckGoodsService.downloadGoods();
            HSSFWorkbook wb = new HSSFWorkbook();
            HSSFSheet sheet = wb.createSheet("产品");

            //设置表头
            HSSFRow row = sheet.createRow(0);

            row.createCell(0).setCellValue("商品id");
            row.createCell(1).setCellValue("商品名称");
            row.createCell(2).setCellValue("父级id");
            row.createCell(3).setCellValue("采购规格");
            row.createCell(4).setCellValue("申请规格");
            row.createCell(5).setCellValue("销售规格");
            row.createCell(6).setCellValue("是否称重");
            row.createCell(7).setCellValue("商品状态");
            row.createCell(8).setCellValue("出货部门id");
            row.createCell(9).setCellValue("库存报警重量");
            row.createCell(10).setCellValue("保质期天数");
            row.createCell(11).setCellValue("零售价");
            row.createCell(12).setCellValue("商品排序");

            //设置表体
            HSSFRow goodsRow = null;
            for (int i = 0; i < ckGoodsEntities.size(); i++) {
                CkGoodsEntity ckGoodsEntity = ckGoodsEntities.get(i);
                goodsRow = sheet.createRow(i + 1);
                goodsRow.createCell(0).setCellValue(ckGoodsEntity.getGoodsId());
                goodsRow.createCell(1).setCellValue(ckGoodsEntity.getGoodsName());
                goodsRow.createCell(2).setCellValue(ckGoodsEntity.getFatherId());
                goodsRow.createCell(3).setCellValue(ckGoodsEntity.getPurStandardName());
                goodsRow.createCell(4).setCellValue(ckGoodsEntity.getApplyStandardName());
                goodsRow.createCell(5).setCellValue(ckGoodsEntity.getSellStandardName());
                goodsRow.createCell(6).setCellValue(ckGoodsEntity.getIsWeight());
                goodsRow.createCell(7).setCellValue(ckGoodsEntity.getStatus());
                goodsRow.createCell(8).setCellValue(ckGoodsEntity.getOutDepId());
                goodsRow.createCell(9).setCellValue(ckGoodsEntity.getAlarmWeight());
                goodsRow.createCell(10).setCellValue(ckGoodsEntity.getQualityPeriod());
                goodsRow.createCell(11).setCellValue(ckGoodsEntity.getPrice());
                goodsRow.createCell(12).setCellValue(ckGoodsEntity.getGSort());

            }


            String fileName = new String("导出商品.xls".getBytes("utf-8"), "iso8859-1");
            response.setHeader("content-Disposition", "attachment; filename =" + fileName);
            wb.write(response.getOutputStream());

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

     @RequestMapping(value = "/downloadExcelTMP", method = RequestMethod.GET)
      @ResponseBody
      public void downloadExcelTMP (HttpServletResponse response, HttpSession session ) {

        FileInputStream is = null;

        try{
            String fileName = new String("商品模版.xls".getBytes("utf-8"), "iso8859-1");
            response.setHeader("content-Disposition", "attachment; filename =" + fileName);

            ServletContext servletContext = session.getServletContext();
            String realPath = servletContext.getRealPath("statics/goodsTML.xls");

            is = new FileInputStream(realPath);

            IOUtils.copy(is, response.getOutputStream());

        }
        catch (Exception e) {
            e.printStackTrace();

        }finally {
            if(is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


      }


    @RequestMapping(value = "/uploadExcel", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public R uploadExcel(@RequestParam("file") MultipartFile file,
                            HttpSession session) throws Exception {
        System.out.println(file.getName());
        HSSFWorkbook wb = new HSSFWorkbook(file.getInputStream());

        HSSFSheet sheet = null;
        for( int j = 0; j < wb.getNumberOfSheets(); j++) {
            sheet = wb.getSheetAt(j);

            int lastRowNum = sheet.getLastRowNum();

            System.out.println(lastRowNum);

            Row goodsRow = null;

            for(int i = 1; i <= lastRowNum; i++){

                goodsRow = sheet.getRow(i);

                CkGoodsEntity goods = new CkGoodsEntity();
                goods.setType(0);
                goods.setStockApplyStandard("0.0");
                goods.setStockPurStandard("0.0");
                goods.setStockSellStandard("0.0");

                String goodsName =  (String)getCellValue(goodsRow.getCell(0));

                String pinyin = hanziToPinyin(goodsName);

                String headPinyin = getHeadStringByString(goodsName, false, null);
                goods.setPinyin(pinyin);
                goods.setHeadPinyin(headPinyin);

                goods.setGoodsName((String)getCellValue(goodsRow.getCell(0)));
                goods.setFatherId((Integer)getCellValue(goodsRow.getCell(1)));
                goods.setPurStandardName((String) getCellValue(goodsRow.getCell(2)));
                goods.setApplyStandardName((String) getCellValue(goodsRow.getCell(3)));
                goods.setSellStandardName((String) getCellValue(goodsRow.getCell(4)));
                goods.setIsWeight((Integer)getCellValue(goodsRow.getCell(5)));
                goods.setStatus((Integer)getCellValue(goodsRow.getCell(6)));
                goods.setOutDepId((Integer) getCellValue(goodsRow.getCell(7)));
                goods.setAlarmWeight((Integer)getCellValue(goodsRow.getCell(8)));
                goods.setQualityPeriod((Integer)getCellValue(goodsRow.getCell(9)));
                goods.setPrice((String)getCellValue(goodsRow.getCell(10)));
                goods.setGSort((Integer)getCellValue(goodsRow.getCell(11)));
                ckGoodsService.save(goods);
            }

        }





//        HSSFSheet sheet = wb.getSheetAt(0);


        return R.ok();

    }

    private Object getCellValue(Cell cell) {

        switch (cell.getCellType()){
            case STRING:
                return cell.getRichStringCellValue().getString();
            case NUMERIC:
                if(DateUtil.isCellDateFormatted(cell)){
                    return cell.getDateCellValue();
                }else {
                    double numericCellValue = cell.getNumericCellValue();

                    String s = String.valueOf(numericCellValue);
                    int i1 = Integer.parseInt(s.replace(".0",""));
                    System.out.println("hahahahhahhahahha");
                    return i1;
                }
            case BOOLEAN:
                return cell.getBooleanCellValue();
            case FORMULA:
                return cell.getCellFormula();
        }

        return cell;

    }




}


