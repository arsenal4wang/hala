<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>产品表</title>
	 </head>
 <body>
		<div class="container">
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">产品表</b></div>
	            <div class="box_center">
	              <form action="${basePath }${path}modify" method="post" class="jqtransform">
	              <input type="hidden" id="id" name="id" value="${model.id}"/>
	              <input type="hidden" id="pageNum" name="pageNum" value="${pageNum}"/>
	               <table class="form_table"  width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>	
					
					
						 <td class="form_label">名称:</td>
						 <td class="form_value">${model.name }</td>
					
					
						 <td class="form_label">编号:</td>
						 <td class="form_value2">${model.code }</td>
					
				</tr>
					
						 <td class="form_label">分类:</td>
						 <td class="form_value">${model.categoryId }</td>
						 <td class="form_label"></td>
						 <td class="form_value"></td>
					
				</tr>
	                 <tr>
	                   <td class="td_right">&nbsp;</td>
	                   <td class="">
	                    <!-- <input type="button" name="button" class="btn" id="modle_close" value="返回"> --> 
	                   </td>
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