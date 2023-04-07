import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets/common_widgets.dart';
import '../edit_product/edit_product.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  bool _value = false;
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController sDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController skuController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.blue,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: CircleAvatar(
              radius: 10.sp,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.person,
                size: 18.sp,
                color: AppColors.whitColor,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderContainer(
                  text: "Add Product",
                ),
                SizedBox(height: 2.h,),
                customTextField(name: 'Product Name*',hint: 'Lamp',controller: nameController),
                Row(
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                          child: Text(
                            'Price*',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 1.5.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                          child: Container(
                            height: 3.h,
                            width: 40.w,
                            child: TextField(
                              controller: priceController,
                              decoration: InputDecoration(
                                  hintText: 'Rs. Price*',
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
                            'Discount Type',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 01.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                          child: Container(
                            height: 4.h,
                            width: 40.w,
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
                        ),
                        SizedBox(height: 2.h,),
                      ],
                    )
                  ],
                ),
                customTextField(name: 'Discount Price*',hint: 'Rs. Discount Price*',controller: discountController),
                Row(
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                          child: Text(
                            'Discount Price Start Date',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 1.5.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                          child: Container(
                            height: 3.h,
                            width: 40.w,
                            child: TextField(
                              controller: sDateController,
                              decoration: InputDecoration(
                                  hintText: 'Date',
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
                            'Discount Price End Date',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 01.5.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                          child: Container(
                            height: 3.h,
                            width: 40.w,
                            child: TextField(
                              controller: endDateController,
                              decoration: InputDecoration(
                                  hintText: 'Date',
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
                customTextField(name: 'SKU',hint: '#ABC-123',controller: skuController),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Text(
                        'Manage Stoke'
                      ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20.w),
                    child: FlutterSwitch(
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
                  ),
                    ],
                  ),
                ),
                SizedBox(height: 3.h,),
                customTextField(name: 'Stock Quantity',hint: 'Quantity',controller: quantityController),
                SizedBox(height: 10.h,),
                Container(
                  height: 5.h,
                  width: 85.w,
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProductScreen(),));
        },
      ),
    );
  }
}
