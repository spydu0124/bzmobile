package com.dxsoft.bzhouse.service.impl;


import org.springframework.stereotype.Service;

import com.dxsoft.bzhouse.model.SysUserinfo;
import com.dxsoft.bzhouse.service.LoginService;

/**
 * 登陆业务类
 * @author duwenang
 *
 */
@Service
public class LoginServiceImpl extends CommonDaoServiceImpl implements LoginService {

	@Override
	public SysUserinfo queryUserInfo(String userid, String password)throws Exception {
//		MD5 md5 = new MD5(password);
//		password=md5.compute();
		SysUserinfo userInfo = new SysUserinfo();
		userInfo.setUserid(userid);
		userInfo.setPasswd(password);
		SysUserinfo searchObj = (SysUserinfo)this.getCommonDao().searchObj("login.queryLoginInfo", userInfo);
		return searchObj;
	}

	@Override
	public void insertUserInfo(SysUserinfo sui) throws Exception {
		this.getCommonDao().insert("login.insertUserInfo", sui);
	}
}
