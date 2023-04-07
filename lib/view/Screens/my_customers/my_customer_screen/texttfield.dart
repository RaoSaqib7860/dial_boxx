import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget texttFieldWidget({
  String? hint,
  String? name,
  TextEditingController? controller
}){
  return Column(
    children: [
      Padding(
        padding:  EdgeInsets.only(),
        child: Row(
          children: [
            Text(
              name!,
              style: TextStyle(color: Colors.black87.withAlpha(150),fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      SizedBox(height: 1.5.h,),
      Padding(
        padding:  EdgeInsets.only(right: 3.w),
        child: Container(
          height: 3.h,
          //width: 90.w,
          child: Padding(
            padding:  EdgeInsets.only(top: 0.5.h),
            child: TextField(
              controller: controller,
              style: TextStyle(fontSize: 13.sp),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(fontSize: 13.sp),
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 2.h,),
    ],
  );
}