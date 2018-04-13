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
					<form action="/npi/msgs/insert_messages.do" method="post" name="form1" id="form1" enctype="multipart/form-data" class="dgdatagridStyle">
						<table cellspacing="5" cellpadding="5" width='100%' align="center" border="0" style="border:solid 1px #a9c9ee;">
							<tr>
								<td><h3 style="text-color:red">${msg}</h3><td>
							</tr>
							<tr>
								<td>
									<c:forEach items="${headlist}" var="item" varStatus="status">
										<table cellspacing="0" cellpadding="0" style="width: 100%; border: solid 1px #a9c9ee" cellpadding="0" cellspacing="0">
											<tr style="height:30px; background-color:#e3ecfc">
												<td style="width:10%; text-align:right;border-bottom:solid 1px #a9c9ee;">
													阶段：
												</td>
												<td style="width:30%;border-bottom:solid 1px #a9c9ee;">
													${item.stage0}>>${item.stage}
												</td>
												<td style="width:13%;text-align:right;border-bottom:solid 1px #a9c9ee;">
													专案名称：
												</td>
												<td style="width:30%;border-bottom:solid 1px #a9c9ee;">
													${item.proname}
													<input type="text" value="${item.id}" name="id" style="border: 0;width: 0;" />
												</td>
											</tr>

											<tr style="height:30px;">
												<td style="text-align:right;">
													机种代码：
												</td>
												<td>
													${item.modeltype}
												</td>
												<td style="text-align:right;">
													试产时间：
												</td>
												<td>
													${item.trytime}
												</td>

											</tr>
											<tr style="height:30px;background-color:#e3ecfc">
												<td style="text-align:right;border-bottom:solid 1px #a9c9ee;">
													生产班别：
												</td>
												<td style="border-bottom:solid 1px #a9c9ee;">
													${item.team}
												</td>
												<td style="text-align:right;border-bottom:solid 1px #a9c9ee;">
													客户名称：
												</td>
												<td style="border-bottom:solid 1px #a9c9ee;">
													${item.cusname}
												</td>

											</tr>
											<tr style="height:30px;">
												<td style="text-align:right;">
													试产地点：
												</td>
												<td >
													${item.trialsite}
												</td>
												<td style="text-align:right;">
													投入数量：
												</td>
												<td>
													${item.number}
												</td>

											</tr>
											<tr style="height:30px;background-color:#e3ecfc">
												<td style="text-align:right;">
													良品数量：
												</td>
												<td >
													${item.goodnumber}
												</td>
												<td style="text-align:right;">
													良率:
												</td>
												<td>
													${item.goodrate}
												</td>
											</tr>
										</table>
									</c:forEach>
								</td>
							</tr>
							<tr>
								<td>
									<table cellspacing="5" cellpadding="5" width='100%' align="center" border="0" style="border:solid 1px #a9c9ee;">
											<tr>
												<td style="width: 120px;">
													<input type="button"  name="addtable" class="button_bak" value="新增一行"></input>
												</td >
												<td style="width: 120px;">
													<input type="button" style="width:100"  name="deltable" class="button_bak" value="删除选中行"></input>
												</td>
												<td  style="width: 150px;">
													<select name="insproject" class="tex_input" style="border: solid red 1px;">
														<option value="" selected>--请选择--</option>
														<option value="设计方面">设计方面</option>
														<option value="软件方面">软件方面</option>
														<option value="工艺方面">工艺方面</option>
														<option value="作业方面">作业方面</option>
														<option value="来料方面">来料方面</option>
														<option value="客户方面">客户方面</option>
														<option value="其他方面">其他方面</option>
													</select>
												</td>
												<td style="width: 150px;">
													<select name="item" class="tex_input" style="border: solid red 1px;">
														<option value="" selected>--请选择--</option>
														<option value="机构部分">机构部分</option>
														<option value="电子部分">电子部分</option>
														<option value="喇叭部分">喇叭部分</option>
														<option value="包装部分">包装部分</option>
														<option value="其他部分">其他部分</option>
													</select>
												</td>
												<td style="width: 150px;">
													<select name="items" class="tex_input" style="border: solid red 1px;">
														<option value="" selected>--请选择--</option>
														<option value="SoundBar">SoundBar</option>
														<option value="WOOFER">WOOFER</option>
														<option value="耳机">耳机</option>
														<option value="智能语音音箱">智能语音音箱</option>
													</select>
												</td>
												<td >
													<input type="submit" class="button" value="提交"></input>
													<a href="/npi/head/select_all.do" class="button_bak">返回</a>
												</td>
											</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table class="dgdatagridStyle" cellspacing="0" id="msgtable" rules="all" border="1" style="width:100%;border-collapse:collapse;">
										<thead>
											<tr>
												<th class="dgdatagridThStyle" style="width: 30px;text-align: center;"><input type="checkbox" name="checkall"></th>
												<th class="dgdatagridThStyle">不良问题点</th>
												<th class="dgdatagridThStyle">图片</th>
												<th class="dgdatagridThStyle">不良数</th>
												<th class="dgdatagridThStyle">缺陷等级</th>
												<th class="dgdatagridThStyle">责任人</th>
												<th class="dgdatagridThStyle">计划时间</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="dgdatagridTdNewStyle" style="width: 30px;text-align: center;"><input type="checkbox" name="checkbox"></td>
												<td class="dgdatagridTdNewStyle"><input type="text" name="problems"   class="text_input"/></td>
												<td class="dgdatagridTdNewStyle"><input id="pic" name="pic" type="file"  class="text_input" /></td>
												<td class="dgdatagridTdNewStyle"><input type="text" name="ng"  class="text_input"></td>
												<td class="dgdatagridTdNewStyle">
													<select  name="defectlevels"   class="text_input" >
														<option value="">--请选择--</option>
														<option value="A">A</option>
														<option value="B">B</option>
														<option value="C">C</option>
														<option value="REM 4">REM 4</option>
														</select>
												</td>
												<td class="dgdatagridTdNewStyle"><input type="text" name="head"  class="text_input" /></td>
												<td class="dgdatagridTdNewStyle"><input type="text" name="plantime" class="text_input plantime"/></td>
											</tr>
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
		jQuery(document).ready(function(){
				'use strict';
                jQuery('.plantime').datetimepicker({
                	format: 'Y/m/d', timepicker: false 
                });
              });    
        $(document).ready(function(){         
        //实现全选与反选  
        	$("input[name='checkall']").click(function(){   
            if (this.checked){    
                $("input[name='checkbox']:checkbox").each(function(){   
                      $(this).attr("checked", true);    
                });  
            } else {     
                $("input[name='checkbox']:checkbox").each(function() {     
                      $(this).attr("checked", false);    
                });  
            }    
      		  }); 
        //删除选中行
	        $("input[name='deltable']").click(function(){
	        $("input[name='checkbox']:checked").each(function() { // 遍历选中的checkbox
	            n = $(this).parents("tr").index();  // 获取checkbox所在行的顺序
	            $("table#msgtable").find("tr:eq("+n+")").remove();
	        });
	  		  });
	  		 $("input[name='addtable']").click(function(){
	  		 	var tr="<tr><td class=\"dgdatagridTdNewStyle\" style=\"width: 30px;text-align: center;\"><input type=\"checkbox\" name=\"checkbox\">"+
	  		 		"</td><td class=\"dgdatagridTdNewStyle\"><input type=\"text\" name=\"problems\"" +  
	  		 		"class=\"text_input\"/></td>"+
					"<td class=\"dgdatagridTdNewStyle\"><input id=\"pic\" name=\"pic\" type=\"file\"  class=\"text_input\"/>"+
					"</td><td class=\"dgdatagridTdNewStyle\"><input type=\"text\" name=\"ng\"  class=\"text_input\"></td>"+
					"<td class=\"dgdatagridTdNewStyle\"><select  name=\"defectlevels\"   class=\"text_input\">"+
					"<option value=\"\">--请选择--</option><option value=\"A\">A</option><option value=\"B\">B</option>"+
					"<option value=\"C\">C</option><option value=\"REM 4\">REM 4</option></select></td>"+
					"<td class=\"dgdatagridTdNewStyle\"><input type=\"text\" name=\"head\"  class=\"text_input\" /></td>"+
					"<td class=\"dgdatagridTdNewStyle\"><input type=\"text\" name=\"plantime\" class=\"text_input plantime\"/></td></tr>";
	  		 	 $("#msgtable").append(tr);
	  		 	'use strict';
                jQuery('.plantime').datetimepicker({
                	format: 'Y/m/d', timepicker: false 
                });
	  		   });	
			 });	
		</script>
	</body>

</html>
