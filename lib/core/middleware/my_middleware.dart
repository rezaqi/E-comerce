import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rezaqi_ecommerce/core/constant/routs_name.dart';
import 'package:rezaqi_ecommerce/core/services/services.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices _myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (_myServices.sharedPre.getString("step") == "2") {
      return const RouteSettings(name: AppRouts.homeScreen);
    }
    if (_myServices.sharedPre.getString("step") == "1") {
      return const RouteSettings(name: AppRouts.auth);
    }
  }
}
