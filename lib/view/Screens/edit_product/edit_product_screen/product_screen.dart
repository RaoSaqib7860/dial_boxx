import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../../services/colors/app_colors.dart';
import '../../../custom_widgets/custom_widgets/common_widgets.dart';

class ProductScreen extends StatefulWidget {
  final int? index;
  const ProductScreen({this.index,Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController slugController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController featuresController = TextEditingController();
  TextEditingController desController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  bool _value = false;
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
              customTextField(name: 'Product Name',hint: 'Lamp',controller: nameController),
              customTextField(name: 'Slug',hint: 'Lamp',controller: slugController),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Short Discription',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.5.h,),
              Container(
                height: 11.h,
                width: 88.w,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  textAlign: TextAlign.left,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  style: TextStyle(fontSize: 12.sp),
                  controller: desController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                    labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                    hintStyle: TextStyle(fontSize: 10.sp),
                    contentPadding: EdgeInsets.only(top: 1.h,left: 2.w,right: 2.w),
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Product Content',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.5.h,),
              Container(
                height: 11.h,
                width: 88.w,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  textAlign: TextAlign.left,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  style: TextStyle(fontSize: 12.sp),
                  controller: contentController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                    labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                    hintStyle: TextStyle(fontSize: 10.sp),
                    contentPadding: EdgeInsets.only(top: 1.h,left: 2.w,right: 2.w),
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Brand',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: DropdownButton(
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
              SizedBox(height: 2.h,),
              customTextField(name: 'Category',hint: 'None',controller: categoryController),
              customTextField(name: 'Features',hint: 'None',controller: featuresController),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                child: Row(
                  children: [
                    FlutterSwitch(
                      width: 10.w,
                      height: 2.7.h,
                      valueFontSize: 25.0,
                      toggleSize: 16,
                      value: _value,
                      borderRadius: 30.0,
                      padding: 1,
                      showOnOff: false,
                      onToggle: (val) {
                        setState(() {
                          _value = val;
                        });
                      },
                    ),
                    SizedBox(width: 15.w,),
                    Text(
                        'Published'
                    ),

                  ],
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
              SizedBox(height: 4.h,)
            ],
          ),
        ),
      ),
    );
  }
}
