import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/not_found_page_controller.dart';

class NotFoundPageView extends GetView<NotFoundPageController> {
  const NotFoundPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotFoundPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NotFoundPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
