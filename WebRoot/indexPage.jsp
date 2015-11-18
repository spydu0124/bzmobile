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
	<!-- JavaScript 放置在文档最后面可以使页面加载速度更快 #FA6E10-->
	<script src="<%=basePath%>js/jquery-1.8.0.js"></script>
    <script src="<%=basePath%>js/jquery.min.js"></script>
   <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<title>租房</title>
	<style type="text/css">
		.hover{ background-color:#EFEFEF; color:#000;}  
		.click{ background-color:#FA6E10; color:#FFF;}  
		#red{
			display:block;
			float:left;
			position:absolute;
			width:336px;
			height:336px;
			background-color:#ff0000;filter:progid:DXImageTransform.microsoft.gradient(gradienttype=1,startColorStr=white,endColorStr=deeppink);
			}
	</style>
	
</head>
<!-- style="overflow:scroll;overflow-x:hidden" 禁用横向滚动条-->
<body >
	<div >
		<div style="height:85px; background-color: #DE3031">
			<div style="width:30% ;height:100%;float: left;text-align: left;padding-left:10%;padding-top:30px;">
				<img src="<%=basePath%>image/user.png" height="25px" class="img-rounded">
			</div>
			<div style="width:65% ;height:100%;text-align: center;padding-top:30px; float: left;"><span style="text-align: center; color: white" >点击登录<span style="float:right; padding-right: 10%;"><img src="<%=basePath%>image/small_more.png" height="20px" class="img-rounded"></span></span></div>
		</div>
		
		<div>
			
			<ul id="listGroupid" class="list-group">
			   <li class="list-group-item" id="listGG1" onclick="abc123() " onmouseover="abc111()"><img src="<%=basePath%>image/index_1.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">首页</span> <span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item" ><img src="<%=basePath%>image/iusse.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">发布</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item"><img src="<%=basePath%>image/2sh.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">租房</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item"><img src="<%=basePath%>image/2sh.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">二手房</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item"><img src="<%=basePath%>image/2sh.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">看房团</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item"><img src="<%=basePath%>image/zyh_1.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">找优惠</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item"><img src="<%=basePath%>image/gfzn.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">购房指南</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item"><img src="<%=basePath%>image/jsq.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">计算器</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			   <li class="list-group-item">
			      <span class="badge">3</span>
			     <img src="<%=basePath%>image/gfzn.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">消息</span>
			   </li>
			   <li class="list-group-item"><img src="<%=basePath%>image/set.png" height="22px" class="img-rounded" ><span style="padding-left: 10px">设置</span><span style="float:right; padding-right: 1%;"><img src="<%=basePath%>image/more_bg.png" height="20px" class="img-rounded" ></span></li>
			</ul>
		</div>
		
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		
		
		$("#listGroupid li").mousedown(
				function(){
					$(this).addClass("click");
				}).mouseup(function(){
					$(this).removeClass("click");
				});
		$("#listGroupid li").hover(function(){
			$(this).addClass("hover");
		},function(){
			$(this).removeClass("hover");
		});
		$("#listGroupid li").click(
				function(){
					window.location.href="<%=basePath%>queryHouseTwoIndex.jsp?backurl="+window.location.href;
				});
	</script>
</body>
</html>