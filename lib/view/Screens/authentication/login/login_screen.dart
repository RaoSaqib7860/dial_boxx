import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/authentication/forget_password/forget_password_screen.dart';
import 'package:dialbox_seller/view/Screens/create_account_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/custom_widgets/persistant_bottom_sheet_screen.dart';
import 'package:dialbox_seller/view/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // regular expression to check if string
  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  double password_strength = 0;
  int index = 0;

  bool obsecuretext = false;
  @override
  void initState() {
    numberController.text = '+92';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130.h,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.whitColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35.sp),
                      topLeft: Radius.circular(35.sp))),
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
                  Container(
                    height: 50.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.sp),
                        border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 0;
                              print('check index zero $index');
                            });
                          },
                          child: Container(
                            height: 50.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: index == 1
                                    ? Colors.white
                                    : AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(30.sp)),
                            child: Center(
                                child: CustomText(
                              text: "Email",
                              color: index == 1
                                  ? AppColors.blackColor
                                  : AppColors.whitColor,
                              size: 13.sp,
                              fontWeight: index == 1
                                  ? FontWeight.w400
                                  : FontWeight.w600,
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 1;
                              print('check index one $index');
                            });
                          },
                          child: Container(
                            height: 50.h,
                            width: 110.w,
                            decoration: BoxDecoration(
                                color: index == 0
                                    ? Colors.white
                                    : AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30.sp)),
                            child: Center(
                                child: CustomText(
                              text: "Mobile Number",
                              color: index == 0
                                  ? AppColors.blackColor
                                  : AppColors.whitColor,
                              size: 13.sp,
                              fontWeight: index == 0
                                  ? FontWeight.w400
                                  : FontWeight.w600,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  index == 0
                      ? Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: SizedBox(
                                height: 44.h,
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter Email',
                                      hintStyle: TextStyle(fontSize: 15.sp),
                                      contentPadding: EdgeInsets.only(
                                          top: 10.h, left: 10.w),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.sp))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: SizedBox(
                                height: 44.h,
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter Password',
                                      hintStyle: TextStyle(fontSize: 15.sp),
                                      contentPadding: EdgeInsets.only(
                                          top: 10.h, left: 10.w),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.sp))),
                                ),
                              ),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: Container(
                                height: 44.h,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black45),
                                    borderRadius: BorderRadius.circular(4.sp)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    children: [
                                      CustomText(
                                        text: "+92",
                                      ),
                                      SizedBox(
                                        width: 7.w,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 44.h,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '3060164133',
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: SizedBox(
                                height: 44.h,
                                width: MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter Password',
                                      hintStyle: TextStyle(fontSize: 15.sp),
                                      contentPadding: EdgeInsets.only(
                                          top: 10.h, left: 10.w),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.sp))),
                                ),
                              ),
                            )
                          ],
                        ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ForgotPasswordScreen());
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomText(
                            text: "Forget Password",
                            size: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  // index == 1
                  //     ? SizedBox(
                  //         height: 0.h,
                  //       )
                  //     : SizedBox(
                  //         height: 0,
                  //       ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomSheetCustom(index: 0),
                          ));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: CustomButtonClick(
                        height: 40.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(2.sp)),
                        child: Center(
                          child: CustomText(
                            text: 'Log In',
                            color: AppColors.whitColor,
                            size: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Divider(
                      thickness: 1.5.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'For Registration?',
                        size: 18.sp,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => CreateAccountScreen());
                        },
                        child: CustomText(
                          text: " Sign Up",
                          size: 16.sp,
                          color: AppColors.secondaryColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
