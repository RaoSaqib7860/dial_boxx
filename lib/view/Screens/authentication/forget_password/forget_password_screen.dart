import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/authentication/create_account/create_account_screen.dart';
import 'package:dialbox_seller/view/verify_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../create_account/create_accout_controller/create_controoler.dart';
import 'forget_controller.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var getForgetController = Get.put(forgetotpController());
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
                children: [
                  Padding(
                      padding:  EdgeInsets.only(top: 30.0,bottom: 70.sp),
                      child: Image.asset(
                        'assets/images/logoDialboxx.png',
                        fit: BoxFit.contain,
                        height: 90.h,
                      )),

                  CustomText(
                    text: 'Forget Password',
                    size: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),

                  Container(
                    // height: 45.h,
                    padding:  EdgeInsets.only(top: 12.sp,bottom: 12.sp),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text:
                          "Enter your Email or Number below and we will send you a link to reset your pssword",
                      textAlign: TextAlign.center,
                      size: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  Container(
                    // height: 44.h,
                    width: MediaQuery.of(context).size.width,
                    padding:  EdgeInsets.only(top: 20.0,bottom: 16.sp),
                    child: TextFormField(
                      controller: getForgetController.textEditingControllerEmail,
                        decoration: InputDecoration(
                            hintText: 'Email or Number',
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
                        if(getForgetController.isLoading.value ==false){
                          getForgetController.forgetSendOtp(context: context);
                        }
                      // Get.to(() => VerifyOtpScreen(
                        //       callFromConfirm: 1,
                        //     ));
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

        ),
      ),
    );
  }
}
