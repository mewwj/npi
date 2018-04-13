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
	   <link rel="stylesheet" href="../css/jquery.datetimepicker.css"/>
	</head>

	<body bgcolor="#FFFFFF" topmargin="5">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
		<td><h4>${msg}</h4></td>
		</tr>
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
													<form name="form1" action="/npi/head/insert_head.do">
													<table style="width: 100%; border: solid 1px #a9c9ee" cellpadding="0" cellspacing="0">
													<tr style="height:30px;">
														<td style="text-align: right;">客户名称：</td>
														<td style="text-align: left;"><input type="text" name="cusname" id="InputCusname"></td>
														<td style="text-align: right;">专案名称：</td>
														<td style="text-align: left;"><input type="text" name="proname"  id="InputProname"></td>
													</tr>
													<tr style="height:30px;background-color:#e3ecfc">
														<td style="text-align: right;">选择阶段：</td>
														<td style="text-align: left;">
															<select name="stage0" id="province"    onchange="changeSelect(this.selectedIndex)">
																<option selected  disabled="disabled" >-- 请选择 --</option>
															</select>
															<select name="stage" id="stage" >
															    <option selected  disabled="disabled" >-- 请选择 --</option>
															</select>
														</td>
														<td style="text-align: right;">机种代码：</td>
														<td style="text-align: left;"><input type="text" name="modeltype"  id="InputModel"></td>
													</tr>
													<tr style="height:30px;">
														<td style="text-align: right;">试产日期：</td>
														<td style="text-align: left;"><input  type="text" id="trydate" name="trydate" class="form_datetime trydate" ></td>
														<td style="text-align: right;">试产时间：</td>
														<td style="text-align: left;"><input type="text"  id="trytime" name="trytime"  class=" form_datetime trytime" ></td>
													</tr>
													<tr style="height:30px;background-color:#e3ecfc">
														<td style="text-align: right;">生产班别：</td>
														<td style="text-align: left;"><input type="text"  id="team" name="team"  ></td>
														<td style="text-align: right;">试产地点：</td>
														<td style="text-align: left;"><input type="text"  id="trialsite" name="trialsite"  ></td>
													</tr>
													<tr style="height:30px;">
														<td style="text-align: right;">投入数量：</td>
														<td style="text-align: left;"><input type="text"  id="number" name="number"></td>
														<td style="text-align: right;">良品数量：</td>
														<td style="text-align: left;"><input type="text"  id="goodnumber" name="goodnumber" ></td>
													</tr>
													<tr style="height:30px;background-color:#e3ecfc">
														<td style="text-align: center;" colspan="4">
															<button type="submit" class="text_input_button">提交</button>
															<button type="reset" class="button">重置</button>
															<a href="/npi/head/select_all.do" class="button" >返回</a>         
														</td>
													</tr>
													</table>
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
        <script src="../js/jquery.datetimepicker.full.js"></script>
		<script>
		jQuery(document).ready(function(){
				'use strict';
                jQuery('.trydate').datetimepicker({
                	format: 'Y/m/d', timepicker: false 
                });
                jQuery('.trytime').datetimepicker({
                	datepicker:false,
                	format:'H:i',
                	step:5
                });
              });    
		 var arr_province = ["--请选择--","EV","DV","PV","MP"];
		 var arr_stage = [
		 				 ["--请选择--"],
		                 ["--请选择--","EV1","EV2","EV3","EV4","EV5","EV6"],
		                 ["--请选择--","DV1","DV2","DV3","DV4","DV5","DV6"],
		                 ["--请选择--","PV1","PV2","PV3","PV4","PV5","PV6"],
		                 ["--请选择--","MP1"]
		             ];
		 //网页加载  完成，初始化菜单
		 window.onload = init;//传入函数地址
		 function init(){
		     //首先获取对象
		     var province = document.form1.province;
		     var stage = document.form1.stage;
		     //指定省份中<option>标记的个数
		     province.length = arr_province.length;
		     //循环将数组中的数据写入<option>标记中
		     for(var i=0;i<arr_province.length;i++){
		         province.options[i].text = arr_province[i];
		         province.options[i].value = arr_province[i];
		     }
		     //修改省份列表的默认选择项
		     var index = 0;
		     province.selectedIndex = index;
		     //指定城市中<option>标记的个数
		     stage.length = arr_stage[index].length;
		     //循环将数组中的数据写入<option>标记中
		     for (var j = 0; j<arr_stage[index].length;j++) {
		     	stage.options[j].text = arr_stage[index][j];
		     	stage.options[j].value = arr_stage[index][j];
		     }
		 }
		 function  changeSelect(index){
		     //选择对象
		     var stage = document.form1.stage;
		      var province = document.form1.province;
		     //修改省份列表的选择项
		     province.selectedIndex = index;
		     //指定城市中<option>标记的个数
		     stage.length = arr_stage[index].length;
		     //循环将数组中的数据写入<option>标记中
		     for (var j = 0; j<arr_stage[index].length;j++) {
		     	stage.options[j].text = arr_stage[index][j];
		     	stage.options[j].value = arr_stage[index][j];
		     }
		 }
</script>
		</body>
		</html>