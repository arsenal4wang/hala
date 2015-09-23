<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp"%>

<!-- content start -->
<div class="admin-content">
	<div class="up-cf up-padding">
		<div class="up-fl up-cf">
			<strong class="up-text-primary up-text-lg">产品表</strong> / <small>Product</small>
		</div>
	</div>

	<div class="up-g">
		<div class="up-u-md-6 up-cf">
			<div class="up-fl up-cf">
				<div class="up-btn-toolbar up-fl">
					<div class="up-btn-group up-btn-group-xs">
						<button type="button" id="list_add" class="up-btn up-btn-default">
							<span class="up-icon-plus"></span> 新增
						</button>
						<button type="button" class="up-btn up-btn-default">
							<span class="up-icon-save"></span> 保存
						</button>
						<button type="button" id="list_modify" class="up-btn up-btn-default">
							<span class="up-icon-archive"></span> 修改
						</button>
						<button type="button" id="list_delete" class="up-btn up-btn-default">
							<span class="up-icon-trash-o"></span> 删除
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="up-g">
		<div class="up-u-sm-12">
			<form method="post" name="list_form">
				<div class="up-fr">
					<div class="up-input-group up-input-group-sm">
						<input name="name" type="text" class="input-medium search-query" value="${model.name}" placeholder="名称"> <input name="category.name" type="text" class="input-medium search-query" value="${model.category.name}" placeholder="分类">
						<button id="list_search" type="button" class="btn" onclick="listSearch()">单表搜索</button>
						<button id="listExt_search" type="button" class="btn" onclick="listExtSearch()">关联搜索</button>
						<!-- 以name为搜索条件的例子 -->
					</div>
				</div>
				<!-- <table class="up-table up-table-striped up-table-hover table-main"> -->
				<table class="table">
					<thead>
						<tr>
							<th class="table-check"><input type="checkbox" onclick="checkAll(this)" /></th>
							<th>名称</th>
							<th>编号</th>
							<th>分类id</th>
							<th>分类名称</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="rowdata" varStatus="status">
							<tr class="${rowdata.category.id}"><!-- 这里是根据categoryId值来设置每行不同的样式 -->
								<td><input type="checkbox" name="ids" value="${rowdata.id }" /></td>
								<td title="${rowdata.name}"><a href="${basePath}${path }view/${rowdata.id }" class="name">${rowdata.name}</a></td>
								<td>${rowdata.code}</td>
								<td>${rowdata.category.id}</td>
								<td>${rowdata.category.name}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<%@include file="/common/common-page-new.jsp"%>
			</form>
		</div>
	</div>
	<!-- content end -->
</div>

<script type="text/javascript">
	//以name为模糊匹配的搜索例子
	//对应MyBatis xml是s_name like concat(
	$(function() {
		$("#list_search").click(function() {
			$("#list_pageNum").val("1");
			$("#name").val($("input[name='name']").val());
			$("#category.name").val($("input[name='category.name']").val());
			$('form[name=list_form]').attr('action', 'list').submit();
		});
		$("#listExt_search").click(function() {
			$("#list_pageNum").val("1");
			$("#name").val($("input[name='name']").val());
			$("#category.name").val($("input[name='category.name']").val());
			$('form[name=list_form]').attr('action', 'listExt').submit();
		});		
	});
</script>

