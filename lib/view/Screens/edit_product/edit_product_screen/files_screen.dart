import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class FilesScreen extends StatefulWidget {
  final int? index;
  const FilesScreen({this.index,Key? key}) : super(key: key);

  @override
  State<FilesScreen> createState() => _FilesScreenState();
}

class _FilesScreenState extends State<FilesScreen> {
  TextEditingController urlController = TextEditingController();
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your customer will receive automatically\nthe download link via email',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),

                          ),
                          isScrollControlled: true,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: SingleChildScrollView(
                                child: Container(
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(Icons.close))),
                                      ),
                                      SizedBox(height: 5.h,),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                            child: Text(
                                              'Add New File',
                                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 7.h,),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                        child: Container(
                                          height: 4.h,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(3)
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Save Changes',
                                              style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 3.5.h,
                        width: 23.w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Center(
                          child: Text(
                            'Create file',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(1, 1)),
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(-1, -1)),
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 4.w),
                              child: Text(
                                  'URL',
                              style: TextStyle(fontSize: 10.sp,color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 0.4.h,),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 4.w,right: 4.w,),
                              child: Container(
                                height: 3.h,
                                width: 65.w,
                                child: TextField(
                                  style: TextStyle(fontSize: 12.sp),
                                  controller: urlController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                    hintText: 'http://youtube/username.com',
                                    labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                                    hintStyle: TextStyle(fontSize: 10.sp),
                                    contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.edit_square,color: AppColors.primaryColor,size: 17,),
                            SizedBox(width: 1.w,),
                            Icon(Icons.delete,color: Colors.red,size: 17,),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          'Save Changes',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
