import 'package:get/get.dart';
import 'package:interview/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _navigateToHome();
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


  //goto next page
  void _navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.HOME);
    });
  }

}
