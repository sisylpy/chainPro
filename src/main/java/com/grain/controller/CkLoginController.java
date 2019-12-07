/**
 * com.grain.controller class
 *
 * @Author: peiyi li
 * @Date: 2019-10-25 12:29
 */

package com.grain.controller;

import com.grain.entity.CkStoreEntity;
import com.grain.service.CkStoreService;
import com.grain.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *@author lpy
 *@date 2019-10-25 12:29
 */

@Controller
public class CkLoginController {

    @Autowired
    private  CkStoreService storeService;


//     @RequestMapping(value = "/wxgetopenGid", method = RequestMethod.POST)
//      @ResponseBody
//      public R wxgetopenGid (@RequestBody ) {
//
//        return R.ok();
//      }
     

    @RequestMapping(value = "/sys/storeLogin", method = RequestMethod.POST)
    @ResponseBody
    public R storeLogin (@RequestBody CkStoreEntity storeEntity) {
        System.out.println(storeEntity);
        String phone = storeEntity.getPhone();

       CkStoreEntity store =  storeService.storeLogin(phone);
        System.out.println("kankan");
        System.out.println(store);
       if(store == null) {

           return R.error(-1,"没有该店铺，请公司总部核对手机号是否正确？");
       }else {
           return R.ok().put("data",store);

       }

    }

}
