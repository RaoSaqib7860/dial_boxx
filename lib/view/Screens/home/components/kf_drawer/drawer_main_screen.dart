import 'dart:developer';

import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/discount_coupon_screen.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/analytics_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/home/components/kf_drawer/class_builder.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/home_screen.dart';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../../../custom_widgets/persistant_bottom_sheet_screen.dart';

class DrawerSideMenuItems extends StatefulWidget {
  DrawerSideMenuItems({Key? key}) : super(key: key);

  @override
  _DrawerSideMenuItemsState createState() => _DrawerSideMenuItemsState();
}

class _DrawerSideMenuItemsState extends State<DrawerSideMenuItems>
    with TickerProviderStateMixin {
  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();

    _drawerController = KFDrawerController(initialPage: HomeScreen()
        // ClassBuilder.fromString('HomeScreenPage'),

        // items: [
        //   KFDrawerItem.initWithPage(
        //     text: Text('MAINllllllll', style: TextStyle(color: Colors.black)),
        //     icon: Icon(Icons.home, color: Colors.white),
        //     // page: EComHomeScreenPage(),
        //   ),
        // ],
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            width: 250.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  radius: 35.sp,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'John Smith',
                  size: 19.sp,
                  color: AppColors.whitColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  thickness: 1.5,
                  color: AppColors.whitColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => AnalyticsScreen());
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/analytics.png',
                        height: 25.h,
                        width: 25.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        text: 'Analytics',
                        color: AppColors.whitColor,
                        size: 17.sp,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/discount.png',
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => DiscountCouponScreen());
                      },
                      child: CustomText(
                        text: 'Discount Coupons',
                        color: AppColors.whitColor,
                        fontWeight: FontWeight.w400,
                        size: 16.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Mycustomers.png',
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: 'My Customers',
                      color: AppColors.whitColor,
                      fontWeight: FontWeight.w400,
                      size: 16.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/webdesign.png',
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: 'Website Design',
                      color: AppColors.whitColor,
                      fontWeight: FontWeight.w400,
                      size: 16.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/loan.png',
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: 'Loan',
                      color: AppColors.whitColor,
                      fontWeight: FontWeight.w400,
                      size: 16.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/offer.png',
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: 'Exclusive Offers',
                      color: AppColors.whitColor,
                      fontWeight: FontWeight.w400,
                      size: 16.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/support.png',
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: 'Support',
                      color: AppColors.whitColor,
                      fontWeight: FontWeight.w400,
                      size: 16.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 45.h,
                ),
                Divider(
                  thickness: 1.0,
                  color: AppColors.whitColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/language.png',
                      height: 25.h,
                      width: 25.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: 'English',
                          color: AppColors.whitColor,
                          fontWeight: FontWeight.w400,
                          size: 16.sp,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: AppColors.whitColor,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: AppColors.whitColor,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: 'Log Out',
                      color: AppColors.whitColor,
                    )
                  ],
                ),
              ],
            ),
            // Text('Main Header Abdullah'),
          ),
        ),

        // footer: KFDrawerItem(
        //   text: Text(
        //     'SIGN IN',
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   icon: Icon(
        //     Icons.input,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     Navigator.of(context).push(CupertinoPageRoute(
        //       fullscreenDialog: true,
        //       builder: (BuildContext context) {
        //         return EComHomeScreenPage();
        //       },
        //     ));
        //   },
        // ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.secondaryColor,
              AppColors.secondaryColor,
              //  Color.fromRGBO(44, 72, 171, 1.0)
            ],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
