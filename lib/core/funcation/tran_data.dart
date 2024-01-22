import 'package:get/get.dart';
import 'package:rezaqi_ecommerce/core/services/services.dart';

TranData(Ar, En) {
  MyServices myServices = Get.find();
  if (myServices.sharedPre.getString("lang") == "ar") {
    return Ar;
  } else {
    return En;
  }
}
