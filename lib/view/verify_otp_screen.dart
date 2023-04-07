import 'dart:async';

import 'package:dialbox_seller/api_repo/api_utils.dart';
import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/authentication/confirmpassword/confirm_password_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/bussiness_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils_services/colors_util.dart';
import '../utils_services/snakbar.dart';

class VerifyOtpScreen extends StatefulWidget {
  final int? callFromBusiness;
  final int? callFromConfirm;
  final String? Email;
  const VerifyOtpScreen(
      {super.key, this.callFromBusiness, this.callFromConfirm, this.Email});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  TextEditingController textEditingController = TextEditingController();

  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  bool isotp = false;

  Timer? _timer;
  int second = 30;

  void startTimer() {
    const onesec = Duration(seconds: 1);
    _timer = Timer.periodic(onesec, (timer) {
      setState(() {
        if (second < 1) {
          isotp = false;
          second = 30;
          _timer!.cancel();
        } else {
          second = second - 1;
          if (isotp == false) {
            isotp = true;
          }
        }
      });
    });
  }

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();
    //textEditingController.dispose();

    super.dispose();
  }

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
                padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                      height: 100.h,
                    ),
                    CustomText(
                      text: 'Verify Code',
                      size: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      text: "Enter code send to you at Email id",
                      size: 18.sp,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Code',
                          size: 17.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: "Don't get the code?",
                              size: 13.sp,
                              color: Colors.black54,
                            ),
                            InkWell(
                              onTap: () async {
                                if (isotp == false) {
                                  // _provider.setloading(true);
                                  startTimer();
                                  await DataProvider().emailSendOtpFunction(Email: '${widget.Email}');
                                  snackBarSuccess('Otp sent to the Phone');
                                }
                              },
                              child: Text(
                                  isotp == false
                                      ? 'Resend OTP'.tr
                                      : 'Wait 30 seconds = '.tr,
                                  style: TextStyle(
                                      color: isotp == false
                                          ?  AppColors.secondaryColor
                                          :  AppColors.secondaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp)),
                            ),
                            Text(isotp == false ? '' : '00:$second',
                                style: const TextStyle(
                                    color: offBlackAvatr,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                            // CustomText(
                            //   text: " Resend OTP",
                            //   size: 13.sp,
                            //   color: AppColors.secondaryColor,
                            // )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30),
                          child: PinCodeTextField(
                            length: 6,
                            inputFormatters: <TextInputFormatter>[
                              LengthLimitingTextInputFormatter(6),
                            ],
                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v!.length < 5) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              inactiveColor: offBlackAvatr,
                              inactiveFillColor: offBlackAvatr,
                              fieldHeight: 50,
                              activeColor: offBlackAvatr,
                              fieldWidth: 40,
                              activeFillColor:
                              hasError ? Colors.black : Colors.white,
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            backgroundColor: Theme.of(context).brightness == Brightness.light ? Colors.white:Colors.black,
                            enableActiveFill: true,
                            // errorAnimationController: errorController,
                            controller: textEditingController,
                            onCompleted: (v) async {
                              await DataProvider().otpVerificationFunction(map: {
                                'email': '${widget.Email}',
                                'otp': '${textEditingController.text}',
                              }).then((value) {
                                if(value == true){
                                  widget.callFromBusiness == 0
                                      ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BusinessScreen(),
                                      ))
                                      : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ConfirmForgotPasswordScreen(),
                                      ));
                                }
                              });

                            },
                            onChanged: (value) {
                              setState(() {
                                currentText = value;
                              });
                            },
                            appContext: context,
                          )),
                    ),
                    // PinCodeTextField(
                    //   appContext: context,
                    //   length: 6,
                    //   keyboardType: TextInputType.number,
                    //   obscureText: false,
                    //   animationType: AnimationType.fade,
                    //   pinTheme: PinTheme(
                    //       shape: PinCodeFieldShape.box,
                    //       borderRadius: BorderRadius.circular(5),
                    //       fieldHeight: 50,
                    //       fieldWidth: 45,
                    //       activeFillColor: Colors.white,
                    //       inactiveFillColor: AppColors.whitColor,
                    //       activeColor: Colors.black26.withOpacity(0.30),
                    //       selectedFillColor: Colors.white,
                    //       inactiveColor: Colors.black38.withOpacity(0.20)),
                    //   animationDuration: Duration(milliseconds: 300),
                    //   // backgroundColor: Colors.blue.shade50,
                    //   enableActiveFill: true,
                    //   errorAnimationController: errorController,
                    //   controller: textEditingController,
                    //   onCompleted: (v) {
                    //     print("Completed");
                    //   },
                    //   onChanged: (value) {
                    //     print(value);
                    //     setState(() {
                    //       currentText = value;
                    //     });
                    //   },
                    //   beforeTextPaste: (text) {
                    //     print("Allowing to paste $text");
                    //     return true;
                    //   },
                    // ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     widget.callFromBusiness == 0
                    //         ? Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) => BusinessScreen(),
                    //             ))
                    //         : Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) =>
                    //                   ConfirmForgotPasswordScreen(),
                    //             ));
                    //   },
                    //   child: CustomButtonClick(
                    //     height: 40.h,
                    //     width: 180.w,
                    //     decoration: BoxDecoration(
                    //         color: AppColors.primaryColor,
                    //         borderRadius: BorderRadius.circular(5.sp)),
                    //     child: Center(
                    //       child: CustomText(
                    //         text: 'Verify',
                    //         color: AppColors.whitColor,
                    //         size: 16.sp,
                    //         fontWeight: FontWeight.w600,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
