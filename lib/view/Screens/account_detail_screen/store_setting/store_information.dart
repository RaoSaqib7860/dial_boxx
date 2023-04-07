import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';
import '../../../custom_widgets/custom_widgets/common_widgets.dart';


class StoreInnfoScreen extends StatefulWidget {
  final int? inndex;
  const StoreInnfoScreen({this.inndex,Key? key}) : super(key: key);

  @override
  State<StoreInnfoScreen> createState() => _StoreInnfoScreenState();
}

class _StoreInnfoScreenState extends State<StoreInnfoScreen> {
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController orderController = TextEditingController();
  TextEditingController currencyNameController = TextEditingController();
  TextEditingController currencyIconController = TextEditingController();
  TextEditingController taxController = TextEditingController();
  TextEditingController desController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              customTextField(name: 'Store Name*',hint: 'DECORAY',controller: nameController),
              customDropDown(name: 'Business Industry*',dropDownValue: dropdownvalue,item: items),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Store Discription*',
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
              SizedBox(height: 2.h,),
              customTextField(name: 'Notification & Reply-to-email',hint: 'abc@gmail.com',controller: emailController),
              customTextField(name: 'Order ID Format(Prefix)',hint: '#DECORAY',controller: orderController),
              customDropDown(name: 'Currency Position',dropDownValue: dropdownvalue,item: items),
              SizedBox(height: 2.h,),
              customTextField(name: 'Currency Name',hint: 'Rs.',controller: currencyNameController),
              customTextField(name: 'Currency Icon',hint: 'Rs.',controller: currencyIconController),
              customTextField(name: 'Tax',hint: '0.0',controller: taxController),
              customDropDown(name: 'I will sale(Shop Type)',dropDownValue: dropdownvalue,item: items),
              SizedBox(height: 2.h,),
              customDropDown(name: 'Order Receive Method',dropDownValue: dropdownvalue,item: items),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h),
                child: Row(
                  children: [
                    Text(
                      'Order Receive Method',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                height: 5.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 15.0,right: 8,top: 6),
                        child: Container(
                          height: 3.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.withAlpha(100),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                            child: Text(
                              'Eng',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12.w,
                          bottom: 2.5.h,
                          child: Container(
                            height: 3.h,
                              width: 3.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black38,width: 1)
                              ),
                              child: Center(child: Icon(Icons.close_rounded,size: 10,)))),
                    ],
                  );
                },),
              ),
              SizedBox(height: 5.h,),
              Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Next',
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
  Widget customDropDown({
    String? dropDownValue,
    String? name,
    List<String>? item
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
        Padding(
          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
          child: DropdownButton(
            isExpanded: true,
            value: dropDownValue,
            items: item!.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue;
              });
            },
            hint:  Text(
              "Font Family",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
