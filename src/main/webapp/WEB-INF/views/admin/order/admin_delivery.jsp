<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
    let myKey = "fR1YiDAtIBJSWYbp80y9Xg"; // sweet tracker에서 발급받은 자신의 키 넣는다.
    
        // 택배사 목록 조회 company-api
        $.ajax({
            type:"GET",
            dataType : "json",
            url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
            success:function(data){
                    
                    // 방법 1. JSON.parse 이용하기
                    let parseData = JSON.parse(JSON.stringify(data));
                     console.log(parseData.Company); // 그중 Json Array에 접근하기 위해 Array명 Company 입력
                    
                    // 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
                    let CompanyArray = data.Company; // Json Array에 접근하기 위해 Array명 Company 입력
                    console.log(CompanyArray); 
                    
                    let myData="";
                    $.each(CompanyArray,function(key,value) {
                            myData += ('<option value='+value.Code+'>' + value.Name + '</option>');                        
                    });
                    $("#delivery_company").html(myData);
            }
        });
        
});
</script>
<body>

<form action="<%=request.getContextPath()%>/admin/order/delivery_reg" method="GET">
<input type="hidden" name="ord_num" value="${param.ord_num}">
<span id="tekbeCompanyName">택배사</span>
<select id="delivery_company" name="delivery_company"></select><br/><br/>
<span id="invoiceNumber">운송장번호</span>
<input type="text" id="invoice_number" name="invoice_number"><br/><br/>

<table>
	<th>택배사<th>
	<th>운송장 번호<th>
	<tr>
		<td>${param.delivery_company}</td>
		<td>${param.invoice_number}</td>
	<tr>
</table>

<input type="submit" id="delivery_reg" value="배송등록"/>
<button id="delivery_cancel" onclick="window.opener.location.reload(); window.close();">닫기</button>
</form>

</body>
</html>