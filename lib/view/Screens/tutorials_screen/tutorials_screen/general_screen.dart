import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class GeneralScreen extends StatefulWidget {
  final int? index;
  const GeneralScreen({this.index,Key? key}) : super(key: key);

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(left: 5.w,right: 5.w,bottom: 2.h),
          child: Container(
            height: 25.h,
            width: 90.w,
            child: Column(
              children: [
                Container(
                  height: 20.h,
                  color: Colors.grey.withAlpha(100),
                  child: Center(
                    child: Icon(Icons.play_circle_fill,size: 60,color: AppColors.primaryColor,),
                  ),
                ),
                Expanded(
                    child: Container(
                      color: AppColors.primaryColor,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.w),
                        child: Row(
                          children: [
                            Text(
                              'How to connect your domain name',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        );
      },),
    );
  }
}
