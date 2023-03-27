# Customizing Shopping Mall

![JHC](http://43.200.244.98/assets/common/cstm_img/logo/logo.png)
![JHC-home](https://user-images.githubusercontent.com/119422179/227863310-b0c0719f-9585-4620-876f-160e3a672fce.png)

---
## 프로젝트 주제

>프로젝트는 유저가 제품에 이미지를 직접 커스터마이징하여 구매할 수 있는 웹사이트를 구축하는 것입니다.
>
>카테고리별로 다양한 제품을 제공하며, 유저는 각 제품에 직접 이미지, 로고, 문구 등을 제작하여 색상과 사이즈를 선택할 수 있습니다. 
>이를 통해 유저는 자신만의 독특한 제품을 만들어 구매할 수 있으며, 이러한 커스터마이징 기능은 이전까지는 제한되어 있던 제품 선택 폭을 크게 확대시켜줍니다.
>또한, 저희 프로젝트는 웹사이트 이용 과정에서 유저가 불편함을 느끼지 않도록 최적화된 디자인을 적용하여, 유저가 쉽고 빠르게 제품을 커스터마이징하고 구매할 수 있도록 합니다.
>
>사이트는 유저페이지와 관리자페이지로 나뉘어져 있습니다.
>
>유저페이지에서는 다양한 카테고리별로 제품을 쉽게 찾을 수 있습니다. 
>제품을 선택한 후, 제품에 유저가 직접 이미지, 로고, 문구 등을 직접 커스터마이징 할 수 있습니다.
>커스터마이징한 제품은 구매 옵션을 선택하고 장바구니에 담아 주문서를 작성하면 간편하게 제품을 구매할 수 있습니다. 
>로그인 기능을 통해 본인의 정보를 안전하게 관리할 수 있으며, 구매 후 리뷰 작성, 1:1 문의 게시판 작성 등의 다양한 기능을 제공합니다.
>
>관리자페이지에서는 대쉬보드를 통해 전반적인 사이트의 상황을 한눈에 확인할 수 있습니다. 
>제품관리 기능은 새로운 제품 등록과 기존 제품의 수정, 삭제가 가능합니다. 
>주문관리 기능은 주문 상태를 확인하고 처리할 수 있습니다.
>매출 관리 기능은 판매량과 매출량 등을 확인할 수 있습니다. 
>회원관리 기능은 회원 정보를 관리하고, 문의글 답변 작성 기능은 유저들의 문의에 빠르게 대응할 수 있도록 도와줍니다. 
>사이트 카테고리 설정 기능은 카테고리를 추가, 수정, 삭제할 수 있습니다.
>
>이러한 기능들을 통해 유저들은 원하는 제품을 쉽게 구매할 수 있으며, 관리자는 사이트의 전반적인 관리와 운영을 효율적으로 할 수 있습니다.
---
## 개발 기간

>- 23.02.10 ~ 23.03.24 
---
## 개발 환경

>
><img src="https://img.shields.io/badge/java-007396?style=for-the-plastic&logo=java&logoColor=white">  1.8
>
><img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-plastic&logo=Spring&logoColor=white">  STS3 5.2.22  
>
><img src="https://img.shields.io/badge/oracle-F80000?style=for-the-plastic&logo=oracle&logoColor=white">  Oracle DB(11g) 
>
><img src="https://img.shields.io/badge/ApacheTomcat-F8DC75?style=for-the-plastic&logo=ApacheTomcat&logoColor=white"> TOMCAT 9.0
>
><img src="https://img.shields.io/badge/AmazonAWS-232F3E?style=for-the-plastic&logo=AmazonAWS&logoColor=white">  EC2
>
><img src="https://img.shields.io/badge/github-181717?style=for-the-plastic&logo=github&logoColor=white">
---
## 기술 스택
| Front | Back  |
| :---: | :---: |
| <img src="https://img.shields.io/badge/Html-E34F26?style=for-the-badge&logo=Html&logoColor=white"> |  <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">   |
| <img src="https://img.shields.io/badge/css3-1572B6?style=for-the-badge&logo=css3&logoColor=white">| <img src="https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=jsp&logoColor=white"> |
| <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> |   |
| <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"> |   |
| <img src="https://img.shields.io/badge/BootStrap-7952B3?style=for-the-badge&logo=BootStrap&logoColor=white"> |   |
| <img src="https://img.shields.io/badge/jsp-F7DF1E?style=for-the-badge&logo=jsp&logoColor=white"> |   |


## 프로젝트 기능 설명

### 주요 기능

---

#### __`회원가입&로그인`__
 
>![회원가입 로그인](https://user-images.githubusercontent.com/119422179/227868099-925909f7-6548-4507-b227-dc2fdc43ecd1.PNG)
>- 세션과 쿠키를 활용해 로그인 유지
>- 카카오 API를 활용한 로그인 회원가입 구현

#### __`카테고리 제품 조회`__
>![카테고리 제품 조회](https://user-images.githubusercontent.com/119422179/227868750-e9c50814-ba65-46f2-965c-803fce549a68.PNG)
>+ 카테고리 대분류와 소분류로 제품 조회
>+ 검색으로 조회

#### __`제품 커스터마이징`__
>![image](https://user-images.githubusercontent.com/119422179/227869484-7c93e579-a686-4b2b-8473-d3522f390684.png)
>- 커스터마이징 기능 : 추가/삭제/사이즈 조절 가능
>   + 이미지 업로드 : 유저의 이미지를 업로드 하여 커스텀
>   + 텍스트 : 텍스트를 추가하여 이름, 로고 등을 커스텀
>   + 샘플아이콘 : 기본 샘플 아이콘을 활용한 커스텀
>- 색상,사이즈 선택
>   + DB에 저장되어있는 값에 따라 색상아이콘, 사이즈 아이콘 생성
>- 바로 구매하기, 장바구니 담기 옵션
>   + 비로그인시 로그인창 팝업

#### __`장바구니`__
>![장바구니](https://user-images.githubusercontent.com/119422179/227882726-cdf96a27-e0c7-4d03-aced-68da43e7caf8.PNG)
>- 커스텀 이미지, 제품 옵션 확인
>- 수량변경/삭제 가능

#### __`주문서`__
>![주문서1](https://user-images.githubusercontent.com/119422179/227883875-8f3361fc-a4fe-413b-9884-bb9f17b532c0.PNG)
>![주문서2](https://user-images.githubusercontent.com/119422179/227884050-555957e3-b628-4159-9ad5-6ed356933da1.PNG)
>- 주문자 정보는 로그인 되어있는 회원정보로 설정
>- 배송지 정보는 직접 입력 또는 주문자와 동일 선택
>  + 주소는 Daum 우편번호 API 사용
>  + 배송지 저장하면 이전 배송지 정보로 설정
>- Toss Payments API 활용한 결제 구현
>  + 무통장, 삼성페이, 네이버페이, 토스페이

#### __`마이페이지`__
>![마이페이지-나의정보](https://user-images.githubusercontent.com/119422179/227887178-fee3346a-a0e3-4bb5-9581-daf3b7d46fc8.PNG)
>- Java Mail API를 활용한 비밀번호 변경
>  + 링크로 비밀번호 변경 페이지로 이동
>![마이페이지-리뷰](https://user-images.githubusercontent.com/119422179/227887721-beb6dfcf-22a5-4339-afc1-20f146df5b91.PNG)
>- 리뷰작성하기
>  + 구매한 제품의 별점, 리뷰 내용, 첨부 이미지 등록
>  + 작성 가능한 리뷰 : 구매 내역에서 리뷰 작성 가능한 내역
>  + 내가 쓴 리뷰 : 리뷰 작성한 내역
>![마이페이지-교환환불](https://user-images.githubusercontent.com/119422179/227888357-d4c35014-fff0-477f-ab95-51033683d755.PNG)
>- 교환/환불 신청하기
>  + 주문 내역에서 교환/환불 신청

#### __`고객센터`__
>![고객센터](https://user-images.githubusercontent.com/119422179/227888876-e579cacf-ecaf-4e65-b1b9-4fb5c9d72ede.PNG)
>- 자주하는 질문(FAQ)
>  + 제목과 내용 아코디언 방식으로 출력
>- 1:1문의
>  + 비로그인시 로그인 요청
>  + 1:1 문의 게시판 게시글 작성


