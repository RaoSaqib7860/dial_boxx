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
      body: SafeArea(
        child:  SizedBox.expand(
          child:   Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin:const EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
                color: AppColors.whitColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.sp),
                    topLeft: Radius.circular(35.sp))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Image.asset(
                    'assets/images/logoDialboxx.png',
                    fit: BoxFit.contain,
                    height: 90.h,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: 'Start 7 days Free Trial',
                      size: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    Container(
                      width: 220.w,
                      margin:const EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.sp),
                          border: Border.all()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 0;
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
                              });
                            },
                            child: Container(
                              height: 46.h,
                              width: 100.w,
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

                    index == 0
                        ? Container(
                          height: 44.h,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          margin: const EdgeInsets.only(top: 30),

                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Enter Email',
                                contentPadding:
                                EdgeInsets.only(top: 10.h, left: 10.w),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(5.sp))),
                          ),
                        )
                        : Container(
                          height: 44.h,
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          margin:const EdgeInsets.only(top: 30,left: 30,right: 30),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45),
                              borderRadius: BorderRadius.circular(5.sp)),
                          child: Row(
                            children: [
                              const CustomText(
                                text: "+92",
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '3060164133'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) =>const CreatePasswordScreen(),
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
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Divider(
                        thickness: 1.5.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                    builder: (context) =>const LoginScreen(),
                                  ));
                            },
                            child: CustomText(
                              text: " Login in",
                              size: 16.sp,
                              color: AppColors.secondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
