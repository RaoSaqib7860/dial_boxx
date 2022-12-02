import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/authentication/login/login_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/create_account_screen.dart';
import 'package:dialbox_seller/view/verify_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ConfirmForgotPasswordScreen extends StatefulWidget {
  const ConfirmForgotPasswordScreen({super.key});

  @override
  State<ConfirmForgotPasswordScreen> createState() =>
      _ConfirmForgotPasswordScreenState();
}

class _ConfirmForgotPasswordScreenState
    extends State<ConfirmForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.whitColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35.sp),
                      topLeft: Radius.circular(35.sp))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.0.h,
                    ),
                    SizedBox(
                        height: 90.h,
                        width: 233.w,
                        child: Image.asset(
                          'assets/images/logoDialboxx.png',
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      height: 150.h,
                    ),
                    CustomText(
                      text: 'Confirm your Password',
                      size: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 44.h,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'New Password',
                            hintStyle: TextStyle(fontSize: 15.sp),
                            contentPadding:
                                EdgeInsets.only(top: 10.h, left: 10.w),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.sp))),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 44.h,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Re-enter Password',
                            hintStyle: TextStyle(fontSize: 15.sp),
                            contentPadding:
                                EdgeInsets.only(top: 10.h, left: 10.w),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.sp))),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Get.to(() => LoginScreen());
                      }),
                      child: CustomButtonClick(
                        height: 40.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(2.sp)),
                        child: Center(
                          child: CustomText(
                            text: 'Submit',
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
          ],
        ),
      ),
    );
  }
}
