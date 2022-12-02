import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/create_password_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/authentication/login/login_screen.dart';
import 'package:dialbox_seller/view/verify_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                    text: 'Start 7 days Free Trial',
                    size: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Container(
                    height: 46.h,
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
                            height: 46.h,
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
                                    size: 12.5.sp,
                                    fontWeight: index == 1
                                        ? FontWeight.w400
                                        : FontWeight.w600)),
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
                            height: 46.h,
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
                                    size: 12.5.sp,
                                    fontWeight: index == 0
                                        ? FontWeight.w400
                                        : FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  index == 0
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: SizedBox(
                            height: 44.h,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Email',
                                  contentPadding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.sp))),
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Container(
                            height: 44.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                                      height: 50.h,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: '3060164133'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => CreatePasswordScreen(),
                          ));
                    },
                    child: CustomButtonClick(
                      height: 40.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(2.sp)),
                      child: Center(
                        child: CustomText(
                          text: 'Create Account',
                          color: AppColors.whitColor,
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 110.h,
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
                        text: 'Already a Member?',
                        size: 18.sp,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: CustomText(
                          text: " Login in",
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
