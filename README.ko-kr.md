# flutter_getx_boilerplate

## master branch: Fluter 3.0.5 version

## Flutter-2.x branch: Flutter 2.x version

**언어들: [영어](README.md), [중국어](README.zh-cn.md).** , 한국어(this file)

## 소개

내가 플러터를 공부하면서, 나는 bloc를 이용해서 상태관리를 하였다. 우연히 GetX를 통해서 상태 관리하는 것을 발견했다. 리드미를 통해서 나는 GetX가 얼마나 배우기 쉬운지 찾았다. 그래서 나는 GetX 스타터 프로젝트를 쓰고자 하였다. 이 스타터 프로젝트는 나에게 도움이 될 뿐만 아니라, 다른 사람들이 보일러플레이트를 빨리 구축할 수 있도록 도와준다. 이 보일러플레이트를 구축하기 전에 나는 비슷한 프로젝트들을 많이 찾았고, 그것들은 상대적으로 너무 간단하다는 것을 알게 되었다. 그들은 또한 프로젝트가 공통으로 가져야 할 기능들조차 가지지 않았다. 그래서 나는 보일러플레이트를 하나하나 혼자서 쓰기로 마음먹었다. 아래에 그것들을 하나씩 소개하겠다.

## Technology & Project Introduction

플러터 2.x 을 사용해서 폴더구조, 스타일 테마, API 접근, 상태관리, 라우팅 & 종속성, 기타 등을 구축하였다. 이 프로젝트 구조는 간단하고 플러터 템플릿 프로젝트로 사용될 수 있다. 사용되는 기술은 [Flutter](https://flutter.cn/), [Dart](https://dart.dev/), [GetX](https://pub.dev/packages/get) 등 이지만 이 기술들에만 국한되지 않는다.

<p align='center'>
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/2.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/3.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/4.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/5.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/6.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/7.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/8.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/9.jpg" width="187" heght="333" />
    <img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/chat.gif" width="237px" heght="416px" />
</p>

## 설치 및 사용법

**Step 1:**

당신의 로컬로 이 프로젝트를 클론 받으세요.:

```
git clone https://github.com/KevinZhang19870314/flutter_getx_boilerplate.git
```

**Step 2:**

폴더구조를 vscode 를 통해서 열고 다음과 같은 명령어를 실행시켜서 종속 패키지들을 설치해주세요.

```
flutter pub get
```

**Step 3:**

lib 폴더 안에 있는 main.dart파일을 열고 프로젝트를 실행시키기 위해서 F5 혹은 Ctrl + F5 를 클릭해주세요. 그러면 디버깅 모드를 시작할 수 있습니다.

## 폴더 구조

하기는 프로젝트에 사용된 폴더구조입니다(lib 폴더 안에 있는 구조만 설명합니다)
영어가 더 자연스러우므로 번역하지 않았습니다.

```
lib/
|- api - Global Restful api requests, including interceptors, etc.
   |- interceptors - Interceptors, including auth, request, and response interceptors.
   |- api.dart - Restful api export file.
|- lang - Internationalization, including translation files, translation service files, etc.
   |- lang.dart - Language export file.
|- models - Various structured entity classes, divided into request and response entities.
   |- models.dart - Entity class export file.
|- modules - Business module folder.
   |- auth - Login & Registration Module.
   |- home - Home module.
   |- splash - Splash module.
   |- modules.dart - Module export file.
|- routes - Routing module.
   |- app_pages.dart - Routing page configuration.
   |- app_routes.dart - Route names.
   |- routes.dart - Route export file.
|- Shared - Global shared folders, including static variables, global services, utils, global Widgets, etc.
   |- shared.dart - Global shared export file.
|- theme - Theme folder.
|- app_bindings.dart - Services started before the app runs, such as Restful api.
|- di.dart - Global dependency injection objects, such as SharedPreferences, etc.
|- main.dart - Main entry.
```

## Other

보일러 플레이트에 사용되는 몇가지 Restful api 들이 있기 때문에 이것을 제공합니다. 사용되는 유저는 하기와 같습니다.
[REQ|RES](https://reqres.in/).

이 User 를 이용해서 테스트하세요.:

    email: "eve.holt@reqres.in",
    password: "pistol"
