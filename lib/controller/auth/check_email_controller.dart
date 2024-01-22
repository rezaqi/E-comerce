import 'package:get/get.dart';
import 'package:rezaqi_ecommerce/core/constant/routs_name.dart';

abstract class CheckEmailController extends GetxController {
  check();
  goToSuccesSingUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  @override
  check() {}

  @override
  goToSuccesSingUp() {
    Get.toNamed(AppRouts.succesSingUp);
  }
}
