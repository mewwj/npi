<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>信息展示</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="../css/qblue_css.css" />
	    <link rel="stylesheet" href="../css/Site_Css.css" />
	    <link rel="stylesheet" href="../css/jquery.datetimepicker.css" />
	</head>

	<body bgcolor="#FFFFFF" topmargin="5">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td>
					<!-- 操作菜單　開始 -->
					<!-- 頭部菜單 Start -->
					<table border='0' cellpadding='0' cellspacing='0' width='100%' align='center'>
						<tr>
							<td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告 > 专案信息录入</td>
							<td class='menubarAA_menu_td' align='right'>
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td height='5px' colspan='2'></td>
						</tr>
					</table>
					<!-- 頭部菜單 End -->
					<!-- 操作菜單　結束 -->
					<!-- 內容開始 -->
					<!-- 選項卡 Start -->
					<table cellspacing="0" cellpadding="0" width='100%' align="center" border="0">
						<tbody>
							<tr>
								<td bgcolor="#ffffff">
									<table cellspacing="0" cellpadding="5" width='100%' border="0" style="border:solid 1px #a9c9ee;">
										<tbody>
											<tr>
												<td>
													<!-- 查詢內容顯示 開始 -->
													<form name="form1" action="/npi/msgs/update_msgby_id.do">
													<c:forEach items="${msgsList}" var="item" varStatus="status"> 
													<table style="width: 100%; border: solid 1px #a9c9ee" cellpadding="0" cellspacing="0">
													<tr style="height:30px;">
														<td style="text-align: right;">检讨项目：</td>
														<td style="text-align: left;" colspan="3">
														<select name="insproject" class="tex_input" style="border: solid red 1px;width: 120px;">
														<option value="${item.insproject}" selected>${item.insproject}</option>
														<option value="设计方面">设计方面</option>
														<option value="软件方面">软件方面</option>
														<option value="工艺方面">工艺方面</option>
														<option value="作业方面">作业方面</option>
														<option value="来料方面">来料方面</option>
														<option value="客户方面">客户方面</option>
														<option value="其他方面">其他方面</option>
														</select>
														<input type="text" name="id" value="${item.id }" style="width:0;border:none;"> 
														<input type="text" name="id" value="${item.headid }" style="width:0;border:none;"> 
														<select name="item" class="tex_input" style="border: solid red 1px; width: 120px;">
														<option value="${item.item}" selected>${item.item}</option>
														<option value="机构部分">机构部分</option>
														<option value="电子部分">电子部分</option>
														<option value="喇叭部分">喇叭部分</option>
														<option value="包装部分">包装部分</option>
														<option value="其他部分">其他部分</option>
														</select>
														<select name="items" class="tex_input" style="border: solid red 1px;width: 120px;">
														<option value="${item.items}" selected>${item.items}</option>
														<option value="SoundBar">SoundBar</option>
														<option value="WOOFER">WOOFER</option>
														<option value="耳机">耳机</option>
														<option value="智能语音音箱">智能语音音箱</option>
													</select>
														</td>
													</tr>
													<tr style="height:30px;background-color:#e3ecfc">
														<td style="text-align: right;">不良问题点：</td>
														<td style="text-align: left;"><input type="text" name="problems"   value="${item.problems}"></td>
														<td style="text-align: right;">不良数：</td>
														<td style="text-align: left;"><input type="text" name="ng"   value="${item.ng}"></td>
													</tr>
													<tr style="height:30px;">
														<td style="text-align: right;">缺陷等级：</td>
														<td style="text-align: left;">
														<select  name="defectlevels"   class="text_input" >
															<option value="${item.items}">${item.items}</option>
															<option value="A">A</option>
															<option value="B">B</option>
															<option value="C">C</option>
															<option value="REM 4">REM 4</option>
														</select>
														</td>
														<td style="text-align: right;">改善对策：</td>
														<td style="text-align: left;"><input type="text"   value="${item.trytime}" name="trytime"  class="trytime" ></td>
													</tr>
													<tr style="height:30px;background-color:#e3ecfc">
														<td style="text-align: right;">提出人：</td>
														<td style="text-align: left;"><input type="text"  name="exhibitor" value="${item.exhibitor }" ></td>
														<td style="text-align: right;">责任人：</td>
														<td style="text-align: left;"><input type="text"  name="head" value="${item.head }" ></td>
													</tr>
													<tr style="height:30px;">
														<td style="text-align: right;">计划时间：</td>
														<td style="text-align: left;"><input type="text"  class="plantime" name="plantime" value="${item.plantime }"></td>
														<td style="text-align: right;">完成时间：</td>
														<td style="text-align: left;"><input type="text"  class="finishtime" name="finishtime" value="${item.finishtime }"></td>
													</tr>
													<tr style="height:30px; background-color:#e3ecfc">
														<td style="text-align: right;">效果确认：</td>
														<td style="text-align: left;"><input type="text" name="confirm" value="${item.confirm }"></td>
														<td style="text-align: right;">成本影响：</td>
														<td style="text-align: left;"><input type="text" name="affect" value="${item.affect }"></td>
													</tr>
													<tr style="height:30px;">
														<td style="text-align: center;" colspan="4">
															<button type="submit" class="text_input_button">提交</button>
															<button type="reset" class="text_input_button">重置</button>
														</td>
													</tr>
													</table>
													</c:forEach>
													</form>
													<!-- 查詢內容顯示 結束 -->
													<!--內容框End-->
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
					<!--選項卡 End-->
					<!-- 內容結束 -->
				</td>
			</tr>
		</table>
		<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
		<script src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/jquery.datetimepicker.full.js" ></script>
<script >
		jQuery(document).ready(function(){
				'use strict';
                jQuery('.plantime').datetimepicker({
                	format: 'Y/m/d', timepicker: false 
                });
                jQuery('.finishtime').datetimepicker({
                	format: 'Y/m/d', timepicker: false 
                });
                jQuery('.trytime').datetimepicker({
                	datepicker:false,
                	format:'H:i',
                	step:5
                });
              }); 
</script>
		</body>
		</html>