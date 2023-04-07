import 'dart:async';

import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/authentication/login/login_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/custom_widgets/persistant_bottom_sheet_screen.dart';
import 'package:dialbox_seller/view/Screens/home/components/kf_drawer/drawer_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BusinessScreen extends StatefulWidget {
  const BusinessScreen({super.key});

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  var domainController = TextEditingController();
  final List<String> _locations = [
    'Pakistan(Rs.)',
    'India(Rs.)',
    'Australia(Rs.)',
    'England(Rs.)'
  ];
  String? _selectedLocation;
  //....Select Business name...............//
  final List<String> _Industrylocations = [
    'Pakistan(Rs.)',
    'India(Rs.)',
    'Australia(Rs.)',
    'England(Rs.)'
  ];
  String? _selectedBusinessIndustry;
  //........Select Industry............//
  final List<String> _subscriptionlocations = [
    'Islamabad',
    'Rawalpindi',
    'Lahore',
    'Karachi'
  ];
  String? _selectedBusinessSubscription;

  @override
  void initState() {
    domainController.text = "www.dialboxx.com/";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin:const EdgeInsets.only(top: 90),

            decoration: BoxDecoration(
                color: AppColors.whitColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.sp),
                    topLeft: Radius.circular(35.sp))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset(
                        'assets/images/logoDialboxx.png',
                        fit: BoxFit.contain,
                        height: 90.h,
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    text: 'Enter business details',
                    size: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "Country*",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.sp),
                        border: Border.all(color: Colors.black26),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child:
                      DropdownButton(
                        isExpanded: true,
                        underline: SizedBox(),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 28.sp,
                          color: Colors.black26,
                        ),
                        hint: CustomText(
                          text: "Please choose a location",
                          size: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        value: _selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLocation = newValue;
                          });
                        },
                        items: _locations.map((location) {
                          return DropdownMenuItem(
                            child: CustomText(
                              text: location,
                              size: 13.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45,
                            ),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "Business Name*",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.sp),
                        border: Border.all(color: Colors.black26),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter business name',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 14.sp),
                          contentPadding:
                              EdgeInsets.only(left: 10.w, bottom: 14.h)),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "Business Industry*",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.sp),
                        border: Border.all(color: Colors.black26),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: DropdownButton(
                        isExpanded: true,
                        underline: SizedBox(),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 28.sp,
                          color: Colors.black26,
                        ),
                        hint: CustomText(
                          text: "Select business industry",
                          size: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        value: _selectedBusinessIndustry,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedBusinessIndustry = newValue;
                          });
                        },
                        items: _Industrylocations.map((location) {
                          return DropdownMenuItem(
                            child: CustomText(
                              text: location,
                              size: 13.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45,
                            ),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "Select Subscription*",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.sp),
                        border: Border.all(color: Colors.black26),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: DropdownButton(
                        isExpanded: true,
                        underline: SizedBox(),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 28.sp,
                          color: Colors.black26,
                        ),
                        hint: CustomText(
                          text: "Choose website type",
                          size: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        value: _selectedBusinessSubscription,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedBusinessSubscription = newValue;
                          });
                        },
                        items: _subscriptionlocations.map((location) {
                          return DropdownMenuItem(
                            child: CustomText(
                              text: location,
                              size: 13.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45,
                            ),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "Create domain*",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.sp),
                        border: Border.all(color: Colors.black26),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: TextFormField(
                      controller: domainController,
                      decoration: InputDecoration(
                          hintText: 'Enter business name',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 14.sp),
                          contentPadding:
                              EdgeInsets.only(left: 10.w, bottom: 14.h)),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                            // BottomSheetCustom()
                          ));
                    },
                    child: CustomButtonClick(
                      height: 40.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5.sp)),
                      child: Center(
                        child: CustomText(
                          text: 'Finish',
                          color: AppColors.whitColor,
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
