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
							<td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 检讨信息维护</td>
							<td class='menubarAA_menu_td' align='right'>
								<font color="red"></font>
							</td>
						</tr>
					</table>
					<div style="height: 5px;"></div>
						<table cellspacing="5" cellpadding="5" width='100%' align="center" border="0" style="border:solid 1px #a9c9ee;">
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
												<td style="width:30%;border-bottom:solid 1px #a9c9ee;">${item.proname}</td>
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
								<td><button class="deletebatch button_bak">删除选中</button>
									<a class="button_bak" href="/npi/head/main_all_head.do">返回</a>
								</td>
							</tr>
							<tr>
								<td>
									<table class="dgdatagridStyle" cellspacing="0" id="msgtable" rules="all" border="1" style="width:100%;border-collapse:collapse;">
										<thead>
											<tr>
												<th class="dgdatagridTdNewStyle">序号</th>
												<th class="dgdatagridTdNewStyle">阶段</th>
												<th class="dgdatagridTdNewStyle" colspan="3">项目</th>
												<th class="dgdatagridTdNewStyle">不良问题点
												<br/><img src="images/${item.filenamea}" width="100" height="100" /></th>
												<th class="dgdatagridTdNewStyle">不良数</th>
												<th class="dgdatagridTdNewStyle">缺陷等级</th>
												<th class="dgdatagridTdNewStyle">提出人</th>
												<th class="dgdatagridTdNewStyle">责任人</th>
												<th class="dgdatagridTdNewStyle">计划时间</th>	
												<th class="dgdatagridTdNewStyle">原因分析</th>
												<th class="dgdatagridTdNewStyle">改善对策</th>
												<th class="dgdatagridTdNewStyle">完成时间</th>
												<th class="dgdatagridTdNewStyle">操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${msgslist}" var="item" varStatus="status">
											<tr>
												<td class="dgdatagridTdNewStyle"><input type="checkbox" name="check" value="${item.id}"></td>
												<td class="dgdatagridTdNewStyle">${item.stage0} &nbsp; ${item.stage} </td>
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
												<td class="dgdatagridTdNewStyle">${item.measures} </td>
												<td class="dgdatagridTdNewStyle">${item.finishtime}</td>
												<td class="dgdatagridTdNewStyle">
													<a href="/npi/msgs/select_by_id.do?id=${item.id}">修改</a>
													<button class="delete button_bak">删除</button>
												</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</td>
							</tr>
						</table>
				</td>
			</tr>
		</table>
<script src="../js/jquery.js"></script>
<script src="../js/jquery.datetimepicker.full.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".delete").click(function(){
	   	var code=$(this).attr("code");
	   	console.log(code);
	   	$.ajax({
	   		type:"POST",
	   		url:"/npi/msgs/delete_by_id.do",
	   		data:{id:code},
	   		success:function(){
	   			window.location.reload();
	   		}
	   	})
   });
	$(".deletebatch").click(function(){
	   	var checkid=[];
		$("input[name='check']:checked").each(function(i){
			checkid[i]=$(this).val();
		})
	   	console.log(checkid);
	   	$.ajax({
	   		type:"POST",
	   		url:"/npi/msgs/delete_by_ids.do",
	   		data:{ids:checkid},
	   		success:function(){
	   			window.location.reload();
	   		}
	   	})
   });
});
</script>
</body>
</html>
