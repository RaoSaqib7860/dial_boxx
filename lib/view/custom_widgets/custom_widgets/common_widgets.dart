import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget customTextField({
  String? hint,
  String? name,
  TextEditingController? controller
}){
  return Column(
    children: [
      Padding(
        padding:  EdgeInsets.only(left: 4.w,right: 4.w),
        child: Row(
          children: [
            Text(
              name!,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      SizedBox(height: 1.5.h,),
      Padding(
        padding:  EdgeInsets.only(left: 4.w,right: 4.w),
        child: Container(
          height: 3.h,
          //width: 90.w,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: hint,
              hintStyle: TextStyle(fontSize: 11.sp)
              //contentPadding: EdgeInsets.only(top: 0.002.h)
            ),
          ),
        ),
      ),
      SizedBox(height: 3.h,),
    ],
  );
}

