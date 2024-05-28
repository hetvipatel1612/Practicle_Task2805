import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:application_/models/rating_model.dart';

import '../../res/app_color.dart';
import '../../utils/widget_util.dart';

class ProductDetails extends StatefulWidget {
  String? image;
  String? title;
  String? description;
  RatingModel? ratingModel;
  double? price;
  ProductDetails(
      this.image, this.title, this.description, this.ratingModel, this.price);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 350,
                height: 350,
                //alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: ExtendedImage.network(widget.image ?? "", cache: true),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.w),
              child: Text(widget.title ?? "",
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.w),
              child: Text(widget.description ?? "",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 33.sp,
                      fontWeight: FontWeight.w600)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.star_rate_rounded,
                          color: Colors.orange, size: 45.w),
                      WidgetUtil.spaceHorizontal(5),
                      Text("${widget.ratingModel!.rate}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w500)),
                      Text("(${widget.ratingModel!.count})",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("\$${widget.price}",
                      style: TextStyle(
                          color: appColor.main,
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
