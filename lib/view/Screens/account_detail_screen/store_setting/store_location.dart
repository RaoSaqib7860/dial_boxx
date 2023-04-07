import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';
import '../../../custom_widgets/custom_widgets/common_widgets.dart';

class StoreLocationScreen extends StatefulWidget {
  final int? inndex;
  const StoreLocationScreen({this.inndex,Key? key}) : super(key: key);

  @override
  State<StoreLocationScreen> createState() => _StoreLocationScreenState();
}

class _StoreLocationScreenState extends State<StoreLocationScreen> {
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  TextEditingController companyController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController desController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              customTextField(name: 'Company',hint: 'DECORAY',controller: companyController),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Country',
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
              SizedBox(height: 1.h,),
              customTextField(name: 'Address',hint: 'Office 1, Building1-C,Zamzama',controller: addressController),
              customTextField(name: 'City',hint: 'Karachi',controller: cityController),
              Row(
                children: [
                  Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                        child: Text(
                          'State',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                        child: Container(
                          height: 3.h,
                          width: 40.w,
                          child: TextField(
                            controller: stateController,
                            decoration: InputDecoration(
                                hintText: 'Sindh',
                              hintStyle: TextStyle(fontSize: 11.sp)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h,),
                    ],
                  ),
                  SizedBox(width: 2.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                        child: Text(
                          'Postal/Zip Code',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 01.h,),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                        child: Container(
                          height: 3.h,
                          width: 40.w,
                          child: TextField(
                            controller: zipCodeController,
                            decoration: InputDecoration(
                                hintText: '7500',
                                hintStyle: TextStyle(fontSize: 11.sp)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h,),
                    ],
                  )
                ],
              ),
              customTextField(name: 'Email',hint: 'abc@gmail.com',controller: emailController),
              customTextField(name: 'Phone',hint: '12345666',controller: phoneController),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Invoice Discription',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0.5.h,),
              Container(
                height: 10.h,
                width: 92.w,
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
              SizedBox(height: 15.h,),
              Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
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
