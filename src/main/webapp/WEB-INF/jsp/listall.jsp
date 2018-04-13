<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>信息展示</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="renderer" content="webkit">
		<link rel="stylesheet" href="../css/qblue_css.css" />
		<link rel="stylesheet" href="../css/Site_Css.css" />
		<link rel="stylesheet" href="../css/jquery.datetimepicker.css" />
	</head>

	<body>
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
			<tr>
				<td>
					<table border='0' cellpadding='0' cellspacing='0' width="98%" style="margin-left:2px;margin-right:2px;" align='center'>
						<tr>
							<td height='27px' style="border-bottom:3px solid #000000;"><b>當前位置：</b>產品設計改善報告 >检讨信息展示</td>
							<td align='right' style="">
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td height='5px' colspan='2'></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table cellspacing="5" cellpadding="5" width='100%' align="center" border="0" style="border:solid 1px #a9c9ee;">
						<tr>
							<td>
								<form action="/npi.test/LIST_DoListServlet" name="form1" id="form1" method="post" class="form-inline">
									<table cellspacing="0" cellpadding="0" width='100%' align="center" border="0" style="border:solid 1px #a9c9ee;">
										<tbody>
											<tr style="height: 40px; width: 60%;height:30px;">
												<td style="width:10%; text-align:right;border-bottom:solid 1px #a9c9ee;">
													<label for="InputkehuName">客户名称:</label>
												</td>
												<td style="width:10%; text-align:left;border-bottom:solid 1px #a9c9ee;">
													<input type="text" id="InputkehuName" name="cusname" >
												</td>
												<td style="width:10%; text-align:right;border-bottom:solid 1px #a9c9ee;">
													<label for="Inputproname">专案名称:</label>
												</td>
												<td style="width:10%; text-align:left;border-bottom:solid 1px #a9c9ee;">
													<input type="text" id="InputzhuananName" name="proname">
												</td>
											</tr>
											<tr style="height:30px; background-color:#e3ecfc;text-align: center;">
												<td colspan="4">
													<input type="submit" value=" 查询 " class="button_bak"/>
												</td>
											</tr>
										</tbody>
									</table>
								</form>
								<table>
									<tbody>
										<tr><td style="font-family:"微软雅黑";font-size:36px;"> ${msg} </td></tr>
									</tbody>
								</table>
								<table class="dgdatagridStyle" cellspacing="0" id="msgtable" rules="all" border="1" style="width:100%;font-family: '微软雅黑'; border-collapse:collapse;">
									<thead>
										<c:forEach items="${zhuananxinxilist}" var="item" varStatus="status">
											<tr>
												<th class="dgdatagridTdNewStyle" colspan="27" rowspan="1" style="text-align:center;">
													<h2 style="font-family: '微软雅黑';height: 40px; font-size: 30px;">设计改善报告</h2>
												</th>
											</tr>

											<tr>
												<th class="dgdatagridTdNewStyle" colspan="27" style="text-align: left;">
													<input type="radio" id="flag1" value="EV">EV &nbsp;&nbsp;&nbsp;
													<input type="radio" id="flag2" value="DV">DV &nbsp;&nbsp;&nbsp;
													<input type="radio" id="flag3" value="PV">PV &nbsp;&nbsp;&nbsp;
													<input type="radio" id="flag4" value="MP">MP &nbsp;&nbsp;&nbsp;
												</th>
												<script>
														var a="${item.stage0}"; 
													   var c=a.split(","); 
													   for(var i=1;i<=4;i++) 
													   { 
													    var flag=document.getElementById("flag"+i).value; 
													    for(var j=0;j<c.length;j++) 
													    { 
													     if(c[j]==flag) 
													     { 
													      document.getElementById("flag"+i).checked=true; 
													     } 
													    } 
											   } 
											</script>
											</tr>
											<tr>
												<th class="dgdatagridTdNewStyle" colspan="3">客户名称</th>
												<th class="dgdatagridTdNewStyle" colspan="3">${item.cusname}</th>
												<th class="dgdatagridTdNewStyle" colspan="3">专案名称</th>
												<th class="dgdatagridTdNewStyle" colspan="3">${item.proname}</th>
												<th class="dgdatagridTdNewStyle" colspan="3">机种代码</th>
												<th class="dgdatagridTdNewStyle" colspan="3">${item.modeltype}</th>
												<th class="dgdatagridTdNewStyle" colspan="3">试产日期</th>
												<th class="dgdatagridTdNewStyle" colspan="2">${item.stage}&nbsp;&nbsp;${item.trydate}</th>
												<th class="dgdatagridTdNewStyle" colspan="2">试产时间</th>
												<th class="dgdatagridTdNewStyle" colspan="2">${item.trytime}</th>
											</tr>
											<tr>
												<th class="dgdatagridTdNewStyle" colspan="3">生产班别</th>
												<th class="dgdatagridTdNewStyle" colspan="3">${item.team}</th>
												<th class="dgdatagridTdNewStyle" colspan="3">试产地点</th>
												<th class="dgdatagridTdNewStyle" colspan="3">${item.trialsite}</th>
												<th class="dgdatagridTdNewStyle" colspan="3">投入数量</th>
												<th class="dgdatagridTdNewStyle" colspan="3">${item.number}</th>
												<th class="dgdatagridTdNewStyle" colspan="3">良品数量</th>
												<th class="dgdatagridTdNewStyle" colspan="2">${item.goodnumber}</th>
												<th class="dgdatagridTdNewStyle" colspan="2">直通率</th>
												<th class="dgdatagridTdNewStyle" colspan="2">${item.goodrate}</th>
											</tr>
										</c:forEach>
									
									<tr>
										<th class="dgdatagridTdNewStyle" colspan="1">检讨项目</th>
										<th class="dgdatagridTdNewStyle" colspan="1">序号</th>
										<th class="dgdatagridTdNewStyle" colspan="4">不良问题点(潜在隐患)</th>
										<th class="dgdatagridTdNewStyle" colspan="1">不良数</th>
										<th class="dgdatagridTdNewStyle" colspan="1">缺陷等级</th>
										<th class="dgdatagridTdNewStyle" colspan="4">原因分析</th>
										<th class="dgdatagridTdNewStyle" colspan="4">改善对策</th>
										<th class="dgdatagridTdNewStyle" colspan="2">提出人</th>
										<th class="dgdatagridTdNewStyle" colspan="2">责任人</th>
										<th class="dgdatagridTdNewStyle" colspan="2">计划时间</th>
										<th class="dgdatagridTdNewStyle" colspan="2">完成时间</th>
										<th class="dgdatagridTdNewStyle" colspan="2">效果确认</th>
										<th class="dgdatagridTdNewStyle" colspan="2">成本影响</th>
									</tr>
									</thead>
									<tbody>
										<tr>
											<td class="dgdatagridTdNewStyle" rowspan="${shejifangmiancount}">设计方面 </td>
											<td class="dgdatagridTdNewStyle" colspan="27">机构部分</td>
										</tr>
										<!-- 详细信息 -->
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${shejijigousoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>
										<c:forEach items="${shejijigouwoofer}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">电子部分</td>
										</tr>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${shejidianzisoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>
										<c:forEach items="${shejidianziwoofer}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">喇叭部分</td>
										</tr>
										<c:forEach items="${shejilabasoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">包装部分</td>
										</tr>

										<c:forEach items="${shejibaozhuangsoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">其他部分</td>
										</tr>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${shejiothersoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>
										<c:forEach items="${shejiotherwoofer}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" rowspan="${ruanjianfangmiancount}">软件方面</td>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${ruanjiansoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>
										<c:forEach items="${ruanjianwoofer}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" rowspan="${gongyifangmiancount}">工艺方面</td>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${gongyisoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle"="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>

										<c:forEach items="${gongyiwoofer}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" rowspan="${zuoyefangmiancount}">作业方面</td>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${zuoyesoundbar}" var="item" varStatus="status">

											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>
										<c:forEach items="${zuoyewoofer}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" rowspan="${lailiaofangmiancount}">来料方面</td>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${lailiaosoundbar}" var="item" varStatus="status">

											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>
										<c:forEach items="${lailiaowoofer}" var="item" varStatus="status">

											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" rowspan="${kehufangmiancount}">客户方面</td>
											<td class="dgdatagridTdNewStyle" colspan="27">SOUNDBAR</td>
										</tr>
										<c:forEach items="${kehusoundbar}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" colspan="27">WOOFER</td>
										</tr>
										<c:forEach items="${kehuwoofer}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
										<tr>
											<td class="dgdatagridTdNewStyle" rowspan="${otherfangmiancount}">其他方面</td>
											<td class="dgdatagridTdNewStyle" colspan="27">其他方面</td>
										</tr>
										<c:forEach items="${othsoundbarlist}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle" colspan="1">${status.index+1}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.problems}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.ng}</td>
												<td class="dgdatagridTdNewStyle" colspan="1">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle" colspan="4">${item.measures}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.head}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle" colspan="2">${item.affect}</td>
											</tr>
										</c:forEach>
							</tbody>
							</table>
					</td>
			</tr>
		</table>
	</table>
	<script src="../js/jquery.js"></script>
	</body>
</html>
