package com.zhouwj.recognition.controller;

import com.alibaba.fastjson.JSON;
import com.zhouwj.recognition.entity.Carinf;
import com.zhouwj.recognition.entity.Users;
import com.zhouwj.recognition.mapper.CarinfMapper;
import com.zhouwj.recognition.service.CarInfoService;
import com.zhouwj.recognition.service.UserServices;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.*;


@Controller
public class indexController {
    @Autowired
    private UserServices userServices;

    @Autowired
    private CarinfMapper carinfMapper;

    @Autowired
    private CarInfoService carInfoService;


    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(){
        return "index";
    }

    /**
     * 访问检查，返回状态码
     * @Author yechh
     * @param username
     * @Param password
     * @return
     * */
    @RequestMapping(value = "/loginCheck",method = RequestMethod.POST)
    public @ResponseBody Object loginCheck(@Param("username") String username,
                                           @Param("password") String password){
        Users users = new Users(username,password);
        HashMap<String,String> res = new HashMap<String,String>();
        if (userServices.loginCheck(users)){
            res.put("stateCode","1");
        }else{
            res.put("stateCode","0");
        }
        return res;
    }
    /**
     * 主页面跳转
     * @Author yechh
     * @return modelAndView  数据以及视图
     * */
    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public ModelAndView main(HttpServletRequest httpServletRequest) throws ClassNotFoundException{
    ModelAndView modelAndView = new ModelAndView("main");
    modelAndView.addObject("SearchResult","carInfoResult");
     return modelAndView;
    }
    /**
     * 查询车牌
     * */
    @ResponseBody
    @RequestMapping(value = "/searchCarNum/load",method = RequestMethod.GET)
    public String seachCarNum (@Param("carnum") String carnum){
        List<Carinf> result = Collections.singletonList(carinfMapper.selectByPrimaryKey(carnum));
        List<Map<String,Object>> res = new ArrayList<>();
        int i = 0;
        for (Carinf tempList : result){
            Map<String,Object> map = new HashMap<>();
            map.put("no",++i);
            map.put("value",tempList);
            res.add(map);
        }
        TableInfo tableInfo = new TableInfo();
        tableInfo.setRows(res);

        return JSON.toJSONString(tableInfo);
    }
    /**
     * 删除所选记录
     * */
    @ResponseBody
    @RequestMapping(value = "/searchCarNum/delete",method = RequestMethod.GET)
    public void deleteCarNum (@Param("carnum") String carnum){
         carinfMapper.deleteCarInfo(carnum);
    }
    public class TableInfo{
       List<Map<String,Object>> rows;

       public List<Map<String,Object>> getRows(){return rows;}

       public void setRows(List<Map<String,Object>> rows){
           this.rows = rows;
       }
    }

}
