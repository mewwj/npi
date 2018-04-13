<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>添加检讨信息</title>
	    <link rel="stylesheet" href="../css/qblue_css.css" />
	    <link rel="stylesheet" href="../css/Site_Css.css" />
	</head>
	<body bgcolor="#FFFFFF" topmargin="5">
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
			<tr>
				<td>
					<table border='0' cellpadding='0' cellspacing='0' width='100%' align='center'>
						<tr>
							<td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 效果确认</td>
							<td class='menubarAA_menu_td' align='right'>
								<font color="red"></font>
							</td>
						</tr>
					</table>
					<div style="height: 5px;"></div>
					<form action="/npi/msgs/insert_noconfirm.do"  method="post">
						<table cellspacing="5" cellpadding="5" width='100%' align="center" border="0" style="border:solid 1px #a9c9ee;">
							<tr>
								<td style="background-color:#178FE5;">
									<h2 style="margin-left:10px;font-family:Microsoft YaHei;">进行效果确认</h2>
								</td>
							</tr>
							<tr>
								<td><input type="submit" class="button_bak" value="提交"> </td>
							</tr>
							<tr>
								<td>
									<table class="dgdatagridStyle" cellspacing="0" id="msgtable" rules="all" border="1" style="width:100%;border-collapse:collapse;">
										<thead>
											<tr>
												<th class="dgdatagridTdNewStyle">序号</th>
												<th class="dgdatagridTdNewStyle" colspan="3">项目</th>
												<th class="dgdatagridTdNewStyle">不良问题点</th>	
												<th class="dgdatagridTdNewStyle">不良数</th>
												<th class="dgdatagridTdNewStyle">缺陷等级</th>
												<th class="dgdatagridTdNewStyle">提出人</th>
												<th class="dgdatagridTdNewStyle">责任人</th>
												<th class="dgdatagridTdNewStyle">计划时间</th>	
												<th class="dgdatagridTdNewStyle">原因分析</th>
												<th class="dgdatagridTdNewStyle">改善对策</th>
												<th class="dgdatagridTdNewStyle">完成时间</th>
												<th class="dgdatagridTdNewStyle">效果确认</th>
												<th class="dgdatagridTdNewStyle">成本影响</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${messagesList}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle">
													${status.index+1}
													<input value="${item.id}" name="id" style="width:0;border:none;">
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
												<td class="dgdatagridTdNewStyle"><input type="text" name="confirm" value="${item.confirm}"></td>
												<td class="dgdatagridTdNewStyle"><input type="text" name="affect" value="${item.affect}"></td>
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
</body>
</html>
