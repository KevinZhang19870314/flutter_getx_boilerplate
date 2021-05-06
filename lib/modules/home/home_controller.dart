import 'dart:math';

import 'package:flutter_getx_boilerplate/api/api.dart';
import 'package:flutter_getx_boilerplate/models/response/users_response.dart';
import 'package:flutter_getx_boilerplate/modules/home/home.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  var currentTab = MainTabs.home.obs;
  var users = Rxn<UsersResponse>();
  var user = Rxn<Datum>();

  late MainTab mainTab;
  late DiscoverTab discoverTab;
  late ResourceTab resourceTab;
  late InboxTab inboxTab;
  late MeTab meTab;

  @override
  void onInit() async {
    super.onInit();

    mainTab = MainTab();
    loadUsers();

    discoverTab = DiscoverTab();
    resourceTab = ResourceTab();
    inboxTab = InboxTab();
    meTab = MeTab();
  }

  Future<void> loadUsers() async {
    var _users = await apiRepository.getUsers();
    if (_users!.data!.length > 0) {
      users.value = _users;
      users.refresh();
      _saveUserInfo(_users);
    }
  }

  void signout() {
    var prefs = Get.find<SharedPreferences>();
    prefs.clear();

    // Get.back();
    NavigatorHelper.popLastScreens(popCount: 2);
  }

  void _saveUserInfo(UsersResponse users) {
    var random = new Random();
    var index = random.nextInt(users.data!.length);
    user.value = users.data![index];
    var prefs = Get.find<SharedPreferences>();
    prefs.setString(StorageConstants.userInfo, users.data![index].toRawJson());

    // var userInfo = prefs.getString(StorageConstants.userInfo);
    // var userInfoObj = Datum.fromRawJson(xx!);
    // print(userInfoObj);
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return 0;
      case MainTabs.discover:
        return 1;
      case MainTabs.resource:
        return 2;
      case MainTabs.inbox:
        return 3;
      case MainTabs.me:
        return 4;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.home;
      case 1:
        return MainTabs.discover;
      case 2:
        return MainTabs.resource;
      case 3:
        return MainTabs.inbox;
      case 4:
        return MainTabs.me;
      default:
        return MainTabs.home;
    }
  }
}
