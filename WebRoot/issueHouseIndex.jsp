<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<!-- JavaScript 放置在文档最后面可以使页面加载速度更快 -->
	<script src="<%=basePath%>js/jquery-1.8.0.js"></script>
    <script src="<%=basePath%>js/jquery.min.js"></script>
   <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<title>整租</title>
	<script type="text/javascript">
		$(document).ready(function() {
		//动态选中复选框：先断是否记住密码了
			//$("input[type='checkbox'][value='rememberpwd']").attr("checked",true).checkboxradio("refresh");
			$("#houseNameid").prepend("<option value='请选择'>请选择小区</option>"); // 2.为Select插入一个Option(第一个位置) 
			$("#houseNameid").append("<option value='wjxqid'>望江小区</option>");
			$("#houseNameid").append("<option value='qnid'>青年小区</option>");
			$("#houseNameid").append("<option value='snid'>蜀南庭院</option>");
			$("#houseNameid").append("<option value='hdid'>河地蓝湾小区</option>");
			$("#houseNameid").append("<option value='xhid'>新华国际首府</option>");
			
			$("#hosueAreaid").prepend("<option value='请选择'>请选择区域</option>"); // 2.为Select插入一个Option(第一个位置) 
			
			$.ajax( {
				type : "POST",
				url : "queryHouseAreabz.do",
				data : {
					"paramValue" : "paramValue",
				},
				dataTapy : "jsonObj",
				success : function(msg) {
					if (!msg.success) {
						return;
					}
					for(var i=0;i<msg.data.length;i++){
						var sid=msg.data[i].sid;
						var name=msg.data[i].name;
						$("#hosueAreaid").append("<option value='"+sid+"'>"+name+"</option>");
					}
				}
			});
			
		});
		
		function submitbutton(){
			alert($("#form").serialize());
			
			$.ajax({
				   type: "POST",
				   url: "queryHouse123.do",
				   data:  $("#form").serialize(),
				   dataTapy : "jsonObj",
				   success: function(msg){
				     alert( "Data Saved: " + msg );
				     debugger;
				   }
			});
		}
		
	</script>
</head>
<!-- style="overflow:scroll;overflow-x:hidden" 禁用横向滚动条-->
<body >
	<form id="form" role="form" class="form-horizontal">
		<div class="form-group">
			<div class="text-center">
				<img src="addmap.png" class="img-rounded">
			</div>
		</div>
		<div class="form-group">
	      <label for="houseName" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">小区名称:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block;padding-left:0px;padding-right: 5px;">
		      <select id="houseNameid" name="houseName" class="form-control" style="width: 100%;" onclick="chclick()">
		         
		      </select>
	      </div>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseArea" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;域:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block;padding-left:0px;padding-right: 5px">
		      <select id="hosueAreaid" name="houseArea" class="form-control" style="width: 100%;">
		      
		      </select>
	      </div>
   		</div>
   		
   		<div class="form-group">
	      <label for="address" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<input type="text" name="address" class="form-control" id="name" placeholder="请输入小区地址">
	      </div>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseHold" style="width:30%; display: inline-block; text-align: right;"  class="col-sm-2 control-label">户&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型:</label>
	      <div class="col-sm-10" style="width:14%; display: inline-block;padding-left:0px;padding-right: 5px">
		      <input type="text" name="houseHold" class="form-control" id="roomid">
	      </div>
	      <label for="houseRoom" style="width:5%; color: #999999 ;padding-left:5px;padding-right: 5px" class="col-sm-2 control-label">室</label>
	      <div class="col-sm-10" style="width:14%; display: inline-block;padding-left:0px;padding-right: 0px">
		      <input type="text" name="houseRoom" class="form-control" id="hallid">
	      </div>
	      <label for="houseHall" style="width:5%; color: #999999 ;padding-left:5px;padding-right: 5px" class="col-sm-2 control-label">厅</label>
	      <div class="col-sm-10" style="width:14%; display: inline-block; padding-left:0px;padding-right: 0px">
		      <input type="text" name="houseHall" class="form-control" id="toiletid">
	      </div>
	      <label for="houseToilet" style="width:5%; color: #999999 ;padding-left:5px;padding-right: 5px" class="col-sm-2 control-label">卫</label>
   		</div>
   		<div class="form-group">
	      <label for="houseFloor" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">楼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;层:</label>
	      <div class="col-sm-10" style="width:40%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<input type="text" name="houseFloor" class="form-control" id="floorid">
	      </div>
	      <label for="houseFloor1" style="width:20%; display: inline-block; text-align: left; color: #999999 ;padding-left:0px;padding-right: 0px;" class="col-sm-2 control-label">层</label>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseAreaMj" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">面&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;积:</label>
	      <div class="col-sm-10" style="width:40%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<input type="text" name="houseAreaMj" class="form-control" id="areamjid">
	      </div>
	      <label for="houseAreaMj1" style="width:20%; display: inline-block; text-align: left; color: #999999 ;padding-left:0px;padding-right: 0px;" class="col-sm-2 control-label">平米</label>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseRent" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">租&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金:</label>
	      <div class="col-sm-10" style="width:40%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<input type="text" name="houseRent" class="form-control" id="rentid">
	      </div>
	      <label for="houseRent" style="width:20%; display: inline-block; text-align: left;color: #999999 ;" class="col-sm-2 control-label">元/月</label>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseLinkman" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">联&nbsp;&nbsp;系&nbsp;&nbsp;人:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<input type="text" name="houseLinkman" class="form-control" id="linkmanid" placeholder="至少2字">
	      </div>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseLinkman" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">手&nbsp;&nbsp;机&nbsp;&nbsp;号:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<input type="text"  name="mobile" class="form-control" id="linkmanid">
	      </div>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseTitle" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<input type="text" name="houseTitle" class="form-control" id="titleid" placeholder="20字以内">
	      </div>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseDescribe" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block; padding-left:0px;padding-right: 5px ;">
	      	<textarea class="form-control" name="houseDescribe" rows="3" placeholder="交通配套设施等"></textarea>
	      </div>
   		</div>
   		
   		<div class="form-group">
	      <label for="houseIssueType" style="width:30%; display: inline-block; text-align: right;" class="col-sm-2 control-label">身&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;份:</label>
	      <div class="col-sm-10" style="width:65%; display: inline-block;padding-left:0px;padding-right: 5px">
	      	<label class="checkbox-inline">
	      		<input type="radio" name="optionsRadiosinline" id="personalid" checked="checked">个人
	      	</label>
	      	<label class="checkbox-inline">
	      		<input type="radio" name="optionsRadiosinline" id="economypersonid">中介
	      	</label>
	      </div>
   		</div>
   		
   		<div class="form-group" align="right"  style="padding-right: 3px">
	      <div class="col-sm-offset-2 col-sm-10">
	         <input type="button" name="iuess" value="发布" class="btn btn-default" onclick="submitbutton()">
	      </div>
   		</div>
	</form>
	
</body>
</html>