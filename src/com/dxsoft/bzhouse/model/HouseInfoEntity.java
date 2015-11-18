package com.dxsoft.bzhouse.model;

import java.util.Date;
/**
 * 房源信息
 * @author Administrator
 *
 */
public class HouseInfoEntity {
	private String id;//主键
	private String userId;//发布人USERID
	
	private String hReleaseType;//发布类型(整租：01，合租：02，二手房：03)H_RELEASE_TYPE
	private String hIdentity;//发布人身份 （个人：01，经纪人：02）H_IDENTITY
	private String hUserName;//联系人
	private String hTelephone;//联系方式H_TELEPHONE
	private String hHouseName;//小区名称H_HOUSENAME
	
	private String hAddress;//小区地址H_ADDRESS
	private String hDisTrict;//小区所在区域(利辛，蒙城，涡阳，谯城)H_DISTRICT
	private String hHouseUse;//房屋用途（平房，普通住宅，公寓，别墅，其它，商住两用）H_HOUSE_USE
	private String hHouseType;//房屋户型H_HOUSE_TYPE
	private String hHouseArea;//建筑面积H_HOUSE_AREA
	private String hHousePrice;//金额H_HOUSE_PRICE
	private String hFitmentComfiguration;//装修（毛坯，简单装修，精装修，豪华装修，中等装修）H_FITMENT_COMFIGURATION
	private Number hHouseAge;//房年龄H_HOUSE_AGE
	private String hPropertyRight;//产权（70年，50年，40年）H_PROPERTY_RIGHT
	private String hPayment;//付款方式H_PAYMENT
	private Number hFloor;//楼层H_FLOOR
	private Number hTotalFloor;//总楼层H_TOTAL_FLOOR
	private String hEstateSupportingFacility;//配套设施-----床，宽带，电视H_ESTATE_SUPPORTING_FACILITY
	private String hJointRent;//合租类型（主卧，次卧，隔断）H_JOINT_RENT
	private String hRestrictSex;//合租人性别（男女不限：2，限男生：1，限女生：0）H_RESTRICT_SEX
	private String hState;//删除状态（0：否，1：是）H_STATE
	private String hSort;//排序H_SORT
	private String hResourceUrl;//图片URLH_RESOURCE_URL
	private String hStateDate;//发布时间H_STATE_DATE
	private Date hModificationTime;//最后一次修改时间H_MODIFICATION_TIME
	private Date hEndDate;//到期时间H_END_DATE
	private String hAuditId;//审核人H_AUDIT_ID
	private String hIspassed;//审核状态（0：未审，1：已审,2:未通过）H_ISPASSED
	private Date hAuditDate;//审核时间H_AUDIT_DATE
	private String hAuditInfo;//审核信息H_AUDIT_INFO
	private String hTitle;//标题H_TITLE
	private String hHOuseDetail;//房源备注H_HOUSEDETAIL
	private String hExtend1;//保留字段1H_EXTEND1;
	private String hExtend2;//保留字段2H_EXTEND2;
	
	
	public String gethUserName() {
		return hUserName;
	}
	public void sethUserName(String hUserName) {
		this.hUserName = hUserName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String gethReleaseType() {
		return hReleaseType;
	}
	public void sethReleaseType(String hReleaseType) {
		this.hReleaseType = hReleaseType;
	}
	public String gethIdentity() {
		return hIdentity;
	}
	public void sethIdentity(String hIdentity) {
		this.hIdentity = hIdentity;
	}
	public String gethTelephone() {
		return hTelephone;
	}
	public void sethTelephone(String hTelephone) {
		this.hTelephone = hTelephone;
	}
	public String gethHouseName() {
		return hHouseName;
	}
	public void sethHouseName(String hHouseName) {
		this.hHouseName = hHouseName;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public String gethDisTrict() {
		return hDisTrict;
	}
	public void sethDisTrict(String hDisTrict) {
		this.hDisTrict = hDisTrict;
	}
	public String gethHouseUse() {
		return hHouseUse;
	}
	public void sethHouseUse(String hHouseUse) {
		this.hHouseUse = hHouseUse;
	}
	public String gethHouseType() {
		return hHouseType;
	}
	public void sethHouseType(String hHouseType) {
		this.hHouseType = hHouseType;
	}
	public String gethHouseArea() {
		return hHouseArea;
	}
	public void sethHouseArea(String hHouseArea) {
		this.hHouseArea = hHouseArea;
	}
	public String gethHousePrice() {
		return hHousePrice;
	}
	public void sethHousePrice(String hHousePrice) {
		this.hHousePrice = hHousePrice;
	}
	public String gethFitmentComfiguration() {
		return hFitmentComfiguration;
	}
	public void sethFitmentComfiguration(String hFitmentComfiguration) {
		this.hFitmentComfiguration = hFitmentComfiguration;
	}
	public Number gethHouseAge() {
		return hHouseAge;
	}
	public void sethHouseAge(Number hHouseAge) {
		this.hHouseAge = hHouseAge;
	}
	public String gethPropertyRight() {
		return hPropertyRight;
	}
	public void sethPropertyRight(String hPropertyRight) {
		this.hPropertyRight = hPropertyRight;
	}
	public String gethPayment() {
		return hPayment;
	}
	public void sethPayment(String hPayment) {
		this.hPayment = hPayment;
	}
	public Number gethFloor() {
		return hFloor;
	}
	public void sethFloor(Number hFloor) {
		this.hFloor = hFloor;
	}
	public Number gethTotalFloor() {
		return hTotalFloor;
	}
	public void sethTotalFloor(Number hTotalFloor) {
		this.hTotalFloor = hTotalFloor;
	}
	public String gethEstateSupportingFacility() {
		return hEstateSupportingFacility;
	}
	public void sethEstateSupportingFacility(String hEstateSupportingFacility) {
		this.hEstateSupportingFacility = hEstateSupportingFacility;
	}
	public String gethJointRent() {
		return hJointRent;
	}
	public void sethJointRent(String hJointRent) {
		this.hJointRent = hJointRent;
	}
	public String gethRestrictSex() {
		return hRestrictSex;
	}
	public void sethRestrictSex(String hRestrictSex) {
		this.hRestrictSex = hRestrictSex;
	}
	public String gethState() {
		return hState;
	}
	public void sethState(String hState) {
		this.hState = hState;
	}
	public String gethSort() {
		return hSort;
	}
	public void sethSort(String hSort) {
		this.hSort = hSort;
	}
	public String gethResourceUrl() {
		return hResourceUrl;
	}
	public void sethResourceUrl(String hResourceUrl) {
		this.hResourceUrl = hResourceUrl;
	}
	public String gethStateDate() {
		return hStateDate;
	}
	public void sethStateDate(String hStateDate) {
		this.hStateDate = hStateDate;
	}
	public Date gethModificationTime() {
		return hModificationTime;
	}
	public void sethModificationTime(Date hModificationTime) {
		this.hModificationTime = hModificationTime;
	}
	public Date gethEndDate() {
		return hEndDate;
	}
	public void sethEndDate(Date hEndDate) {
		this.hEndDate = hEndDate;
	}
	public String gethAuditId() {
		return hAuditId;
	}
	public void sethAuditId(String hAuditId) {
		this.hAuditId = hAuditId;
	}
	public String gethIspassed() {
		return hIspassed;
	}
	public void sethIspassed(String hIspassed) {
		this.hIspassed = hIspassed;
	}
	public Date gethAuditDate() {
		return hAuditDate;
	}
	public void sethAuditDate(Date hAuditDate) {
		this.hAuditDate = hAuditDate;
	}
	public String gethAuditInfo() {
		return hAuditInfo;
	}
	public void sethAuditInfo(String hAuditInfo) {
		this.hAuditInfo = hAuditInfo;
	}
	public String gethTitle() {
		return hTitle;
	}
	public void sethTitle(String hTitle) {
		this.hTitle = hTitle;
	}
	public String gethHOuseDetail() {
		return hHOuseDetail;
	}
	public void sethHOuseDetail(String hHOuseDetail) {
		this.hHOuseDetail = hHOuseDetail;
	}
	public String gethExtend1() {
		return hExtend1;
	}
	public void sethExtend1(String hExtend1) {
		this.hExtend1 = hExtend1;
	}
	public String gethExtend2() {
		return hExtend2;
	}
	public void sethExtend2(String hExtend2) {
		this.hExtend2 = hExtend2;
	}
	@Override
	public String toString() {
		return "HouseInfoEntity [id=" + id + ", userId=" + userId
				+ ", hReleaseType=" + hReleaseType + ", hIdentity=" + hIdentity
				+ ", hTelephone=" + hTelephone + ", hHouseName=" + hHouseName
				+ ", hAddress=" + hAddress + ", hDisTrict=" + hDisTrict
				+ ", hHouseUse=" + hHouseUse + ", hHouseType=" + hHouseType
				+ ", hHouseArea=" + hHouseArea + ", hHousePrice=" + hHousePrice
				+ ", hFitmentComfiguration=" + hFitmentComfiguration
				+ ", hHouseAge=" + hHouseAge + ", hPropertyRight="
				+ hPropertyRight + ", hPayment=" + hPayment + ", hFloor="
				+ hFloor + ", hTotalFloor=" + hTotalFloor
				+ ", hEstateSupportingFacility=" + hEstateSupportingFacility
				+ ", hJointRent=" + hJointRent + ", hRestrictSex="
				+ hRestrictSex + ", hState=" + hState + ", hSort=" + hSort
				+ ", hResourceUrl=" + hResourceUrl + ", hStateDate="
				+ hStateDate + ", hModificationTime=" + hModificationTime
				+ ", hEndDate=" + hEndDate + ", hAuditId=" + hAuditId
				+ ", hIspassed=" + hIspassed + ", hAuditDate=" + hAuditDate
				+ ", hAuditInfo=" + hAuditInfo + ", hTitle=" + hTitle
				+ ", hHOuseDetail=" + hHOuseDetail + ", hExtend1=" + hExtend1
				+ ", hExtend2=" + hExtend2 + "]";
	}
	
	
	
	
}
