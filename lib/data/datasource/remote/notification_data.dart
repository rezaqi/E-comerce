import 'package:rezaqi_ecommerce/core/class/crud.dart';
import 'package:rezaqi_ecommerce/links.dart';

class NotificationData {
  Crud crud;

  NotificationData(this.crud);

  getData(String userId) async {
    var res = await crud.postData(AppLinks.notification, {"userId": userId});
    return res.fold((l) => l, (r) => r);
  }
}
