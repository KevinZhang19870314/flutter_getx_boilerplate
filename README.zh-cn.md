# flutter_getx_boilerplate

## master branch: Fluter 3.0.5 version

## Flutter-2.x branch: Flutter 2.x version

**语言: [English](README.md), 中文 (这个文件).**, [韩文](README.ko-kr.md)

## 介绍

在我学习 Flutter 期间，我一直使用的是 flutter_bloc 状态管理框架，无意间看到 GetX 状态管理框架，通过 ReadMe 发现 GetX 框架非常容易入门，于是想一边学习一边写一个 GetX 的 Starter 项目，不仅可以帮助自己学习，也可以帮助他人快速搭建框架。搭建这个框架之前我搜索了很多类似的框架，发现都比较简单，没有一个涵盖项目该有的通用的东西，于是萌发了自己写一个的想法。下面让我逐一介绍。

## 技术 & 项目介绍

[Flutter - GetX 状态管理](https://juejin.cn/post/6950514701969129486)

使用 Flutter 2.x 搭建的一套包含预定义的文件夹结构、样式主题、API 访问、状态管理、路由 & 依赖等的框架。项目结构清晰，可以很方便的作为 Flutter 的模板项目来使用。使用技术包括但不限于[Flutter](https://flutter.cn/)、[Dart](https://dart.dev/)、[GetX](https://pub.dev/packages/get)等。

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

## 安装 & 使用

**Step 1:**

Fork 本项目到自己的仓库：

```
git clone https://github.com/KevinZhang19870314/flutter_getx_boilerplate.git
```

**Step 2:**

用 VS Code 打开项目文件夹，执行以下命令安装依赖包：

```
flutter pub get
```

**Step 3:**

打开 lib 文件夹下的 main.dart 文件，F5 或者 Ctrl + F5 运行项目，然后就可以开始开发调试了。

## 文件夹结构

下面是项目文件夹结构(只介绍 lib 下面的文件夹)

```
lib/
|- api - 全局Restful api请求，包括请求拦截器等
   |- interceptors - 拦截器，包括auth、request、response拦截
   |- api.dart - Restful api导出文件
|- lang - 国际化，包含翻译文件，翻译服务文件等
   |- lang.dart - 语言导出文件
|- models - 各种结构化实体类，分为request和response两种类型的实体
   |- models.dart - 实体类导出文件
|- modules - 业务模块文件夹
   |- auth - 登录&注册模块
   |- home - 首页模块
   |- splash - splash模块
   |- modules.dart - 模块导出文件
|- routes - 路由模块
   |- app_pages.dart - 路由页面配置
   |- app_routes.dart - 路由名称
   |- routes.dart - 路由导出文件
|- Shared - 全局共享文件夹，包括静态变量、全局services、utils、全局Widget等
   |- shared.dart - 全局共享导出文件
|- theme - 主题文件夹
|- app_bindings.dart - 在app运行之前启动的服务等，如Restful api
|- di.dart - 全局依赖注入对象，如SharedPreferences等
|- main.dart - 导出类，用作外面调用api请求主入口
```

## 其他

在编写过程中，因为涉及到 Restful api 的调用，这里我使用了[REQ|RES](https://reqres.in/)提供的免费测试 api。

测试使用的用户如下:

    邮箱: "eve.holt@reqres.in",
    密码: "pistol"

感兴趣的朋友扫码进 Flutter & Web 技术交流群，我们一起讨论 Flutter 的未来。

<img src="https://github.com/KevinZhang19870314/flutter_getx_boilerplate/blob/master/assets/screenshot/weixin.png" width="187" heght="333" />
