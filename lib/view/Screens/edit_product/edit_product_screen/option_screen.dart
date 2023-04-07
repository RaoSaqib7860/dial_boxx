import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class OptionScreen extends StatefulWidget {
  final int? index;
  const OptionScreen({this.index,Key? key}) : super(key: key);

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController name2Controller = TextEditingController();
  bool value = false;
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                                  height: 33.h,
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
                                      Row(
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                            child: Text(
                                              'Add Option',
                                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.3.h),
                                        child: Container(
                                          height: 5.h,
                                          child: TextField(
                                            controller: nameController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'Option Name',
                                              labelText: 'Option Name',
                                              labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                                              hintStyle: TextStyle(fontSize: 12.sp),
                                              contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2.h,),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                        child: Container(
                                          height: 5.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(2),
                                            border: Border.all(width: 1,color: Colors.black26)
                                          ),
                                          child: Padding(
                                            padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                            child: DropdownButton(
                                              underline: Container(),
                                              isExpanded: true,
                                              value: dropdownvalue,
                                              items: items.map((String items) {
                                                return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items,style: TextStyle(color: Colors.black54),),
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
                                        ),
                                      ),
                                      SizedBox(height: 2.h,),
                                      Container(
                                        height: 3.2.h,
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              activeColor: Colors.black,
                                              value: value,
                                              onChanged: (value) {
                                                setState(() {
                                                  value = value;
                                                });
                                              },
                                            ),
                                            Text(
                                              'Required',
                                              style: TextStyle(fontSize: 12.sp),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 2.h,),
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
                        width: 25.w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Center(
                          child: Text(
                            'Add new option',
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
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(1, 1)),
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(-1, -1)),
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 4.w,),
                          child: Container(
                            height: 3.h,
                            width: 65.w,
                            child: TextField(
                              style: TextStyle(fontSize: 12.sp),
                              controller: name2Controller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                hintText: 'Name',
                               // labelText: 'Name',
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
