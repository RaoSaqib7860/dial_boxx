import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/orders/order_details_screen/order_summary_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 37.h,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.whitColor,
                          borderRadius: BorderRadius.circular(6.sp),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.15))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Nov, 04:35 PM",
                              size: 14.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w300,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5.sp,
                                ),
                                CustomText(
                                  text: " Delivered",
                                  fontWeight: FontWeight.w300,
                                  size: 14.sp,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Customer Details",
                      fontWeight: FontWeight.w500,
                      size: 15.sp,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 130.h,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(6.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.15))
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/svg/person.svg'),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CustomText(
                                  text: "Customer Name",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.w),
                              child: CustomText(
                                text: "Ahmad Ali",
                                size: 14.sp,
                                color: Color(0xff535353),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/svg/call.svg'),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CustomText(
                                  text: "Customer Number",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.w),
                              child: CustomText(
                                text: "+923015082828",
                                size: 14.sp,
                                color: Color(0xff535353),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Products",
                      fontWeight: FontWeight.w500,
                      size: 15.sp,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      // height: 105.h,
                      // width: MediaQuery.of(context).size.width,

                      decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(6.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.15))
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            //height: 70.h,
                            child: ListView.separated(
                              itemCount: 2,
                              shrinkWrap: true,
                              separatorBuilder: (context, index) =>
                                  Divider(thickness: 1.5),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: 8.w, right: 8.w, top: 8.h),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 48.h,
                                            width: 48.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.sp),
                                                border: Border.all(
                                                    color: Color(0xff707070))),
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
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                text: "Daal Food",
                                                size: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.blackColor,
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              CustomText(
                                                text: "Rs. 200",
                                                size: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.blackColor,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Divider(
                              thickness: 2.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "- 2 +",
                                ),
                                CustomText(
                                  text: "Rs.200",
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Order Information",
                      fontWeight: FontWeight.w500,
                      size: 15.sp,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      //height: 201.h,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(6.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.15))
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Payment Method",
                                  size: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Order Source",
                                  size: 15.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Cash on delivery",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Whatsapp",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomText(
                              text: "Order Type",
                              size: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            CustomText(
                              text: "Walk-in",
                              size: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomText(
                              text: "Instruction",
                              size: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            CustomText(
                              text: "Loram ipsum this is dummy text",
                              size: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 20.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Order Price",
                      fontWeight: FontWeight.w500,
                      size: 15.sp,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      //height: 201.h,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(6.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.15))
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Subtotal",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Rs.10,000",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Discount",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Rs.-2500",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "GST",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Rs.0",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Delivery Fee",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Rs.-100",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Total",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  text: "Rs.7600",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => OrderSummaryScreen());
                      },
                      child: CustomButtonClick(
                        height: 45.h,
                        // width: MediaQuery.of(context).size.width,
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
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
