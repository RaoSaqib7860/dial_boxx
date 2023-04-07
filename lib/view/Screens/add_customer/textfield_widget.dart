import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget textFieldWidget({
  String? hint,
  String? name,
  TextEditingController? controller
}){
  return Column(
    children: [
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
      SizedBox(height: 1.h,),
      Padding(
        padding:  EdgeInsets.only(left: 7.w,right: 7.w),
        child: Container(
          height: 3.5.h,
          //width: 90.w,
          child: Padding(
            padding:  EdgeInsets.only(top: 1.3.h),
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