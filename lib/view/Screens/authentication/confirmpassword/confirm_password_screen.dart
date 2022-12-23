import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/authentication/login/login_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/create_account_screen.dart';
import 'package:dialbox_seller/view/verify_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin:const EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
                color: AppColors.whitColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.sp),
                    topLeft: Radius.circular(35.sp))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Image.asset(
                        'assets/images/logoDialboxx.png',
                        fit: BoxFit.contain,
                        height: 90.h,
                      )),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: CustomText(
                            text: 'Confirm your Password',
                            size: 22.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
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

                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(bottom: 30,top: 30),

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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
