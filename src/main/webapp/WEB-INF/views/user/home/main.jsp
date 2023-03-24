<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/user/home/css/home_main.css?after">

<title>juhee custom - main</title>

<!-- main -->
<div id="home_main">
	<!-- banner 수정필요-->
	<div id="home_banner_container" class="h_container">
		<div style="overflow: hidden; margin: 0;">

			<div class="img_container">
			
			<!-- 배너 마지막 이미지  -->
				<div class="img_wrapper">
					<img
						src="<%=request.getContextPath()%>/assets/user/home/img/banner/banner4.jpg">
				</div>
				
				<!-- 배너 이미지 forEach -->
				<div class="img_wrapper">
					<img
						src="<%=request.getContextPath()%>/assets/user/home/img/banner/banner1.jpg">
				</div>
				<div class="img_wrapper">
					<img
						src="<%=request.getContextPath()%>/assets/user/home/img/banner/banner2.jpg">
				</div>
				<div class="img_wrapper">
					<img
						src="<%=request.getContextPath()%>/assets/user/home/img/banner/banner3.jpg">
				</div>
				<!-- 배너 이미지 /forEach -->
				
				<!-- 배너 첫번쨰-->
				<div class="img_wrapper">
					<img
						src="<%=request.getContextPath()%>/assets/user/home/img/banner/banner1.jpg">
				</div>
			</div>
			<div>

				<button class="prev">
					<span class="material-symbols-outlined"> arrow_back_ios </span>
				</button>
				<button class="next">
					<span class="material-symbols-outlined"> arrow_forward_ios </span>
				</button>
			</div>

		</div>

	</div>
	
	
	<!-- category icon -->
	<div id="home_cate_icon_container" class="h_container">
		<div id="home_cate_icon_box">
			<c:forEach items="${sessionScope.mainCtgrs}" var="mainCtgr">
				<div class="home_cate_item">
					<a href="<%=request.getContextPath()%>/main_category?m_ctgr_num=${mainCtgr.m_ctgr_num}">
						<div class="home_cate_img" style="background-color: ${mainCtgr.m_ctgr_color_code}">
							<img src="<%=request.getContextPath()%>/${mainCtgr.m_ctgr_icon_path}" />
						</div>
						<p class="home_cate_name">${mainCtgr.m_ctgr_name}</p>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- recommended item -->
	<div id="home_recom_item_container" class="h_container">

		<div class="home_main_title">
			<h2>내가 만드는 나의 상품</h2>
		</div>
		<div id="recom_box">
			<div id="home_recom_item_box">
				<div class="recom_item">
					<a href="<%=request.getContextPath()%>/main_category?m_ctgr_num=1" class="recom_item_img">
						<div>
							<img
								src="<%=request.getContextPath()%>/assets/user/home/img/recommend/01.png" />
						</div>
					</a>
				</div>

				<div class="recom_item">
					<a href="<%=request.getContextPath()%>/main_category?m_ctgr_num=2" class="recom_item_img">
						<div>
							<img
								src="<%=request.getContextPath()%>/assets/user/home/img/recommend/02.png" />
						</div>
					</a>
				</div>



				<div class="recom_item" style="">
					<a href="<%=request.getContextPath()%>/main_category?m_ctgr_num=4" class="recom_item_img">
						<div>
							<img
								src="<%=request.getContextPath()%>/assets/user/home/img/recommend/03.png" />
						</div>
					</a>
				</div>
				<div class="recom_item">
					<a href="<%=request.getContextPath()%>/main_category?m_ctgr_num=4" class="recom_item_img">
						<div>
							<img
								src="<%=request.getContextPath()%>/assets/user/home/img/recommend/04.png" />
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- review -->
	<div id="home_review_container" class="h_container">
		<div id="home_customer_review_box">
			<div class="home_review_title"
				style="width: 1500px;margin: auto;margin-bottom: 30px;">
				<div>
					<h2>
						리뷰 <span>(${review_size})</span>
					</h2>
				</div>
				<div id="all_review">
					<a href="<%=request.getContextPath()%>/allreview?page=1"> 전체보기> </a>
				</div>

			</div>

			<div class="home_review_list_box" style="margin: auto;">
				<ul class="home_review_list"
					style="background-image: url(); list-style: none; padding:0;">

					<c:forEach items="${review_list}" var="list" begin="0" end="4">
						<li class="home_review_box"><a
							href="<%=request.getContextPath()%>/review?review_num=${list.review_num }">

								<div class="home_review_img">
									<img
										src="<%=request.getContextPath()%>/display/image?fileName=${list.review_image_path}" />
								</div>

								<div class="review_score">
									<div class="star">${list.star}</div>
								</div>
								
		                        <div class="review_contents" style="width:270px;">
		                           <div class="comment" style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
		                           ${list.review_content}
		                           </div>
		                        </div>


								<div class="info">
									<div class="created_at">${list.rev_only_date}</div>
									<div class="user_name">${list.user_name}</div>
								</div>

						</a></li>
					</c:forEach>

				</ul>
			</div>
		</div>
	</div>

</div>


<footer>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
	<script
		src="<%=request.getContextPath()%>/assets/user/home/js/home_main.js"></script>