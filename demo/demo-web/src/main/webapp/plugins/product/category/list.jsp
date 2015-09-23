<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp"%>

<!-- content start -->
<div class="admin-content">
	<div class="up-cf up-padding">
		<div class="up-fl up-cf">
			<strong class="up-text-primary up-text-lg">类型表</strong> / <small>Category</small>
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
		<div class="up-u-md-3 up-cf">
			<div class="up-fr">
				<div class="up-input-group up-input-group-sm">
					<!-- <input type="text" class="up-form-field">
                <span class="up-input-group-btn">
                  <button class="up-btn up-btn-default" type="button">搜索</button>
                </span> -->
				</div>
			</div>
		</div>
	</div>



	<div class="up-g">
		<div class="up-u-sm-12">
			<form class="up-form" method="post" name="list_form">
				<!-- <table class="up-table up-table-striped up-table-hover table-main"> -->
				<table class="table">
					<thead>
						<tr>
							<th class="table-check"><input type="checkbox" onclick="checkAll(this)" /></th>
							<th>编号</th>
							<th>名称</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="rowdata" varStatus="status">
							<tr>
								<td><input type="checkbox" name="ids" value="${rowdata.id }" /></td>

								<td title="${rowdata.code}"><a href="${basePath}${path }view/${rowdata.id }"
									class="name">${rowdata.code}</a></td>
								<td>${rowdata.name}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<%@include file="/common/common-page-new.jsp"%>
				<hr />
				<p>注：.....</p>
			</form>
		</div>

	</div>

	<!-- content end -->
</div>

