# :star: Project_ShoppingMall README :star:
<br>
<img width="500" src="https://user-images.githubusercontent.com/119827252/226559489-421adff6-0b56-4216-acda-8dc70864f11e.png">

## ❓ Project_ShoppingMall은?
- **Project_ShoppingMall**은 일반 쇼핑몰 사이트와는 달리 **<u>커스텀 제작이 가능한 쇼핑몰</u>** 입니다.
- 커스텀 제작이라는 점으로 다른 쇼핑몰과는 차별화된 기능들을 제작하며 경험해 볼 수 있다고 생각하여 제작하게 되었습니다.

#### Project nickname : JUHEE CUSTOM SHOPPINGMALL
#### Project execution period : 23.02.05 ~ 23 03.20
<br>

## :books: Tech Stack :books:
### :sparkles: Platforms & Languages :sparkles: <br>
<img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=white"> <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white"> 
<img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
<img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <br>
<img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
<img src="https://img.shields.io/badge/aws-232F3E?style=for-the-badge&logo=aws&logoColor=white"> <img src="https://img.shields.io/badge/html-E34F26?style=for-the-badge&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">

### 🛠 Tools 🛠
<img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/Eclipse IDE-2C2255?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=for-the-badge&logo=github&logoColor=white">

## ❓ Project_ShoppingMall를 제작하며 담당했던 부분?
1. **HTML, CSS 제작**
   - 장바구니 페이지(+ 팝업창 2개), 나의 정보 페이지, 나의 리뷰 페이지, 주문 목록 페이지, 주문 상세 목록 페이지, 교환/환불 페이지, 주문 취소 페이지
<div>
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581301-82fe5c22-8624-4c1c-8ec8-eebf9e900225.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581316-d56622f5-ce45-40a3-bfe9-09a04dfe7c5f.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581347-cfe7b478-dd21-4576-80a4-ca7d8df84ca3.png"> <br>
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581595-0cd6f1c2-d97e-426d-a3c3-11f7b634f8da.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581612-598b3e53-d3e5-4001-9819-38c93afe5656.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581621-da60be78-9c09-43f4-93d6-780c96252749.png"> <br>
    <img width="300" src="https://user-images.githubusercontent.com/119827252/226581536-08c31397-3d7e-426b-a331-31b3d68380ad.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581677-181525a6-5c66-4ac7-ac06-bea99dff8e0f.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581687-cba627aa-bcbc-4883-883a-36f9e1aa569a.png"> <br>
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581696-49ec77ba-6936-4fd9-acf9-b7efeb398ee4.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581719-95b5bde1-760e-4b09-ba61-6071761a7954.png">
   <img width="300" src="https://user-images.githubusercontent.com/119827252/226581734-8e5353b4-3544-4bd1-ad71-673b9a4c0d91.png">
</div>

     (*옵션 추가 팝업창 1개가 javascript 구현의 어려움을 삭제되고 다른 기능으로 대체됨
      *주문 취소 페이지의 경우 주문 처리 상태 업데이트만 이루어지면 되기에 필요가 없다고 여겨 삭제 됨
      *교환/환불 페이지의 경우 1:1문의 페이지와 기능이 겹치기에 따로 내가 따로 만든 페이지는 삭제)
      
2. **Javascript**
   - 장바구니 페이지  : 옵션 수량 변경 팝업창, 같은 옵션 다른 색상 추가 팝업창
   - 나의 리뷰 페이지 : 별점 체크 유무, 리뷰글 작성 유무, 리뷰 글자 수 체크, 첨부파일 저장, 삭제, 미리보기
   - 교환/환불 페이지 : 교환, 환불 radio 버튼으로 보여지는 div 디자인 변경, 체크박스를 통해 환불 상품 가격 및 총 환불 금액 자동 반영, 교환 및 환불 사유 체크 유무
3. **Java(controller, mapper, dto)**
   - 나의 리뷰 페이지 : 작성 가능 리뷰 목록 불러오기, 작성된 리뷰 목록 리스트 불러오기, 리뷰 작성 페이지 값 세팅
   - 교환/환불 페이지 : 선택 상품 상세 정보 불러오기, 상태값(교환, 환불) 업데이트 하기
<br>

## :sweat_drops: Project_ShoppingMall Resolution Process
#### 약 2달이라는 시간동안 프로젝트를 진행하며 제가 경험한 어려움과 해결과정은 이러합니다.

### 1. 🤦 버벅거리는 팝업창
기본 팝업창이 아닌 내가 따로 디자인을 한 팝업창, 한마디로 div 값을 숨겼다가 보여지게 하는 것이라서
일반적인 검색으로는 쉽게 찾을 수 없었다. 그러던 중 a태그를 통해 열리게 하기 때문에 javascript가 아닌 a태그의 문제가 아닐까 하는 생각에 a태그와 관련지어 검색해보니 a태그의 onclick값을 return false로 설정해주면 해결이 된다는 사실.
이는 onclick의 값이 **true**일 때는 새 문서가 **이전 문서와 교체는 방식**이고, false일 때는 지정되지 않았다면 새문서는 창의 브라우징 히스토리의 **새 항목으로 추가**되어 작동하게 되기 때문!
결국 원하던 모습으로 구현 완료!

### 2. 📛 EL태그 적응기
배우긴 배웠지만 EL태그의 모든 내용을 배운 것은 아니기에 멋지게 활용하지 못하던 와중,
List에 있는 값을 가져오기 위해서 조건 값을 보내고 c:foreach로 불러왔지만 정보가 수도 없이 중복되어 엄청난 양으로 출력되었다..
이때 검색을 통해 **EL태그를 사용하여 list의 값을 가져올 수 있다**는 글을 발견!
**${model로 지정한 변수명.[0].속성}** 이러한 형식으로 설정하면 내가 원하는 정보가 한번만 깔끔하게 출력 된다! 

### 3. 📑 페이징 가보자고
페이징 작업을 하던 와중 input submit 태그로 생성된 페이지 숫자를 누르면 내가 원하는 EL태그 값을 받아오지 못해 제대로 된 값을 출력받지 못하는 상황에 봉착..
해당 이슈는 검색이 아닌 생각의 전환을 통해 submit 방식이 아닌 button 방식으로 해결해보기로 했다.
onclick을 통해 내가 원하는 값을 받아오는 get 주소를 javascript를 funㅊtion()에 설정하여 생성된 페이지 넘버 button을 클릭하면 내가 원하는 주소값으로 이동하게 해결!
해결 이후 검색을 통해서 input submit 태그는 form 데이터를 서버로 전송하는 용도로 사용되는 태그이기 때문에 링크 주소를 변경할 수 없다는 사실을 알게 되었다.

<br>


