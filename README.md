- 프로젝트 이름 : 무야호텔(반려견 호텔)
- 프로젝트 환경 : Java(1.8), Spring MVC, Mybatis, Oracle, JSP
- 사용된 외부 API 및 라이브러리 : Datepicker
- 담당 파트 : 객실 예약, 이미지 게시판
- 담당 소스코드 디렉토리 :
  - src/main/java/kr/co/pet
  - src/main/webapp/WEB-INF/views/pet

# 객실 예약 메인 화면
![00](https://github.com/bodoreda/2021muyahotel/assets/78584015/d3195ca8-bdf8-4d20-a72e-77e2cbdfff30)
- 당일 날짜 자동 선택
- 이용중인 객실 현황 표시

# 체크인 날짜 선택
![01](https://github.com/bodoreda/2021muyahotel/assets/78584015/ab722012-2b4f-4197-b727-dbf7d41be4cf)
- 당일 기준 30일 이내 날짜까지 선택 가능
- 날짜 선택시 선택한 날의 객실 현황 표시

# 체크아웃 날짜 선택
![02](https://github.com/bodoreda/2021muyahotel/assets/78584015/f639e235-f72a-4a66-bcba-0434b04c27e9)
- 체크인 기준 30일 이내 날짜까지 선택 가능
- 날짜 선택시 선택 범위(체크인~아웃)의 객실 현황이 표시됨(예약 불가능한 객실 확인 가능)

# 객실 선택
![03](https://github.com/bodoreda/2021muyahotel/assets/78584015/b26c43fa-b0e1-4fff-829f-020687cf0347)
- 최대 2개 객실 선택 가능
- 선택한 객실과 이용기간에 따른 예상 요금 표시

# 객실 예약
![04](https://github.com/bodoreda/2021muyahotel/assets/78584015/f716a6d0-5475-4368-8cda-4df67030146d)
- 예약 정보(객실 번호, 회원아이디, 체크인/아웃 날짜 등)를 DB에 저장
- 2개 객실 예약시 각각의 row로 저장

--------------------------------------------------------------------

# 이용 후기 게시판 메인 화면
![img1 daumcdn](https://github.com/bodoreda/2021muyahotel/assets/78584015/2a40ddc5-57f8-4eaa-beef-f3d9be981c47)

# 게시글 작성
![05](https://github.com/bodoreda/2021muyahotel/assets/78584015/33149ee6-4c4f-499f-ac23-a9c83d04474f)
![06](https://github.com/bodoreda/2021muyahotel/assets/78584015/9f93aa83-8aaa-43e3-8bb1-e1ee793df199)
- 별점 선택 가능
- 첨부이미지 최대 2개, 용량 총합 제한 10MB, 이미지 파일 확장자만 업로드 가능
- 이미지 미등록시 MuyaHotel로고 이미지 표시
- 내용 글자수 제한 및 실시간 표시

# 게시글 수정
![07](https://github.com/bodoreda/2021muyahotel/assets/78584015/ded9ed20-c103-48b4-b8fe-4464a4165e77)

# 게시글 삭제
![08](https://github.com/bodoreda/2021muyahotel/assets/78584015/545270fa-f29f-466b-9dde-f7ba960d381d)

# 게시글 열람
![09](https://github.com/bodoreda/2021muyahotel/assets/78584015/81dcbdc1-3a29-4317-85a3-8531c765c55b)
![10](https://github.com/bodoreda/2021muyahotel/assets/78584015/41b41f4b-0ebf-4cd7-8ba0-cba92d4fb1e4)
![11](https://github.com/bodoreda/2021muyahotel/assets/78584015/a3e14433-bd0f-44fb-b34c-467694e71ad6)
- ajax 비동기 처리를 이용하여 페이지 리로드 없이 게시글 열람
- 페이지 네비
- 본문 이미지 클릭시 원본 이미지 modal 팝업 표시

