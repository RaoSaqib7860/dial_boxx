import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget commonTextField({
  String? hint,
  String? name,
  TextEditingController? controller
}){
  return Column(
    children: [
      SizedBox(height: 1.h,),
      Padding(
        padding:  EdgeInsets.only(left: 7.w,right: 7.w),
        child: Row(
          children: [
            Text(
              name!,
              style: TextStyle(color: Colors.black87.withAlpha(150),fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      SizedBox(height: 0.6.h,),
      Padding(
        padding:  EdgeInsets.only(left: 7.w,right: 7.w),
        child: Container(
          height: 3.h,
          //width: 90.w,
          child: TextField(
            controller: controller,
            style: TextStyle(fontSize: 13.sp),
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(fontSize: 12.sp),
            ),
          ),
        ),
      ),
      SizedBox(height: 3.h,),
    ],
  );
}

Widget widgetTextField({
  String? hint,
  String? name,
  TextEditingController? controller
}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 1.h,),
      Padding(
        padding:  EdgeInsets.only(left: 7.w,right: 7.w),
        child: Text(
          name!,
          style: TextStyle(color: Colors.black87.withAlpha(150),fontWeight: FontWeight.bold,),
        ),
      ),
      SizedBox(height: 0.6.h,),
      Padding(
        padding:  EdgeInsets.only(left: 7.w,right: 7.w),
        child: Container(
          height: 3.h,
          width: 35.w,
          child: TextField(
            controller: controller,
            maxLines: 1,
            style: TextStyle(fontSize: 13.sp),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(fontSize: 12.sp),
            ),
          ),
        ),
      ),
      SizedBox(height: 3.h,),
    ],
  );
}