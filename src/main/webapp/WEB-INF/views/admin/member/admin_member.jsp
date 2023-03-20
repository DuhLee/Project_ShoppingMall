<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- include header -->

    <%@ include file="../include/header.jsp" %>


        <!-- admin_home -->

<body>

	<!-- include top search bar -->

	<%@ include file="../include/top_search_bar.jsp"%>

	<div class="container-fluid">
		<div class="row">

			<!-- include left Nav Bar -->
			<%@ include file="../include/left_nav_bar.jsp"%>


			<!-- content-container -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

				<div class="row mt-4">
					<div class="col-lg-12">
						<div
							class="row g-0 border rounded flex-md-row mb-4 shadow-sm h-md-250 position-relative">
							<div class="col p-4 d-flex flex-column position-static">
								<div class="d-flex flex-row justify-content-between">
									<h3 class="mb-0 fw-bold mb-4">회원 관리</h3>
									<button class="btn btn-primary btn-sm me-3"
										style="height: 30px;" onclick="location.href='./reg'">옵션
										버튼</button>
								</div>

								<table class="table text-center">
									<thead>
										<tr class="table-dark">
											<th scope="col">회원 번호</th>
											<th scope="col">이름</th>
											<th scope="col">E-mail</th>
											<th scope="col">포인트</th>
											<th scope="col" style="width:120px;">상세정보</th>
											<th scope="col" style="width:100px;">탈퇴</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${members}" var="member">

											<tr>
												<form method="POST">
													<th scope="row">${member.mem_num}</th>
													<td>${member.mem_name}</td>
													<td>${member.mem_email}</td>
													<td>${member.mem_point}</td>
													<td class="table-secondary">
														<button type="button" class="btn btn-sm btn-outline-dark"
															id="member-detail"
															onclick="location.href=`./detail?mem_num=${member.mem_num}`">회원상세보기</button>
													</td>
													<td class="table-danger"><input type="hidden" name="mem_num"
														value="${member.mem_num}">
														<button type="submit"
															class="btn btn-sm btn-outline-danger"
															formaction="/jhc/admin/member/delete">강제탈퇴</button></td>
												</form>
											</tr>
										</c:forEach>
									</tbody>
								</table>




							</div>
						</div>
					</div>
				</div>



			</main>

		</div>
	</div>

	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="dashboard.js"></script>
</body>
</html>