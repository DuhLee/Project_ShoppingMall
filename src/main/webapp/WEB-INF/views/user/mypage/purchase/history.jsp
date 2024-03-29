<!-- 정수정, 주문 내역-->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/user/mypage/css/orderList.css">

<!-- main -->
<div class="background">
	<div class="ctr">
		<h1>주문 내역</h1>
		<div class="contents">
			<div class="search">주문내역조회</div>
			<div class="search_form">
				<div class="search_date">
					<form action="/history/selected" method="GET">
						<select name="select_order_status" id="">
							<option value="" >전체 주문 처리 상태</option>
							<option value="0" <c:if test="${ord_status == '0'}">selected='selected'</c:if>>입금 전</option>
							<option value="1" <c:if test="${ord_status == '1'}">selected='selected'</c:if>>결제 완료</option>
							<option value="2" <c:if test="${ord_status == '2'}">selected='selected'</c:if>>배송 준비 중</option>
							<option value="3" <c:if test="${ord_status == '3'}">selected='selected'</c:if>>배송 중</option>
							<option value="4" <c:if test="${ord_status == '4'}">selected='selected'</c:if>>배송 완료</option>
							<option value="5" <c:if test="${ord_status == '5'}">selected='selected'</c:if>>취소</option>
							<option value="6" <c:if test="${ord_status == '6'}">selected='selected'</c:if>>교환</option>
							<option value="7" <c:if test="${ord_status == '7'}">selected='selected'</c:if>>반품</option>
						</select> &nbsp; &nbsp;
						<input class="select_date" value="${start_date }" name="select_start_date"	type="date">
						<span class="symbol">&nbsp; ~ &nbsp;</span>
						<input	class="select_date" id="end_date" value="${end_date }" name="select_end_date" type="date">
						&nbsp; &nbsp;
						<button type="submit" class="inquiry">조회</button>
					</form>
					<script>
					  var today = new Date().toISOString().substr(0, 10);
					  document.getElementById("end_date").value = today;
					</script>
				</div>

				<ol class="explanation" style="list-style-type: disc;">
					<li>기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
					<li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
					<li>취소/교환/반품 신청은 주문완료일 기준 30일까지 가능합니다.</li>
				</ol>
			</div>
			<br> <br>
			<div class="order_history_main_contents">
				<c:if test="${empty orders}">
					<h2>조회된 주문이 없습니다.</h2>
				</c:if>
				<c:if test="${not empty orders }">
					<table class="pd_info">
						<colgroup>
							<col style="width: 225px;">
							<col style="width: 125px;">
							<col style="width: 325px;">
							<col style="width: 145px;">
							<col style="width: 165px;">
						</colgroup>
						<thead>
							<tr>
								<th>주문일자<br>[주문번호]
								</th>
								<th>이미지</th>
								<th>상품정보</th>
								<th>결제 금액</th>
								<th>주문처리상태</th>
							</tr>
						</thead>
						<c:forEach var="order" items="${orders }">
							<tbody class="product_list">
								<tr class="product">
									<td>${order.new_ord_date }<br> <a
										href="<%=request.getContextPath()%>/details?ord_num=${order.ord_num }">[${order.new_order_num }]</a></td>
									<td><img width=70px; src="<%=request.getContextPath()%>/display/image?fileName=${order.origin_img_path }"
										alt="" /></td>
									<td>${order.p_name }
										<c:if test="${order.od_quantity ne 1}">
											<strong>&nbsp;외 ${order.od_quantity - 1}개</strong>
										</c:if>
									</td>
									<td>￦<fmt:formatNumber value="${order.total_amount }"
											pattern="#,###,##0" /></td>
									<c:if test="${order.status_name eq '입금 전' || order.status_name eq '결제 완료' }">
										<td>${order.status_name }</td>
									</c:if>
									<c:if test="${order.status_name eq '주문 취소' || order.status_name eq '교환' || order.status_name eq '반품'}">
										<td style="color: red">${order.status_name }</td>
									</c:if>
									<c:if test="${order.status_name eq  '배송 준비 중' || order.status_name eq '배송 중'}">
										<td>${order.status_name }</td>
									</c:if>
									<c:if test="${order.status_name ne '주문 취소' && order.status_name ne '교환' && order.status_name ne '반품' && order.status_name ne '입금 전' && order.status_name ne '결제 완료' && order.status_name ne '배송 준비 중' && order.status_name ne '배송 중' && order.status_name eq  '배송 완료'}">
										<td>${order.status_name }</td>
									</c:if>
								</tr>
							</tbody>
						</c:forEach>

					</table>
				</c:if>
			</div>
		</div>
	</div>
</div>



<footer>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />