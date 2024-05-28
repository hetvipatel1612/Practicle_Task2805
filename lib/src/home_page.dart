import 'package:flutter/material.dart';
import 'package:application_/res/app_color.dart';
import 'package:application_/utils/my_application.dart';
import 'package:application_/utils/widget_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/log_util.dart';
import '../widgets/custom_progress_view.dart';
import 'tabs/home_tab.dart';

final title = "HomePage";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final _pageController = PageController(initialPage: 0);
  final _indexNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    app.appController.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: HomeTab(),
    );
  }
}
