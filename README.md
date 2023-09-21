# 개요
</br>
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/965006bf-b4ae-4e28-a519-8077e7296476" height="461px" width="703px">

</br>
</br>
</br>

> 본 프로젝트는 한국폴리텍대학I 서울정수캠퍼스, 인공지능 소프트웨어과 [3조](https://github.com/PolyQuadO)의 팀 프로젝트 작업물입니다.
>
> 개발 기간 : 2023. 03 ~ 2023. 06 (2개월)
> 
> 개발 언어 :  Dart
>
> 프레임워크:  Flutter
>
> 활용플랫폼 : Android Studio, Firebase

</br>

# 팀에서 맡은 업무

* UX/UI 디자인
* Android Studio, Flutter 초기 환경설정 및 Firebase 연동
* Firestore연동, 로그인 및 페이징 기능구현
* 할일목록 추가, 삭제기능
* 닉네임변경기능
* [완성본 - https://quado-jjkl.web.app/](https://quado-jjkl.web.app/)

</br></br>
# 주요 기능
* 회원가입 및 로그인, 구글로그인
* 일별 일정추가, 업데이트, 삭제(CRUD)
* 닉네임, 프로필 이미지 변경
* 레이아웃 테마변경(흑/백 및 커스텀)

</br></br>
# FIREBASE 초기설정

| 항  목 | 이미지 | 항  목 | 이미지 |
| ------ | ------ | ------ | ------ |
| Firebase</br>기능 | ![image](https://github.com/taeiljung/TodoProject_Backup/assets/101981637/393fcaa8-5914-4d28-a4f9-a307347fa593) | 배포 목록 | ![image](https://github.com/taeiljung/TodoProject_Backup/assets/101981637/4a278f9e-103b-451c-ba17-dcfc693939b1) | 

* authentication
* firestore database
* storage
* hosting

#### 회원가입 및 관리, 데이터베이스 활용, 저장소사용(이미지), 호스팅(배포) 등 기능을 위해 사용했고,
</br>

#### android, web, ios 3가지 기능 모두 포함하여 배포하기위해 앱을 3개 추가하였습니다.

</br></br></br>
# 디자인(Figma)

> [초기 UX/UI 디자인 피그마 프로젝트 ](https://www.figma.com/file/saVDRCGSsypmRSMtZO4w2n/QuadO?type=design&mode=design/) , 작업물 홈페이지로 이동합니다

| 영역 | 이미지 |
| ------ | ------ |
| 전체 초기레이아웃 | ![image](https://github.com/taeiljung/TodoProject_Backup/assets/101981637/fb3553c8-b8b7-40fd-863d-0033c1f77492) |
| 인앱 초기레이아웃 | ![image](https://github.com/taeiljung/TodoProject_Backup/assets/101981637/8ba6cbd5-26dc-4d9b-923a-70c16c2d2950) |

</br></br></br>
# 문제 해결 경험
| 문제 | 해결방법 |
| ------ | ------ |
| 레이아웃 디자인 | figma 사용법을 익힌 후 여러가지 레이아웃을 먼저 구성해본 후 팀원과 상의하여 결정.</br> 디자인은 구글과 유튜브를 참고 </br> 포토샵 사용경험을 바탕으로 비교적 빠르게 제작함.|
| 로그인 이후 다음 페이지에 세션전달문제 | 비동기 메소드 호출과 MaterialPageRoute, context로 해결 |
| 각 페이지간의 테마고정문제  | 데이터베이스에 유저 별 세팅값을 고정 |
| CloudFirestore의 독특한 DB체계</br>NoSQL(컬렉션,문서,필드) | 정보를 체계적으로 정리하여 효율적으로 데이터를 관리할 수 있게 설계 </br>  </br> 전체유저>유저>유저별세팅 -> 세팅값(닉네임, 비밀번호, 테마 등) </br> 전체유저>유저>유저별세팅 -> 할일목록-> 연도_월 -> 일 -> 할일목록|

</br></br></br>
# 실행결과
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/e7a12e03-964d-4398-b103-e19be43b4c46" height="500px" width="250px" align="left">
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/7b2d1834-e464-4793-aff8-8da5d8249e8a" height="500px" width="250px" align="left">
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/e7a12e03-964d-4398-b103-e19be43b4c46" height="500px" width="250px" align="left">

<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/d7203c2b-3d20-43ee-a824-3a5fed1fd6de" height="500px" width="250px" align="left">
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/192413da-068a-424b-a304-669e5845e317" height="500px" width="250px" align="left">
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/98cff37c-3fba-41e5-8521-d2dd706f4251" height="500px" width="250px" align="left">

<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/e8c3fbaf-8f43-4028-bfad-03b605913a37" height="500px" width="250px" align="left">
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/a9b32ca6-6d11-44fa-b1f0-0a01165a9bee" height="500px" width="250px" align="left">
<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/15c19c9a-662c-4b75-a1c7-aad1807efeee" height="500px" width="250px" align="left">

<img src="https://github.com/taeiljung/TodoProject_Backup/assets/101981637/60ef0ccf-063a-4324-9fe8-9514045bcee8" height="500px" width="250px" align="left">

<!--

## ______이하 개발환경 setting 현황_____

## flutter --version   
>Flutter 3.7.11 • channel stable • https://github.com/flutter/flutter.git   
>Framework • revision f72efea43c (5 days ago) • 2023-04-11 11:57:21 -0700   
>Engine • revision 1a65d409c7   
>Tools • Dart 2.19.6 • DevTools 2.20.1   

## dart --version   
> Dart SDK version: 2.19.6 (stable) (Tue Mar 28 13:41:04 2023 +0000) on "windows_x64"   


## dependencies:   
> cupertino_icons: ^1.0.2   
> firebase_database: ^10.1.0   
> firebase_auth: ^4.4.1   
> firebase_core: ^2.9.0   
> cloud_firestore: ^4.5.1   

## flutter doctor 실행 시 ->
> [√] Flutter (Channel stable, 3.7.11, on Microsoft Windows [Version 10.0.22621.1413], locale ko-KR)   
> [X] Windows Version (Unable to confirm if installed Windows version is 10 or greater)   
> [!] Android toolchain - develop for Android devices (Android SDK version 32.0.0)   
>     X Android licenses not accepted. To resolve this, run: flutter doctor --android-licenses   
> [√] Chrome - develop for the web   
> [√] Visual Studio - develop for Windows (Visual Studio Community 2022 17.5.3)   
> [√] Android Studio (version 2022.1)   
> [√] VS Code (version 1.77.1)   
> [√] Connected device (3 available)   
> [√] HTTP Host Availability   

> 추가적으로 dart SDK, flutter SDK 연결필수, firebase의 Cloud Firestore에서 연동된 작업 진행중, android 환경도 이후에 구축예정
-->
