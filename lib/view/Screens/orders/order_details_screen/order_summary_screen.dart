import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/orders/order_number_details/order_number_details.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OrderSummaryScreen extends StatefulWidget {
  const OrderSummaryScreen({super.key});

  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderContainer(
                text: "Order Details",
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Container(
                  // height: 520.h,
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.whitColor,
                      borderRadius: BorderRadius.circular(4.sp),
                      boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 1, color: AppColors.blackColor.withOpacity(0.10))]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 16.w),
                                    child: CustomText(
                                      text: "Order #21345",
                                      fontWeight: FontWeight.bold,
                                      size: 16.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.close,
                              size: 28.sp,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      CustomText(
                        text: "Name",
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomText(text: "+3132897890", color: AppColors.blackColor, fontWeight: FontWeight.w500),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    CustomText(
                                      text: "15 oct,2:00pm",
                                      size: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    CustomText(
                                      text: "Date",
                                      size: 14.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w300,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SvgPicture.asset('assets/svg/walk.svg'),
                                    CustomText(
                                      text: "Source",
                                      size: 14.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w300,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 20.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(10.sp)),
                                      child: Center(
                                        child: CustomText(
                                          text: "Pickup",
                                          size: 14.sp,
                                          color: AppColors.whitColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    CustomText(
                                      text: "Delivery Status",
                                      size: 14.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w300,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            CustomText(
                              text: 'Pickup Details',
                              fontWeight: FontWeight.w500,
                              size: 15.sp,
                            ),
                            CustomText(
                              text: 'Date and Time:15 Oct,12AM',
                              fontWeight: FontWeight.w300,
                              size: 14.sp,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            CustomText(
                              text: "Order Summary",
                              size: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            Container(
                              //height: 70.h,
                              child: ListView.builder(
                                itemCount: 1,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(left: 0.w, right: 8.w, top: 8.h),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 48.h,
                                                  width: 48.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(4.sp), border: Border.all(color: Color(0xff707070))),
                                                  child: Center(
                                                    child: SvgPicture.asset(
                                                      'assets/svg/product_imag.svg',
                                                      height: 18.h,
                                                      width: 24.w,
                                                    ),
                                                  ),
                                                  // color: AppColors.primaryColor,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                CustomText(
                                                  text: "Daal Food",
                                                  size: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.blackColor,
                                                ),
                                              ],
                                            ),
                                            CustomText(
                                              text: "Rs.10,000",
                                              size: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.blackColor,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Subtotal",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "Rs.10,000",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Discount",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "-2500",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "GST.",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "Rs.0",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Delivery Fee",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "Rs.10,000",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Total",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Rs.7600",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/payment_cash.svg'),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    CustomText(
                                      text: "Cash on Delivery",
                                      size: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                                CustomText(
                                  text: "Successfully",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => OrderNumberDetailsScreen());
        },
      ),
    );
  }
}
