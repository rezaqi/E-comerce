import 'package:get/get.dart';
import 'package:rezaqi_ecommerce/core/class/status_request.dart';
import 'package:rezaqi_ecommerce/core/funcation/handling.dart';
import 'package:rezaqi_ecommerce/core/services/services.dart';
import 'package:rezaqi_ecommerce/view/screens/myfavorite.dart';
import '../../data/datasource/remote/favorite_data.dart';

class MyfavoriteController extends GetxController {
  FavoriteData favoriteData = FavoriteData(Get.find());
  MyServices myServices = Get.find();
  late StatusRequest statusRequest;
  List data = [];

  @override
  initData() {
    getData();
  }

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  @override
  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var res =
        await favoriteData.myfavorite(myServices.sharedPre.getString("id")!);
    statusRequest = handling(res);
    if (statusRequest == StatusRequest.succes) {
      if (res["status"] == "success") {
        //    List resData = res['data'];
        data.addAll(res["data"]);
      } else {
        statusRequest = StatusRequest.empty;
      }
      update();
    }
  }

  @override
  deletData(String id) {
    data.clear();
    var res = favoriteData.removeMyfavorite(id);

    data.removeWhere((element) => element['favorite_id'] == id);
    onInit();
  }
}
