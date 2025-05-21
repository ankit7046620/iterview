import 'package:get/get.dart';

import '../../../core/network/api_manger.dart';
import '../../connectivity/controllers/connectivity_controller.dart';
import 'package:dio/dio.dart' as diopackage;
class HomeController extends GetxController {
  //TODO: Implement HomeController
  final internetController = Get.find<ConnectivityController>();


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  getProductDetails() async {



    diopackage.Response finalData = await APIServices.getMethodWithoutHeaderDio(
      apiUrl: "apiUrl",
      isShowLoader: true,
    );

    if (finalData.statusCode == 200 && finalData.data != null) {
       //sucess logic
    } else if (finalData.statusCode == 400) {
      Get.rawSnackbar(message: "Bad Request");
    } else {
      Get.rawSnackbar(message: "Something went to wrong");
    }
  }
}
