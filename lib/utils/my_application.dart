import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_/controllers/app_controller.dart';
import 'package:application_/data/common/params_args.dart';

MyApplication app = MyApplication();

class MyApplication {
  static final MyApplication _myApplication = MyApplication._i();
  AppController _appController = Get.find(tag: ParamsArgus.APP);

  factory MyApplication() {
    return _myApplication;
  }

  MyApplication._i() {}

  AppController get appController {
    return _appController;
  }
}
