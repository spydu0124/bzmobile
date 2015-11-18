package com.dxsoft.bzhouse.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dxsoft.bzhouse.model.HouseInfoEntity;
import com.dxsoft.bzhouse.model.QueryEntity;
import com.dxsoft.bzhouse.model.SysDomainEntity;
import com.dxsoft.bzhouse.service.HouseService;

@Service("houseService")
public class HouseServiceImpl extends CommonDaoServiceImpl implements
		HouseService {

	@Override
	public List<SysDomainEntity> queryHouseArea(QueryEntity qe) throws Exception {
		List<SysDomainEntity> list=(List<SysDomainEntity>)this.getCommonDao().searchList("house.queryHouseDomain", qe);
		return list;
	}

	@Override
	public void insertIssueRentingHouse(HouseInfoEntity hie) throws Exception {
		this.getCommonDao().insert("house.insertIssueRentingHouse", hie);
	}

	@Override
	public List<HouseInfoEntity> queryHouseInfo(QueryEntity qe) throws Exception {
		List<HouseInfoEntity> searchList = (List<HouseInfoEntity>) this.getCommonDao().searchList("house.queryHouseInfo", qe);
		return searchList;
	}

}
