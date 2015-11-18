package com.dxsoft.bzhouse.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dxsoft.bzhouse.model.HouseInfoEntity;
import com.dxsoft.bzhouse.model.QueryEntity;
import com.dxsoft.bzhouse.model.SysDomainEntity;

public interface HouseService {
	/**
	 * 查询区域
	 * @param qe
	 * @return
	 * @throws Exception
	 */
	public List<SysDomainEntity> queryHouseArea(QueryEntity qe) throws Exception;
	/**
	 * 插入整租信息
	 * @return
	 * @throws Exception
	 */
	public void insertIssueRentingHouse(HouseInfoEntity hie) throws Exception;
	/**
	 * 
	 */
	public List<HouseInfoEntity> queryHouseInfo(QueryEntity qe) throws Exception;
}
