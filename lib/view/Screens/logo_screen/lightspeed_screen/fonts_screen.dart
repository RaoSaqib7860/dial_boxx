import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class FontScreen extends StatefulWidget {
  final int? index;
  const FontScreen({this.index,Key? key}) : super(key: key);

  @override
  State<FontScreen> createState() => _FontScreenState();
}

class _FontScreenState extends State<FontScreen> {
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
             // height: 20.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1,color: Colors.black26)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,left: 4.w),
                    child: Text(
                      'Fonts',
                      style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 4.w),
                    child: Text(
                      'Choose from a list of 15+ different font families.',
                      style: TextStyle(
                          fontSize: 12.sp
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                    child: Text(
                      'Font Family',
                      style: TextStyle(fontSize: 13.sp,color: Colors.black),
                    ),
                  ),
                  // SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                    child:
                    DropdownButton(
                      isExpanded: true,
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                      hint:  Text(
                        "Font Family",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h,)
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
             // height: 32.h,
              width: 90.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black26),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,top: 1.5.h),
                        child: Text(
                          'Colors',
                          style: TextStyle(fontSize: 15.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 4.w),
                    child: Text(
                      'Set your main colors according to your trending.',
                      style: TextStyle(
                          fontSize: 13.5.sp
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 2.w),
                          child: Text(
                            'Primary Color',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black26,)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 1.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Red Color',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),
                                ),
                                Container(
                                  height: 3.h,
                                  width: 6.w,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 0.5.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 2.w),
                          child: Text(
                            'Secondary Color',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black26,)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 1.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Red Color',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),
                                ),
                                Container(
                                  height: 3.h,
                                  width: 6.w,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 0.5.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 2.w),
                          child: Text(
                            'Menu Bar Color',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp,color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black26,)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 1.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Red Color',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),
                                ),
                                Container(
                                  height: 3.h,
                                  width: 6.w,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h,)
                ],
              ),
            ),
            SizedBox(height: 8.h,),
            Container(
              height: 6.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text(
                  'Update',
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
