<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>添加检讨信息</title>
	    <link rel="stylesheet" href="../css/qblue_css.css" />
	    <link rel="stylesheet" href="../css/Site_Css.css" />
	    <link rel="stylesheet" href="../css/jquery.datetimepicker.css"/>
	</head>
	<body bgcolor="#FFFFFF" topmargin="5">
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
			<tr>
				<td>
					<table border='0' cellpadding='0' cellspacing='0' width='100%' align='center'>
						<tr>
							<td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 检讨信息添加</td>
							<td class='menubarAA_menu_td' align='right'>
								<font color="red"></font>
							</td>
						</tr>
					</table>
					<div style="height: 5px;"></div>
					<form action="/npi/msgs/export_jiantaoxinxi.do"  method="post">
						<table cellspacing="5" cellpadding="5" width='100%' align="center" border="0" style="border:solid 1px #a9c9ee;">
							<tr><td>
									<c:forEach items="${headlist}" var="item" varStatus="status">
										<table cellspacing="0" cellpadding="0" style="width: 100%; border: solid 1px #a9c9ee" cellpadding="0" cellspacing="0">
											<tr style="height:30px; background-color:#e3ecfc">
												<td style="width:10%; text-align:right;border-bottom:solid 1px #a9c9ee;">
													阶段：</td>
												<td style="width:30%;border-bottom:solid 1px #a9c9ee;">
													${item.stage0}>>${item.stage}</td>
												<td style="width:13%;text-align:right;border-bottom:solid 1px #a9c9ee;">专案名称：</td>
												<td style="width:30%;border-bottom:solid 1px #a9c9ee;">${item.proname}</td>
											</tr>
											<tr style="height:30px;">
												<td style="text-align:right;">机种代码：</td>
												<td>${item.modeltype}</td>
												<td style="text-align:right;">试产时间：	</td>
												<td>${item.trytime}</td>
											</tr>
											<tr style="height:30px;background-color:#e3ecfc">
												<td style="text-align:right;border-bottom:solid 1px #a9c9ee;">生产班别：</td>
												<td style="border-bottom:solid 1px #a9c9ee;">${item.team}</td>
												<td style="text-align:right;border-bottom:solid 1px #a9c9ee;">客户名称：</td>
												<td style="border-bottom:solid 1px #a9c9ee;">${item.cusname}</td>
											</tr>
											<tr style="height:30px;">
												<td style="text-align:right;">试产地点：</td>
												<td >${item.trialsite}</td>
												<td style="text-align:right;">投入数量：	</td>
												<td>${item.number}</td>
											</tr>
											<tr style="height:30px;background-color:#e3ecfc">
												<td style="text-align:right;">良品数量：</td>
												<td >${item.goodnumber}</td>
												<td style="text-align:right;">良率:</td>
												<td>${item.goodrate}</td>
											</tr>
										</table>
									</c:forEach>
								</td>
							</tr>
							<tr>
								<td><input type="submit" class="button_bak" value="导出"> </td>
							</tr>
							<tr>
								<td>
									<table class="dgdatagridStyle" cellspacing="0" id="msgtable" rules="all" border="1" style="width:100%;border-collapse:collapse;">
										<thead>
											<tr>
												<th class="dgdatagridThNewStyle"><input type="checkbox" name="checkall" id="checkall"></th>
												<th class="dgdatagridThNewStyle" colspan="3">检讨项目</th>
												<th class="dgdatagridThNewStyle">不良问题点</th>	
												<th class="dgdatagridThNewStyle">不良数</th>
												<th class="dgdatagridThNewStyle">缺陷等级</th>
												<th class="dgdatagridThNewStyle">提出人</th>
												<th class="dgdatagridThNewStyle">责任人</th>
												<th class="dgdatagridThNewStyle">计划时间</th>	
												<th class="dgdatagridThNewStyle">原因分析</th>
												<th class="dgdatagridThNewStyle">改善对策</th>
												<th class="dgdatagridThStyle">完成时间</th>
												<th class="dgdatagridThStyle">效果确认</th>
												<th class="dgdatagridThStyle">成本影响</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${msgslist}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle">
													<input type="checkbox" name="id" class="check" value="${item.id}"></td>
												<td class="dgdatagridTdNewStyle">${item.insproject}</td>
												<td class="dgdatagridTdNewStyle">${item.item}</td>
												<td class="dgdatagridTdNewStyle">${item.items}</td>
												<td class="dgdatagridTdNewStyle">${item.problems}
												<br/><img src="images/${item.filenamea}" width="100" height="100" /></td>
												<td class="dgdatagridTdNewStyle">${item.ng}</td>
												<td class="dgdatagridTdNewStyle">${item.defectlevels}</td>
												<td class="dgdatagridTdNewStyle">${item.exhibitor}</td>
												<td class="dgdatagridTdNewStyle">${item.head}</td>
												<td class="dgdatagridTdNewStyle">${item.plantime}</td>
												<td class="dgdatagridTdNewStyle">${item.reasons}</td>
												<td class="dgdatagridTdNewStyle">${item.measures}</td>
												<td class="dgdatagridTdNewStyle">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle">${item.confirm}</td>
												<td class="dgdatagridTdNewStyle">${item.affect}</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</td>
							</tr>
						</table>
							</form>
				</td>
			</tr>
		</table>
<script src="../js/jquery.js"></script>
<script src="../js/jquery.datetimepicker.full.js"></script>
<script>
	$(document).ready(function(){
			//实现全选与反选  
			$("#checkall").click(function(){
				if(this.checked) {
					$(".check").each(function() {
						$(this).attr("checked", true);
					});
				} else {
					$(".check").each(function() {
						$(this).attr("checked", false);
					});
				}
			});
			});
</script>
</body>
</html>
