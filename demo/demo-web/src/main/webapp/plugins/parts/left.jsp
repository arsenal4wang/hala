<%@page pageEncoding="utf-8"%>
<!-- sidebar start -->
<div class="admin-sidebar">
	<ul class="up-list admin-sidebar-list">
		<li class="admin-parent"><a class="up-cf" data-up-collapse="{target: '#collapse-product'}"><span class="up-icon-th"></span> 产品模块 <span class="up-icon-angle-right up-fr up-margin-right"></span></a>
			<ul class="up-list up-collapse admin-sidebar-sub up-in" id="collapse-product">
				<li><a href="${pageContext.request.contextPath}/product/product/list"><span class="up-icon-th"></span> 产品表</a></li>
				<li><a href="${pageContext.request.contextPath}/product/category/list"><span class="up-icon-th"></span> 类型表</a></li>
			</ul>
		</li>
		<li class="admin-parent"><a class="up-cf" data-up-collapse="{target: '#collapse-product'}"><span class="up-icon-th"></span> 插件模块 <span class="up-icon-angle-right up-fr up-margin-right"></span></a>
			<ul class="up-list up-collapse admin-sidebar-sub up-in" id="collapse-product">
				<li><a href="${pageContext.request.contextPath}/plugins/pluginmgr_mgr_Index_show.htm" target="_blank"><span class="up-icon-th"></span> 插件管理</a></li>
				<li><a href="${pageContext.request.contextPath}/sysmgr/sysuser/userListGroup" target="_blank"><span class="up-icon-th"></span> 系统管理</a></li>
			</ul>
		</li>		
	</ul>
</div>
<!-- sidebar end -->