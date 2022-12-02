import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/buy_X-get_Y_free_screen.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/free_shipping_discount_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class CouponCodeScreen extends StatefulWidget {
  const CouponCodeScreen({super.key});

  @override
  State<CouponCodeScreen> createState() => _CouponCodeScreenState();
}

class _CouponCodeScreenState extends State<CouponCodeScreen> {
  bool setCouponCodevalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitColor,
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.black,
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
        child: Column(
          children: [
            HeaderContainer(
              text: "Discount Coupon",
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Container(
                    height: 230.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.whitColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: AppColors.blackColor.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/coupon-code.png',
                                    height: 25.h,
                                    width: 25.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CustomText(
                                    text: "Coupon Code",
                                    color: Color(0xff707070),
                                    size: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  )
                                ],
                              ),
                              Container(
                                height: 34.h,
                                child: FlutterSwitch(
                                  width: 55.0.w,
                                  height: 30.0.h,
                                  valueFontSize: 15.0,
                                  toggleSize: 30.0,
                                  padding: 0.4,
                                  activeColor: AppColors.greenColor,
                                  activeToggleColor: AppColors.whitColor,
                                  activeText: '',
                                  activeTextColor: Colors.black54,
                                  inactiveText: '',
                                  value: setCouponCodevalue,
                                  borderRadius: 30.0.sp,
                                  showOnOff: true,
                                  onToggle: (val) {
                                    setState(() {
                                      setCouponCodevalue = val;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Column(
                              children: [
                                Container(
                                  height: 48.h,
                                  //width: 290.w,
                                  child: CustomText(
                                    text:
                                        "Rs.1000 off on all the order above Rs.500",
                                    size: 15.sp,
                                    color: Color(0xff707070),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CustomText(
                                          text: "Times Used",
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold,
                                          size: 13.sp,
                                        ),
                                        CustomText(
                                          text: "0",
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold,
                                          size: 13.sp,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        CustomText(
                                          text: "Total Discount Availed",
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold,
                                          size: 13.sp,
                                        ),
                                        CustomText(
                                          text: "0",
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold,
                                          size: 13.sp,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          CustomText(
                            text: "-------------------------------------",
                          ),
                          Center(
                            child: Container(
                              height: 35.h,
                              width: 35.w,
                              child: Image.asset(
                                'assets/images/forward.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 110.h,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: GestureDetector(
          onTap: () {
            showModelBottomSheet();
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: CustomButtonClick(
              height: 45.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(4.sp)),
              child: Center(
                child: CustomText(
                  text: "Create a coupon",
                  size: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whitColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  //..........................................................................//

  Future showModelBottomSheet() {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp))),
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => FreeShippingDiscountScreen(
                                    flateDiscount: 1,
                                  ));
                            },
                            child: Row(
                              children: [
                                Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Image.asset(
                                        'assets/images/free_van.png',
                                        fit: BoxFit.contain)),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Free Shipping",
                                      size: 14.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(
                                      text:
                                          "Offer free shipping to your customer",
                                      color: Color(0xffA1A1A1),
                                      size: 13.sp,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => BuyXGetYFreeScreen());
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Image.asset(
                                      'assets/images/gift.png',
                                      fit: BoxFit.contain,
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "But X get Y Free",
                                      size: 14.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Container(
                                      height: 50.h,
                                      width: 270.w,
                                      child: CustomText(
                                        text:
                                            "Offer Free Products on Purchase of certain number of items",
                                        color: Color(0xffA1A1A1),
                                        maxline: 2,
                                        size: 13.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => FreeShippingDiscountScreen(
                                    flateDiscount: 2,
                                  ));
                            },
                            child: Row(
                              children: [
                                Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Image.asset(
                                        'assets/images/discount_voucher.png',
                                        fit: BoxFit.contain)),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Flat Discount",
                                      size: 14.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(
                                      text:
                                          "Offer a fixed discount to your customer",
                                      color: Color(0xffA1A1A1),
                                      size: 13.sp,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => FreeShippingDiscountScreen(
                                    flateDiscount: 3,
                                  ));
                            },
                            child: Row(
                              children: [
                                Container(
                                    height: 40.h,
                                    width: 40.w,
                                    child: Image.asset(
                                        'assets/images/discount_flat.png',
                                        fit: BoxFit.contain)),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Percentage Discount",
                                      size: 14.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(
                                      text:
                                          "Offer a fixed discount to your customer",
                                      color: Color(0xffA1A1A1),
                                      size: 13.sp,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ));
            },
          );
        });
  }


}
