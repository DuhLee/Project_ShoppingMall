<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="" method="GET" name="search-bar">
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow text-center">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="<%=request.getContextPath()%>/admin">Juhee Custom</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  	<input class="form-control form-control-dark w-100 rounded-0 border-0" name="keyword" type="text" placeholder="Search" aria-label="Search" >
  	<input type="hidden" name="category" value="${param.category}">
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="<%=request.getContextPath()%>/admin/login/logout.do">Logout</a>
    </div>
  </div>
</header>
</form>