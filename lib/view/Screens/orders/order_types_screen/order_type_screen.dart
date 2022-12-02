import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/orders/order_details_screen/order_details_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OrderTypeScreen extends StatefulWidget {
  const OrderTypeScreen({super.key});

  @override
  State<OrderTypeScreen> createState() => _OrderTypeScreenState();
}

class _OrderTypeScreenState extends State<OrderTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(color: AppColors.primaryColor),
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
        child: Column(
          children: [
            HeaderContainer(
              text: "Order Type",
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Container(
                    height: 140.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.sp),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.15))
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 15.h,
                                      width: 15.w,
                                      child: Image.asset(
                                        'assets/images/walk.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    CustomText(
                                      text: "Walk-in",
                                      size: 15.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          CustomText(
                            text: "Create order for Walk-in Customer",
                            size: 12.sp,
                            color: AppColors.primaryColor,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          CustomText(
                            text: "Special Requests",
                            fontWeight: FontWeight.w500,
                            size: 15.sp,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 25.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color(0xff707070)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Row(
                                children: [
                                  CustomText(
                                    text: 'Instructions (Optional)',
                                    size: 12.sp,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 140.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.sp),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.15))
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 15.h,
                                      width: 15.w,
                                      child: Image.asset(
                                        'assets/images/pickup.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    CustomText(
                                      text: "PickUp",
                                      size: 15.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          CustomText(
                            text: "Create order for Pickup",
                            size: 12.sp,
                            color: AppColors.primaryColor,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          CustomText(
                            text: "Requests for Pickup",
                            fontWeight: FontWeight.w500,
                            size: 15.sp,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 25.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color(0xff707070)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Row(
                                children: [
                                  CustomText(
                                    text: 'Instructions (Optional)',
                                    size: 12.sp,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 310.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.sp),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.15))
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 15.h,
                                      width: 15.w,
                                      child: Image.asset(
                                        'assets/images/delivery.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    CustomText(
                                      text: "Delivery",
                                      size: 15.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          CustomText(
                            text: "Create order for Delivery",
                            size: 12.sp,
                            color: AppColors.primaryColor,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          CustomText(
                            text: "Enter Delivery Address",
                            fontWeight: FontWeight.w500,
                            size: 15.sp,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 160.w,
                                height: 25.h,
                                child: CustomText(
                                  text: 'City*',
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: 170.w,
                                  height: 25.h,
                                  child: CustomText(
                                    text: 'Area',
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30.h,
                                width: 150,
                                child: TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          borderSide: BorderSide(
                                              color: Color(0xff707070))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          borderSide: BorderSide(
                                              color: Color(0xff707070))),
                                      contentPadding: EdgeInsets.only(
                                          left: 10.w, bottom: 10.h),
                                      hintText: 'Enter City',
                                      hintStyle: TextStyle(fontSize: 12.sp)),
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Expanded(
                                child: Container(
                                  height: 30.h,
                                  width: 150,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide: BorderSide(
                                                color: Color(0xff707070))),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            borderSide: BorderSide(
                                                color: Color(0xff707070))),
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, bottom: 10.h),
                                        hintText: 'Enter Area',
                                        hintStyle: TextStyle(fontSize: 12.sp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "Address Details",
                            size: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            height: 30.h,
                            width: MediaQuery.of(context).size.width,
                            child: TextField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      borderSide:
                                          BorderSide(color: Color(0xff707070))),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      borderSide:
                                          BorderSide(color: Color(0xff707070))),
                                  contentPadding:
                                      EdgeInsets.only(left: 10.w, bottom: 10.h),
                                  hintText: '',
                                  hintStyle: TextStyle(fontSize: 12.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "Special Request",
                            size: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 25.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color(0xff707070)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Row(
                                children: [
                                  CustomText(
                                    text: 'Instructions (Optional)',
                                    size: 12.sp,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => OrderDetailsScreen());
                    },
                    child: CustomButtonClick(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.sp),
                          color: AppColors.primaryColor),
                      child: Center(
                        child: CustomText(
                          text: "Review Order",
                          color: Colors.white,
                          size: 16.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
