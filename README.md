# Customizing Shopping Mall

![JHC](http://43.200.244.98/assets/common/cstm_img/logo/logo.png)
[![JHC-home](https://user-images.githubusercontent.com/119422179/227863310-b0c0719f-9585-4620-876f-160e3a672fce.png)](http://43.200.244.98)

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
### 메인페이지
---
#### __`슬라이드배너&아이콘`__
>![메인화면](https://user-images.githubusercontent.com/119827260/233021069-c6fa64d3-2928-453e-a6df-559347e357ae.png)
>- 배너 이미지 자동 슬라이드
>   +  3초마다 이미지 슬라이드
>   +  JavaScript를 활용해 해당 div에 마우스가 올라가있으면 이미지가 넘어가지 않게 설정
>   +  좌우 버튼으로 이미지 이동 가능
---
#### __`서브배너&리뷰`__
>![메인화면-리뷰](https://user-images.githubusercontent.com/119827260/233021043-96029943-a030-44c8-87ca-dae03aaab845.png)
>- 서브 배너 
>   +  등록된 배너 이미지
>   +  해당 제품 
>- 포토리뷰리스트
>   +  등록된 리뷰 전체 개수 
>   +  전체리뷰목록 및 리뷰상세 확인 가능
>   +  최신순으로 작성된 리뷰 중 이미지 파일이 첨부되어있는 리뷰가 나타남
>   +  회원 이름 *처리, 별점개수
---
#### __`리뷰`__
>![전체리뷰](https://user-images.githubusercontent.com/119827260/233028388-304a11ba-9802-4dee-a48e-2617ada663d4.png)
>- 전체리뷰 리스트
>   +  최신순으로 정렬
>   +  이미지가 첨부된 리뷰일 경우 썸네일 표시
>![리뷰상세](https://user-images.githubusercontent.com/119827260/233028402-785ec472-b486-49a9-a5e4-242d39513d40.png)
>- 상세리뷰
>   +  리뷰 등록시 첨부한 이미지 표시
>   +  해당 제품 썸네일/이름 표시
>   +  상품정보가 나타난 박스 클릭시 해당 제품 페이지로 이동
---

### 유저페이지
---
#### __`회원가입&로그인`__
 
>![회원가입 로그인](https://user-images.githubusercontent.com/119422179/227868099-925909f7-6548-4507-b227-dc2fdc43ecd1.PNG)
>- 세션과 쿠키를 활용해 로그인 유지
>- 카카오 API를 활용한 로그인 회원가입 구현
---
#### __`카테고리 제품 조회`__
>![카테고리 제품 조회](https://user-images.githubusercontent.com/119422179/227868750-e9c50814-ba65-46f2-965c-803fce549a68.PNG)
>+ 카테고리 대분류와 소분류로 제품 조회
>+ 검색으로 조회
---
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
---
#### __`장바구니`__
>![장바구니](https://user-images.githubusercontent.com/119422179/227882726-cdf96a27-e0c7-4d03-aced-68da43e7caf8.PNG)
>- 커스텀 이미지, 제품 옵션 확인
>- 수량변경/삭제 가능
---
#### __`주문서`__
>![주문서1](https://user-images.githubusercontent.com/119422179/227883875-8f3361fc-a4fe-413b-9884-bb9f17b532c0.PNG)
>![주문서2](https://user-images.githubusercontent.com/119422179/227884050-555957e3-b628-4159-9ad5-6ed356933da1.PNG)
>- 주문자 정보는 로그인 되어있는 회원정보로 설정
>- 배송지 정보는 직접 입력 또는 주문자와 동일 선택
>   + 주소는 Daum 우편번호 API 사용
>   + 배송지 저장하면 이전 배송지 정보로 설정
>- Toss Payments API 활용한 결제 구현
>   + 무통장, 삼성페이, 네이버페이, 토스페이
---
#### __`마이페이지`__
>- 나의정보
>![마이페이지-나의정보](https://user-images.githubusercontent.com/119422179/227887178-fee3346a-a0e3-4bb5-9581-daf3b7d46fc8.PNG)
>- Java Mail API를 활용한 비밀번호 변경
>   + 링크로 비밀번호 변경 페이지로 이동
>- 리뷰작성
>![마이페이지-리뷰](https://user-images.githubusercontent.com/119422179/227887721-beb6dfcf-22a5-4339-afc1-20f146df5b91.PNG)
>- 리뷰작성하기
>   + 구매한 제품의 별점, 리뷰 내용, 첨부 이미지 등록
>   + 작성 가능한 리뷰 : 구매 내역에서 리뷰 작성 가능한 내역
>   + 내가 쓴 리뷰 : 리뷰 작성한 내역
>- 문의내역
>![이전문의내역](https://user-images.githubusercontent.com/119827260/233032967-aec4391d-c4fe-4bb4-a149-008cec1b7f18.png)
>- 이전문의내역
>   + 고객센터 - 1:1 문의를 통해 했던 문의 목록, 최신등록순으로 나타남
>   + 답변유무 아이콘으로 표시
>   + 페이징처리
---
#### __`고객센터`__
>![고객센터](https://user-images.githubusercontent.com/119827260/233031776-ab96f7cc-fa61-42db-a81d-fd0b592acadb.png)
>- 자주하는 질문(FAQ)
>   + 등록된 카테고리값 확인 후 모두 표시
>   + 아코디언박스형식으로 나타냄
>   + 아코디언박스 일부 오픈 가능
>![문의작성](https://user-images.githubusercontent.com/119827260/233031769-9594aea7-d334-4c9a-9f21-9d737f72b721.png)
>- 1:1문의
>   + session 확인 후 비로그인시 로그인요청
>   + 제목 및 내용 미입력시 팝업알림창
>      + 팝업 알림 후 해당 div에 focus
>   + 등록된 카테고리 모두 표시
>   + 이미지 등록
>      + 썸네일 표시 
>      + 썸네일에 표시된 x버튼을 통해 이미지 삭제 가능
>      + 서버에 저장
>   + 게시글 등록이 완료되면 마이페이지-이전문의내역 페이지로 이동
---
### 관리자페이지
---
#### __`관리자로그인`__
>![관리자로그인](https://user-images.githubusercontent.com/119422179/227890757-a6fefcdf-e893-4307-a0e1-0062f32f52c0.PNG)
>- InterCeptor를 활용
>   + `/admin` 이 들어가는 URI는 session 로그인 여부 확인 후 관리자 로그인 페이지로 이동
>   + 로그인시 session에 로그인 여부 저장
---
#### __`관리자 홈화면&대쉬보드`__
>![대쉬보드](https://user-images.githubusercontent.com/119422179/227891921-d604c7c9-a231-42e6-8057-077cc427fd81.PNG)
>- [상단]
>   + 검색바
>   + 로그아웃
>- [네비게이션바]
>   + 카테고리 별 메뉴
>- [대쉬보드]
>   + 월매출 현황 : 올해 월별 판매량, 매출 라인그래프
>   + 주문 현황 : 이번달 카테고리별 주문수 도넛그래프
>   + 신규 주문 : 처리되지 않은 카테고리별 주문 수
>   + 게시판 문의 : 카테고리 별 관리자 답변이 없는 게시글
---
#### __`주문 관리`__
>![주문관리](https://user-images.githubusercontent.com/119422179/227893449-73268263-9332-43e8-b162-7805f6d31cda.PNG)
>- 카테고리별, 회원이름 검색
>- 주문 접수/배송/배송완료/취소/교환/환불 처리
>- 주문 내역 상세보기
---
#### __`제품관리`__
>![제품관리](https://user-images.githubusercontent.com/119422179/227894239-8fa35cc0-49b8-4c5d-87a9-98b77e8f02a6.PNG)
>![제품 등록 수정](https://user-images.githubusercontent.com/119422179/227894367-286fe72b-bbd5-43cd-b210-df7410df4e95.PNG)
>- 카테고리별, 제품명 검색
>- 제품 등록
>   + 메인카테고리
>   + 서브카테고리
>   + 제품명
>   + 제품가격
>   + 제품 이미지
>   + 색상
>      + 색상명
>      + 색상코드
>      + 색상이미지
>   + 사이즈
>   + 상세정보
---
#### __`매출관리`__
>![매출관리](https://user-images.githubusercontent.com/119422179/227896580-af11e4ac-e200-4df3-af0b-f5df956d830e.PNG)
>- 차트
>   + 일일 차트 : 전 일 카테고리 별 판매량 매출량
>   + 요일별 차트 : 전 주 요일 별 판매량 매출량
>   + 월간 차트 : 올해 월 별 판매량 매출량
>   + 기간별 차트 : 특정 기간 판매량 매출량
---
#### __`게시판 관리`__
>![문의게시판](https://user-images.githubusercontent.com/119422179/227897783-4ca9a689-a016-43a2-99c0-1c0a85763aa8.PNG)
>![관리자 답변](https://user-images.githubusercontent.com/119422179/227897808-4695743e-69ed-4e1b-a1fe-68a845c37c8d.PNG)
>- 카테고리별 유저 문의글
>- 해당 글 답변 작성
---
#### __`설정`__
>![설정](https://user-images.githubusercontent.com/119422179/227898292-29064560-0a7f-48d8-9888-588301803ac3.PNG)
>- 메인카테고리 등록/수정/삭제
>   + 카테고리명
>   + 카테고리 색상
>   + 카테고리 아이콘
>- 서브카테고리 등록/수정/삭제
>   + 카테고리명
>   + 메인카테고리
>- 배너
>   + 배너명
>   + 배너이미지
---

## 보완할 점
>-  __제품 옵션 유동성__
>
> 제품 옵션을 유동적으로 구성하는 것은 좋은 기능이지만, 이를 변경하는 기능을 구현하는데 어려움이 있다. 따라서 이 기능을 보완하여 옵션을 유동적으로 구성하면서도, 옵션 변경 기능을 보다 쉽게 구현할 수 있도록 하는 방법을 생각해봐야 한다.
>
> 
>- __카테고리, 배너 경로 등록 미고려__
>
> 카테고리와 배너 등록 시 경로 등록을 고려하지 않으면, 사이트 이용에 크게 의미가 없는 기능이 된다. 웹개발에 경험이 적어 생긴 문제라고 생각하고 이 기능을 보완하여 카테고리와 배너를 보다 쉽게 등록하고, 경로 등록도 함께 고려해야 한다.




