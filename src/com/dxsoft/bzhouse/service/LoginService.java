package com.dxsoft.bzhouse.service;

import com.dxsoft.bzhouse.model.SysUserinfo;


public interface LoginService {
	/**
	 * 查询用户信息
	 * @param username
	 * @param password
	 * @return UserInfo
	 * @throws Exception
	 */
	public SysUserinfo queryUserInfo(String username,String password) throws Exception;
	public void insertUserInfo(SysUserinfo hie) throws Exception;
}
