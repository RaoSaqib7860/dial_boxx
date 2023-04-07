
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextField({
  String? hintText,
String? labelText,
Widget? suffixIcon,
  TextEditingController? controller
}){
  return Padding(
    padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.2.h),
    child: Container(
      height: 5.h,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
          hintStyle: TextStyle(fontSize: 12.sp),
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
        ),
      ),
    ),
  );
}

Widget customPinField({
  String? hintText,
  String? labelText,
  Widget? suffixIcon,
  TextEditingController? controller
}){
  return Padding(
    padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.2.h),
    child: Container(
      height: 5.h,
      width: 33.w,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            hintText: hintText,
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
            hintStyle: TextStyle(fontSize: 12.sp),
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
        ),
      ),
    ),
  );
}

