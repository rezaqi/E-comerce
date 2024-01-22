import 'package:get/get.dart';
import 'package:rezaqi_ecommerce/core/constant/routs_name.dart';

abstract class SuccesSingup extends GetxController {
  check();
  goToLogin();
}

class SuccesSingupImp extends SuccesSingup {
  @override
  check() {}

  @override
  goToLogin() {
    Get.toNamed(AppRouts.login);
  }
}
