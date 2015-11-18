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
	<title>二手房出售</title>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#backid").click(function(){
				alert(1111);
				wondow.history.back();
			});
		});
		
	</script>
</head>
<body >
		<div >
		<div id="myexample0" class="container" style="position:relative; height:60px; z-index: 9999">
				<div style="height:35px;" >
					<div id="backid" style="width:20% ;float: left;text-align: left;margin-top: 5px;">
						<img src="tb.png" height="25px" class="img-rounded">
					</div>
					<div style="width:45% ;text-align: center; float: left; "><h4>二手房出售</h4></div>
					<div style="width:30% ;text-align: right;float: left;margin-top: 8px">发布</div>
				</div>
				<hr style="width:1;border:1 dashed lime;position:relative;height:1px;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
				<ul class="nav navbar-nav" style="display: inline-block;width: 100%;margin-top: 1px;margin-bottom: 1px">
					<li class="dropdown" style="display: inline-block;width: 24%;position:absolute;left:0;"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="color: #FA6E10">区域</span><b class="caret"></b></a>
			           <ul class="dropdown-menu" style="background-color: #FA6E10;">
			              <li ><a  href="#">全亳州</a></li>
			              <li class="divider" ></li>
			              <li ><a href="#">蒙城</a></li>
			              <li class="divider" ></li>
			              <li ><a href="#">利辛</a></li>
			              <li class="divider"></li>
			              <li ><a href="#">谯城</a></li>
			              <li class="divider" ></li>
			              <li ><a href="#">涡阳</a></li>
			           </ul>
				    </li>
				    <li class="dropdown" style="display: inline-block;width: 24%;position:absolute;left:24%;"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="color: #FA6E10">总价</span><b class="caret"></b></a>
			           <ul class="dropdown-menu" style="background-color: #FA6E10">
			              <li><a href="#">不限</a></li>
			              <li class="divider"></li>
			              <li><a href="#">20万以下</a></li>
			              <li class="divider"></li>
			              <li><a href="#">20-40万</a></li>
			              <li class="divider"></li>
			              <li><a href="#">40-60万</a></li>
			              <li class="divider"></li>
			              <li><a href="#">60-80万</a></li>
			              <li class="divider"></li>
			              <li><a href="#">80-100万</a></li>
			              <li class="divider"></li>
			              <li><a href="#">100-150万</a></li>
			              <li class="divider"></li>
			              <li><a href="#">150万以上</a></li>
			           </ul>
				    </li>
				    <li class="dropdown" style="display: inline-block;width: 24%;position:absolute;right:24%;"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="color: #FA6E10">厅室</span><b class="caret"></b></a>
			           <ul class="dropdown-menu" style="background-color: #FA6E10">
			              <li><a href="#">不限</a></li>
			              <li class="divider"></li>
			              <li><a href="#">一室</a></li>
			              <li class="divider"></li>
			              <li><a href="#">二室</a></li>
			              <li class="divider"></li>
			              <li><a href="#">三室</a></li>
			              <li class="divider"></li>
			              <li><a href="#">四室及以上</a></li>
			           </ul>
				    </li>
				    <li class="dropdown" style="display: inline-block;width: 24%;position:absolute;right:0;"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span style="color: #FA6E10">更多</span><b class="caret"></b></a>
			           <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dLabel" style="width: 100%;background-color: #FA6E10">
				          <li><a href="#">...</a></li>
			           </ul>
				    </li>
				</ul>
			</div>
		</div>
		
		<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:500;color: #999999" >
		
	 	<div class="container" style="position:absolute; padding-top:1px; padding-left: 15px ;">
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>谯城万达33楼44室1厅1卫125.5</h4></div>
					<div style="color: #999999"><h6>万达33楼4室1厅</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>50万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>今天</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>腾龙河畔2室1厅1卫95平米</h4></div>
					<div style="color: #999999"><h6>腾龙河畔-2室1厅1卫-精装</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>26万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>今天</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>新兴路精装4室2厅2卫155平米</h4></div>
					<div style="color: #999999"><h6>新兴路 六楼-4室2厅2卫</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>53万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>2015-11-18</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>青年公寓1室1厅1卫50平米</h4></div>
					<div style="color: #999999"><h6>青年公寓-1室1厅-精装</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>15万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>2015-11-18</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>新兴路精装4室2厅2卫155平米</h4></div>
					<div style="color: #999999"><h6>新兴路 六楼-4室2厅2卫</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>53万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>2015-11-18</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>新兴路精装4室2厅2卫155平米</h4></div>
					<div style="color: #999999"><h6>新兴路 六楼-4室2厅2卫</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>53万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>2015-11-18</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>新兴路精装4室2厅2卫155平米</h4></div>
					<div style="color: #999999"><h6>新兴路 六楼-4室2厅2卫</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>53万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>2015-11-18</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>新兴路精装4室2厅2卫155平米</h4></div>
					<div style="color: #999999"><h6>新兴路 六楼-4室2厅2卫</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>53万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>2015-11-18</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		<div class="row">
				<div class="col-xs-2" style="width:35% ">
					<img src="testbg1.png" class="img-rounded">
				</div>
				<div class="col-xs-4" style="width:60%">
					<div ><h4>新兴路精装4室2厅2卫155平米</h4></div>
					<div style="color: #999999"><h6>新兴路 六楼-4室2厅2卫</h6></div>
					<div style="color: red ;">
						<div style="width: 40%;float: left;"><h5>53万</h5></div >
						<div style="width: 50%;float: left;text-align: right;"><h6>2015-11-18</h6></div>
					</div>
				</div>
			</div>
			<hr style="width:1;border:1 dashed lime;height:1px;position:relative;top:0px;left:100;color: #999999;margin-top: 5px;margin-bottom: 5px" >
	 		
		</div>
	
	
</body>
</html>