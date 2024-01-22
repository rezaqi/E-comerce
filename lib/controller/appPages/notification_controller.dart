import 'package:get/get.dart';
import 'package:rezaqi_ecommerce/core/class/status_request.dart';
import 'package:rezaqi_ecommerce/core/funcation/handling.dart';
import 'package:rezaqi_ecommerce/core/services/services.dart';
import 'package:rezaqi_ecommerce/data/datasource/remote/notification_data.dart';

abstract class NotificaionController extends GetxController {
  NotificationData notificationData = NotificationData(Get.find());
  MyServices myServices = Get.find();
  StatusRequest statusRequest = StatusRequest.loading;

  List data = [];
  viewNotification();
}

class NotificaionControllerImp extends NotificaionController {
  @override
  void onInit() {
    viewNotification();
    super.onInit();
  }

  @override
  viewNotification() async {
    statusRequest = StatusRequest.loading;
    update();
    var res =
        await notificationData.getData(myServices.sharedPre.getString("id")!);
    statusRequest = handling(res);
    if (statusRequest == StatusRequest.succes) {
      if (res["status"] == "success") {
        print("ko");
        data.addAll(res["data"]);
      } else {
        statusRequest = StatusRequest.empty;
      }
    }
    update();
  }
}
