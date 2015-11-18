package com.dxsoft.bzhouse.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dxsoft.bzhouse.model.HouseInfoEntity;
import com.dxsoft.bzhouse.model.HouseInfoQueryEntity;
import com.dxsoft.bzhouse.model.QueryEntity;
import com.dxsoft.bzhouse.model.ResponseEntity;
import com.dxsoft.bzhouse.model.SysDomainEntity;
import com.dxsoft.bzhouse.service.HouseService;
import com.dxsoft.bzhouse.util.HouseUtil;

@Controller
@RequestMapping("/")
public class HouseController {
	@Autowired
	private HouseService houseService;
	@Autowired
	HttpServletRequest hsr;
	private ResponseEntity pe=new ResponseEntity();
	
	@RequestMapping("queryHouseArea")
	public @ResponseBody Object QueryHosueArea(String paramValue){
		QueryEntity qe=new QueryEntity();
		try {
			List<SysDomainEntity> queryHouseArea = houseService.queryHouseArea(qe);
			pe.setSuccess(true);
			pe.setMessage("");
			pe.setData(queryHouseArea);
			return pe;
		} catch (Exception e) {
			pe.setSuccess(false);
			pe.setMessage("");
			e.printStackTrace();
		}
		return pe;
	}
	
	@RequestMapping("queryHouseAreabz")
	public @ResponseBody Object QueryHosueAreabz(String paramValue){
		QueryEntity qe=new QueryEntity();
		System.out.println("-----------------------:"+paramValue);
		try {
			List<SysDomainEntity> queryHouseArea = houseService.queryHouseArea(qe);
			pe.setSuccess(true);
			pe.setMessage("");
			pe.setData(queryHouseArea);
			return pe;
		} catch (Exception e) {
			pe.setSuccess(false);
			pe.setMessage("");
			e.printStackTrace();
		}
		return pe;
	}
	@RequestMapping("queryHouse123")
	public @ResponseBody Object QueryHosueArea1(HttpServletRequest req,HttpServletResponse res,@ModelAttribute HouseInfoQueryEntity hqe){
		System.out.println("--------------------123"+hqe.getHouseArea());
		String parameter = req.getParameter("houseName");
		System.out.println("---++++----"+parameter);
		QueryEntity qe=new QueryEntity();
		try {
			pe.setSuccess(true);
			pe.setMessage("");
			return pe;
		} catch (Exception e) {
			pe.setSuccess(false);
			pe.setMessage("");
			e.printStackTrace();
		}
		return pe;
	}
	@RequestMapping("insertIssueRentingHouse")
	public @ResponseBody Object insertIssueRentingHouse(String paramValue) throws Exception{
		long ct = System.currentTimeMillis();
		System.out.println("paramValue:"+paramValue);
		Map<String, Object> map = HouseUtil.json2Map(paramValue);
		HouseInfoEntity hie=new HouseInfoEntity();
		hie.setId(UUID.randomUUID().toString().replace("-", ""));
		hie.sethHouseName(String.valueOf(map.get("houseName")));
		hie.sethUserName(String.valueOf(map.get("linkman")));
		hie.sethAddress(String.valueOf(map.get("address")));
		hie.sethDisTrict(String.valueOf(map.get("areaName")));
		hie.sethHouseType(String.valueOf(map.get("houseHold")));
		hie.sethHouseArea(String.valueOf(map.get("areaStructure")));
		hie.sethHousePrice(String.valueOf(map.get("rent")));
		hie.sethTitle(String.valueOf(map.get("title")));
		hie.sethEstateSupportingFacility(String.valueOf(map.get("describe")));
		hie.setUserId(String.valueOf(map.get("userId")));
		hie.sethTelephone(String.valueOf(map.get("phoneNumber")));
		hie.sethStateDate(HouseUtil.getFormatDate(new Date(ct)));
		System.out.println("sadfsadfsdaf:::"+HouseUtil.getFormatDate(new Date(ct)));
		hie.sethReleaseType("1");
		try {
			houseService.insertIssueRentingHouse(hie);
			pe.setSuccess(true);
			pe.setMessage("");
			return pe;
		} catch (Exception e) {
			pe.setSuccess(false);
			pe.setMessage("");
			e.printStackTrace();
		}
		return pe;
	}
	@RequestMapping("qeuryHosueInfo")
	public @ResponseBody Object qeuryHosueInfo(String paramValue){
		QueryEntity qe = new QueryEntity();
		try {
			List<HouseInfoEntity> queryHouseInfo = houseService.queryHouseInfo(qe);
			pe.setSuccess(true);
			pe.setData(queryHouseInfo);
		} catch (Exception e) {
			pe.setSuccess(false);
			e.printStackTrace();
		}
		return pe;
	}
}
