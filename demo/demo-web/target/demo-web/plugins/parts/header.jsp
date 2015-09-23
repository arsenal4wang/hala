<%@page pageEncoding="utf-8" %>
<header class="up-topbar admin-header">
  <div class="up-topbar-brand">
    <strong><fmt:message key="system.name" bundle="${main}"/></strong> <small><fmt:message key="system.code" bundle="${main}"/></small>
  </div>

  <button class="up-topbar-btn up-topbar-toggle up-btn up-btn-sm up-btn-success up-show-sm-only" data-up-collapse="{target: '#topbar-collapse'}"><span class="up-sr-only">导航切换</span> <span class="up-icon-bars"></span></button>
  <div class="up-collapse up-topbar-collapse" id="topbar-collapse">

    <ul class="up-nav up-nav-pills up-topbar-nav up-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="up-icon-envelope-o"></span> 收件箱 <span class="up-badge up-badge-warning">5</span></a></li>
      <li class="up-dropdown" data-up-dropdown>
        <a class="up-dropdown-toggle" data-up-dropdown-toggle href="javascript:;">
          <span class="up-icon-users"></span> 管理员 <span class="up-icon-caret-down"></span>
        </a>
        <ul class="up-dropdown-content">
          <li><a href="#"><span class="up-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="up-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="up-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li class="up-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="up-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>