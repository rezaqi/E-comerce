import 'package:rezaqi_ecommerce/links.dart';

import '../../../core/class/crud.dart';

class OrderData {
  Crud crud;

  OrderData(this.crud);

  orderAdd(Map data) async {
    var res = await crud.postData(AppLinks.order, data);
    return res.fold((l) => l, (r) => r);
  }
}
