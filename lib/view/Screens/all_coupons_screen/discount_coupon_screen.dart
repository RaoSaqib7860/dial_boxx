import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/buy_X-get_Y_free_screen.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/free_shipping_discount_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DiscountCouponScreen extends StatefulWidget {
  const DiscountCouponScreen({super.key});

  @override
  State<DiscountCouponScreen> createState() => _DiscountCouponScreenState();
}

class _DiscountCouponScreenState extends State<DiscountCouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderContainer(
                text: "Discount Coupon",
              ),
              Container(
                height: 330.h,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffE1E1E1),
                child: Center(
                  child: Container(
                      height: 80.h,
                      width: 100.w,
                      child: SvgPicture.asset(
                        'assets/svg/product_imag.svg',
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: "Get more sales with coupons",
                size: 16.sp,
                color: Colors.black,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 70.h,
                width: MediaQuery.of(context).size.width*0.9,
                child: CustomText(
                  text:
                      'Create and share coupons for your store to get more and more order on your store',
                  size: 14.sp,
                  color: const Color(0xff797979),
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              GestureDetector(
                onTap: () {
                  showModelBottomSheet();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                        color: AppColors.whitColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //.................Shiping Fee Model Bottom Sheet...............................//

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
