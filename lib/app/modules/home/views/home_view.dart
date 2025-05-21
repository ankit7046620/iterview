import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController _controller = Get.put(HomeController());

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Text(
          _controller.internetController.isConnected.value
              ? 'Internet is working'
              : 'Internet is not working',
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
