import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../discount_coupon/save_coupon.dart';
import 'common_textfield.dart';

class SetupDeliveryScreen extends StatefulWidget {
  const SetupDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<SetupDeliveryScreen> createState() => _SetupDeliveryScreenState();
}

class _SetupDeliveryScreenState extends State<SetupDeliveryScreen> {
  TextEditingController locationController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController houseController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController postalController = TextEditingController();
  TextEditingController gstController = TextEditingController();

  var items = [
    'Select Action',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Select Action';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.menu,color: Colors.blue,size: 22.sp,),
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
                text: "Set up Dialboxx Delivery",
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 15.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: Colors.grey.withAlpha(25),
                    borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 5.w,top: 1.h),
                      child: Text(
                        'Get your Order delivered with Dialboxx Delivery.',
                        style: TextStyle(color: Colors.black45,fontSize: 13.sp),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 2.w),
                      child: Container(
                        height: 7.h,
                        child: Row(
                          children: [
                            Icon(Icons.car_crash,color: AppColors.primaryColor,size: 30,),
                            SizedBox(width: 1.w,),
                            Text(
                                'Pickup\nand Delivery'
                            ),
                            SizedBox(width: 2.w,),
                            Icon(Icons.ad_units_sharp,color: AppColors.primaryColor,size: 30,),
                            SizedBox(width: 1.w,),
                            Text(
                                '1000+\nZip Codes'
                            ),
                            SizedBox(width: 3.w,),
                            Icon(Icons.person_2_outlined,color: AppColors.primaryColor,size: 30,),
                            SizedBox(width: 1.w,),
                            Text(
                                'COD\nAvailable'
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          height: 2.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'HOW IT WORKS',
                              style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 1.h,)
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.only(right: 14.w),
                child: RichText(
                 text: TextSpan(
                   children: [
                     TextSpan(
                       text:  'Pick up Location Details',
                       style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                     ),
                     TextSpan(
                       text:  '(warehouse)',
                       style: TextStyle(fontSize: 13.sp,color: Colors.black),
                     )
                   ]
                 ),
                ),
              ),
              commonTextField(name: 'Pick up Location name*',hint: 'Enter Location/Warehouse name',controller: locationController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: 3.h,top: 1.h),
                    child: Column(
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widgetTextField(name: 'Contact Person*',hint: 'Enter full name',controller: nameController),
                        widgetTextField(name: 'Plot/house/flat no*',hint: 'Enter House No',controller: houseController),
                        widgetTextField(name: 'City*',hint: 'Enter City',controller: cityController),
                        SizedBox(height: 1.h,),
                        Padding(
                          padding:  EdgeInsets.only(),
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(right: 5.w,left: 2.w),
                                child: Text(
                                  'Province*',
                                  style: TextStyle(color: Colors.black87.withAlpha(150),fontWeight: FontWeight.bold,),
                                ),
                              ),
                              SizedBox(height: 0.6.h,),
                              Container(
                                height: 4.h,
                                width: 40.w,
                                child: Center(
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 2.w,right: 1.w),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      value: dropdownvalue,
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items,style: TextStyle(fontSize: 12.sp),),
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
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widgetTextField(name: 'Mobile Number*',hint: 'Enter Mobile number',controller: mobileController),
                      widgetTextField(name: 'Sector/area/Street*',hint: 'Street',controller: streetController),
                      widgetTextField(name: 'Postal Code*',hint: 'Enter Postal Code',controller: postalController),
                      widgetTextField(name: 'GST Number',hint: 'Enter GST number',controller: gstController),
                    ],
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  children: [
                    Icon(Icons.check_box_outline_blank,color: Colors.grey,size: 25,),
                    SizedBox(width: 1.w,),
                    RichText(
                      text: TextSpan(
                          // text:  'I accept all ',
                          // style: TextStyle(color: Colors.black,fontSize: 13.sp),
                          children: [
                            TextSpan(
                              text:  'I accept all ',
                              style: TextStyle(fontSize: 11.sp,color: Colors.black),
                            ),
                            TextSpan(
                              text:  'terms & conditions',
                              style: TextStyle(fontSize: 11.sp,color: Colors.blue),
                            )
                          ]
                      ),

                    )
                  ],
                ),
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Finish Set Up',
                      style: TextStyle(fontSize: 15.sp,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SaveCouponScreen(),));
        },
      ),
    );
  }
}
