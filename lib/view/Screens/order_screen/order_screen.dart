import 'package:dialbox_seller/view/custom_widgets/custom_widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../store_timing_screen/store_timing_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool _value = false;
  bool value = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController landController = TextEditingController();
  TextEditingController hobbyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.blue,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: CircleAvatar(
              radius: 15.sp,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.person,
                size: 22.sp,
                color: AppColors.whitColor,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderContainer(
                text: "Order form",
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 15.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black12,offset: Offset(1, 1),blurRadius: 3),
                    BoxShadow(color: Colors.black12,offset: Offset(-1, -1),blurRadius: 3)
                  ],

                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Guest checkout',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                          CupertinoSwitch(
                            trackColor: Colors.black.withAlpha(150),
                            value: _value,
                            onChanged: (bool value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.h),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            ' custom will be able to check out\n as guests without verify their mobile\n number.'
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 50.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black12,offset: Offset(1, 1),blurRadius: 3),
                    BoxShadow(color: Colors.black12,offset: Offset(-1, -1),blurRadius: 3)
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.h),
                      child: Row(
                        children: [
                          Text(
                            'Checkout form',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    customTextField(
                        hintText: 'Name*',
                        labelText: 'Name*',
                      controller: nameController,
                    ),
                    customTextField(
                        hintText: 'Mobile number*',
                        labelText: 'Mobile number*',
                      controller: mobileController
                    ),
                    customTextField(
                      hintText: 'Email Address(Optional)',
                      labelText: 'Email Address(Optional)',
                      controller: emailController,
                      suffixIcon: Padding(
                        padding:  EdgeInsets.only(top: 1.5.h,left: 2.5.w),
                        child: Text('Edit',style: TextStyle(color: Colors.blue,fontSize: 13.sp),),
                      ),
                    ),
                    customTextField(
                        hintText: 'Country*',
                        labelText: 'Country*',
                      controller: countryController
                    ),
                    customTextField(
                        hintText: 'Address*',
                        labelText: 'Address*',
                      controller: addressController
                    ),
                    Row(
                      children: [
                        customPinField(
                            hintText: 'Pin Code*',
                            labelText: 'Pin Code*',
                          controller: pinController
                        ),
                        SizedBox(width: 2.5.w,),
                        customPinField(
                            hintText: 'City*',
                            labelText: 'City*',
                          controller: cityController
                        ),
                      ],
                    ),
                    customTextField(
                        hintText: 'State*',
                        labelText: 'State*',
                      controller: stateController
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.5.h,),
              Container(
                height: 30.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black12,offset: Offset(1, 1),blurRadius: 3),
                    BoxShadow(color: Colors.black12,offset: Offset(-1, -1),blurRadius: 3)
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.5.h),
                      child: Row(
                        children: [
                          Text(
                            'Advance fields',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.h),
                      child: Row(
                        children: [
                          Text(
                            'Show fields like locality/Area & Landmark at the time\nof checkout',
                            style: TextStyle(color: Colors.black,fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    customTextField(
                      labelText: 'Locality/Area',
                      hintText: 'Locality/Area',
                      controller: areaController
                    ),
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
                              'Require field',
                          style: TextStyle(fontSize: 12.sp),
                          )
                        ],
                      ),
                    ),
                    customTextField(
                        labelText: 'Landmark',
                        hintText: 'Landmark',
                      controller: landController
                    ),
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
                            'Require field',
                            style: TextStyle(fontSize: 12.sp),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 23.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black12,offset: Offset(1, 1),blurRadius: 3),
                    BoxShadow(color: Colors.black12,offset: Offset(-1, -1),blurRadius: 3)
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.5.h),
                      child: Row(
                        children: [
                          Text(
                            'Additional Information',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h,),
                      child: Row(
                        children: [
                          Text(
                            'Create additional fields to collect extra information\nfrom your customer.',
                            style: TextStyle(color: Colors.black,fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.2.h),
                      child: Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 65.w,
                            child: TextField(
                              controller: hobbyController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                  hintText: 'Hobby(Optional)',
                                  labelText: 'Hobby(Optional)',
                                  labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                                  hintStyle: TextStyle(fontSize: 12.sp),
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w,),
                         Icon(Icons.more_vert,color: Colors.black,size: 30,),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Container(
                      height: 4.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red,width: 1)
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.add,color: Colors.red,),
                            Text(
                              'Add Another Fields',
                              style: TextStyle(color: Colors.red,fontSize: 12.sp,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 6.h,),
              Container(
                height: 5.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 4.h,)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => StoreTimingScreen(),));
        },
      ),
    );
  }
}
