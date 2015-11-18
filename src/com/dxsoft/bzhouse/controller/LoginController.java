package com.dxsoft.bzhouse.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxsoft.bzhouse.model.ResponseEntity;
import com.dxsoft.bzhouse.model.SysUserinfo;
import com.dxsoft.bzhouse.service.LoginService;
import com.dxsoft.bzhouse.util.HouseUtil;
import com.dxsoft.bzhouse.util.MD5;

/**
 * 登陆控制类
 * @author duwenang
 * @ 2015-11-3
 */
@Controller
@RequestMapping("/")
public class LoginController {
	@Autowired
	private LoginService loginservice;
	private ResponseEntity responseEntity = new ResponseEntity();
	
	@RequestMapping("mobileLogin")
	public @ResponseBody Object MobileLogin(String paramValue){
		SysUserinfo queryUserInfo;
		Map<String, Object> userInfo = HouseUtil.json2Map(paramValue);
		try {
			String userid=userInfo.get("username").toString();
			String password = userInfo.get("passwd").toString();
			MD5 md5 = new MD5(password);
			queryUserInfo = loginservice.queryUserInfo(userid,md5.compute());
			if(queryUserInfo!=null){
				responseEntity.setSuccess(true);
				responseEntity.setMessage("成功");
				responseEntity.setData(queryUserInfo);
			}else{
				responseEntity.setSuccess(false);
				responseEntity.setMessage("失败");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return responseEntity;
	}
	
	@RequestMapping("insertUserInfo")
	public @ResponseBody Object insertUserInfo(String paramValue){
		Map<String, Object> userInfo = HouseUtil.json2Map(paramValue);
		SysUserinfo sysUserinfo = new SysUserinfo();
		sysUserinfo.setSid(new BigDecimal(System.currentTimeMillis()));
		sysUserinfo.setUserid(userInfo.get("username").toString());
		
		MD5 md5 = new MD5(userInfo.get("passwd").toString());
		sysUserinfo.setPasswd(md5.compute());
		
		sysUserinfo.setRegTime(new Date(System.currentTimeMillis()));
		sysUserinfo.setMobile(userInfo.get("phoneNumber").toString());
		try {
			loginservice.insertUserInfo(sysUserinfo);
			responseEntity.setSuccess(true);
			responseEntity.setMessage("注册完成");
		} catch (Exception e) {
			responseEntity.setSuccess(false);
			responseEntity.setMessage("注册失败");
			e.printStackTrace();
		}
		return responseEntity;
	}
}
