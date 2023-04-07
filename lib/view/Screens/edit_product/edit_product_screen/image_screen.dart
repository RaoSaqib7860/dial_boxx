import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class ImageScreen extends StatefulWidget {
  final int? index;
  const ImageScreen({this.index,Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 13.h,
                  width: 90.w,
                  //color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 10.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.withAlpha(50),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1)
                        ),
                        child: Center(
                          child: Icon(Icons.image,color: AppColors.primaryColor,size: 35,),
                        ),
                      ),
                      SizedBox(width: 4.w,),
                      Stack(
                        children: [
                          Container(
                            height: 10.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                                color: Colors.grey.withAlpha(50),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey.shade100,spreadRadius: 1,offset: Offset(1, 1)),
                                  BoxShadow(color: Colors.grey.shade100,spreadRadius: 1,offset: Offset(-1, -1)),
                                ]
                            ),
                            child: Center(
                              child: Icon(Icons.image,color: AppColors.primaryColor,size: 35,),
                            ),
                          ),
                          Positioned(
                            left: 16.w,
                              top: -1.w,
                              child: Container(
                                height: 2.h,
                                width: 5.w,
                                color: Colors.white,
                                child: Center(
                                  child: Icon(Icons.close,size: 15,),
                                ),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5.w),
                      child: Text(
                        'Add Product Image (upto 7)',
                        style: TextStyle(color: Colors.grey,fontSize: 12.6.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 6.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 3.5.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Save Changes',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w,),
                      Container(
                        height: 3.5.h,
                        width: 17.w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
