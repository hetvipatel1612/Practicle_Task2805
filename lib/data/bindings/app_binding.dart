import 'package:application_/controllers/app_controller.dart';
import 'package:application_/data/common/params_args.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController(), tag: ParamsArgus.APP, fenix: true);
  }
}
