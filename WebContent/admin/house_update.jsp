<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/geo.js"></script>
<script type="text/javascript">
	$(function() {
		$(".list_table").colResizable({
			liveDrag : true,
			gripInnerHtml : "<div class='grip'></div>",
			draggingClass : "dragging",
			minWidth : 30
		});

	});

	function check() {
		var form2 = document.getElementById("form2");
		form2.submit();
	}
</script>
<title>Document</title>
</head>
<body>
	<div id="forms" class="mt10">
		<div class="box">
			<div class="box_border">
				<div class="box_top">
					<b class="pl15">修改房源信息</b>
				</div>
				<div class="box_center">
					<form action="house_update.action" class="jqtransform" id="form2"
						enctype="multipart/form-data" method="post">
						<table class="form_table pt15 pb15" width="100%" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td class="td_right">城市</td>
								<td class=""><span class="fl">
										<div class="select_border">
											<div class="select_containers ">
												<select name="province" class="select" id="s1">
													<option selected>${house.province}</option>
												</select>
											</div>
										</div>
								</span> <span class="fl">
										<div class="select_border">
											<div class="select_containers ">
												<select name="city" class="select" id="s2">
													<option selected>${house.city}</option>
												</select>
											</div>
										</div>
								</span> <span class="fl">
										<div class="select_border">
											<div class="select_containers ">
												<select name="district" class="select" id="s3">
													<option selected>${house.district}</option>
												</select>
											</div>
										</div>
								</span></td>
							</tr>
							<tr>
								<td class="td_right">项目名称 ：</td>
								<td class=""><input type="text" name="name"
									class="input-text lh30" size="40" value="${house.name}">
								</td>
							</tr>
							<tr>
								<td class="td_right">项目地址：</td>
								<td><input type="text" name="adress"
									class="input-text lh30" size="40" value="${house.adress }"
									disabled></td>
							</tr>
							<tr>
								<td class="td_right">面积范围：</td>
								<td><input type="text" name="area" class="input-text lh30"
									size="20" value="${house.area}"></td>
							</tr>
							<tr>
								<td class="td_right">单价：</td>
								<td><input type="text" name="price" class="input-text lh30"
									size="10" value="${house.price}"></td>
							</tr>
							<tr>
								<td class="td_right">房源类型：</td>
								<td class=""><span class="fl">
										<div class="select_border">
											<div class="select_containers ">
												<select name=btype class="select">
													<option value="住宅">住宅</option>
													<option value="写字楼">写字楼</option>
													<option value="商铺">商铺</option>
													<option value="城市综合体">城市综合体</option>
													<option value="别墅">别墅</option>
													<option value="洋房">洋房</option>
													<option value="复式">复式</option>
													<option value="经济适用房">经济适用房</option>
												</select>
											</div>
										</div>
								</span></td>
							</tr>
							<tr>
								<td class="td_right">装修类型：</td>
								<td class=""><span class="fl">
										<div class="select_border">
											<div class="select_containers ">
												<select name=dtype class="select">
													<option value="清水房">清水房</option>
													<option value="简装">简装</option>
													<option value="中装">中装</option>
													<option value="精装">精装</option>
													<option value="别墅">别墅</option>
													<option value="洋房">豪装</option>
												</select>
											</div>
										</div>
								</span></td>
							</tr>
							 <s:set name="saletime" value="house.saleTime"></s:set>  
							<tr>
								<td class="td_right">开盘日期：</td>
								<td><sx:datetimepicker name="saleTime"
										displayFormat="yyyy-MM-dd" value="#saletime"
										language="utf-8"></sx:datetimepicker></td>
							</tr>
							<tr>
								<td class="td_right">售楼地址：</td>
								<td><input type="text" name="saleAdress"
									class="input-text lh30" size="20" value="${house.saleAdress}"></td>
							</tr>
							<tr>
								<td class="td_right">售楼电话：</td>
								<td><input type="text" name="salePhone"
									class="input-text lh30" size="20" value="${house.salePhone}"></td>
							</tr>
							<tr>
								<td class="td_right">效果图：</td>
								<td class=""><input type="file" name="img"
									class="input-text lh30" size="10"> <input type="file"
									name="img" class="input-text lh30" size="10"> <input
									type="file" name="img" class="input-text lh30" size="10">
									<input type="file" name="img" class="input-text lh30" size="10">
								</td>
							</tr>
							<tr>
								<td class="td_right">楼盘简介：</td>
								<td><input type="text" name="descr" class="input-text lh40"
									size="35" value="${house.descr}"></td>
							</tr>
							<tr>
								<td class="td_right">特色：</td>
								<td><input type="text" name="feature"
									class="input-text lh40" size="35" value="${house.feature}"></td>
							</tr>
							<tr>
								<td class="td_right">优惠信息：</td>
								<td><input type="text" name="discount"
									class="input-text lh40" size="20" value="${house.discount}"></td>
							</tr>
							<tr>
								<td class="td_right">开发商简介：</td>
								<td><input type="text" name="developer"
									class="input-text lh40" size="35" value="${house.developer}"></td>
							</tr>
							<tr>
								<td class="td_right">交通情况：</td>
								<td><input type="text" name="transport"
									class="input-text lh40" size="35" value="${house.transport}"></td>
							</tr>

							<tr>
								<td class="td_right">停车位：</td>
								<td><input type="text" name="stop" class="input-text lh40"
									size="35"></td>
							</tr>

							<tr>
								<td class="td_right">相关情况：</td>
								<td><input type="text" name="relat" class="input-text lh40"
									size="35" value="${house.relat}"></td>
							</tr>

							<tr>
								<td class="td_right">&nbsp;</td>
								<td class=""><input type="button" name="button"
									class="btn btn82 btn_save2" value="保存" onclick="check()">
									<input type="button" name="button" class="btn btn82 btn_res"
									value="取消"> <input type="hidden" name="hid"
									value="${house.id}"> <input type="hidden"
									name="modifyTime" value="${house.modifyTime}"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>