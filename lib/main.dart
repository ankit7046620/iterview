import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/modules/connectivity/controllers/connectivity_controller.dart';
import 'app/routes/app_pages.dart';


void main() async {
  Get.put(ConnectivityController());
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(
    ScreenUtilInit(
        designSize:
        MediaQueryData.fromView(WidgetsBinding.instance.window).size,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          // Get.put(InternetConnectionController());
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            builder: EasyLoading.init(),
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }),
  );
}