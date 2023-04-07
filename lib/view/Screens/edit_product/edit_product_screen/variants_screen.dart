import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class VariantScreen extends StatefulWidget {
  final int? index;
  const VariantScreen({this.index,Key? key}) : super(key: key);

  @override
  State<VariantScreen> createState() => _VariantScreenState();
}

class _VariantScreenState extends State<VariantScreen> with TickerProviderStateMixin {
  late TabController _controller;
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
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
                    Container(
                      height: 3.5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          'Create Variants',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
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
                  color: Colors.red,
                  child: TabBar(
                    controller: _controller,
                    indicatorWeight: 0.00001,
                    tabs: [
                      Text(
                        'ATTRIBUTES',
                        style: TextStyle(fontSize: 10.sp,color: Colors.white),
                      ),
                      Text(
                        'VALUES',
                        style: TextStyle(fontSize: 10.sp,color: Colors.white),
                      ),
                      Text(
                        'TRASH',
                        style: TextStyle(fontSize: 10.sp,color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(1, 1)),
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(-1, -1)),
                    ],
                  ),
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      Center(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 1.w),
                          child: Row(
                            children: [
                              Container(
                                height: 3.h,
                                width: 38.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black12,width: 1)
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
                                        child: Text(items,style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
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
                              SizedBox(width: 4.w,),
                              Container(
                                height: 3.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black12,width: 1)
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
                                        child: Text(items,style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
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
                              SizedBox(width: 3.w,),
                              Icon(Icons.delete,color: Colors.red,size: 20,),
                            ],
                          ),
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
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
