import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/create_account_screen.dart';
import 'package:dialbox_seller/view/verify_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  // regular expression to check if string
  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  double password_strength = 0;
  bool obsecuretext = false;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Image.asset(
                  'assets/images/logoDialboxx.png',
                  fit: BoxFit.contain,
                  height: 90.h,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Create Password',
                      size: 22.sp,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                      color: Colors.black,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55.h,vertical: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Password",
                            size: 17.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: password_strength <= 1 / 4
                                    ? "Weak"
                                    : password_strength == 2 / 4
                                        ? "Medium"
                                        : password_strength == 3 / 4
                                            ? "Medium"
                                            : "Strong",
                                size: 15.sp,
                                color: Colors.black54,
                                fontWeight: FontWeight.w300,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              SizedBox(
                                height: 5.0.h,
                                width: 80.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  child: LinearProgressIndicator(
                                    value: password_strength,
                                    backgroundColor: Colors.grey[300],
                                    minHeight: 5,
                                    color: password_strength <= 1 / 4
                                        ? Colors.red
                                        : password_strength == 2 / 4
                                            ? Colors.yellow
                                            : password_strength == 3 / 4
                                                ? Colors.blue
                                                : Colors.green,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: TextFormField(
                              obscureText: obsecuretext,
                              onChanged: (value) {
                                _formKey.currentState!.validate();
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter password";
                                } else {
                                  //call function to check password
                                  bool result = validatePassword(value);
                                  if (result) {
                                    // create account event
                                    return null;
                                  } else {
                                    return "Password contain Capital,small & Number & Special";
                                  }
                                }
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7.sp)),
                                  hintText: "Password",
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          obsecuretext = !obsecuretext;
                                        });
                                      },
                                      child: !obsecuretext
                                          ? Icon(Icons.remove_red_eye_outlined)
                                          : Icon(Icons.remove_red_eye_rounded)),
                                  contentPadding:
                                      EdgeInsets.only(top: 10.h, left: 10.w)),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => const VerifyOtpScreen(callFromBusiness: 0),
                                  ));
                            }),
                            child: CustomButtonClick(
                              height: 40.h,
                              width: 180.w,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(5.sp)),
                              child: Center(
                                child: CustomText(
                                  text: 'Get Started',
                                  color: AppColors.whitColor,
                                  size: 16.sp,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (_password.isEmpty) {
      setState(() {
        password_strength = 0;
      });
    } else if (_password.length < 6) {
      setState(() {
        password_strength = 1 / 4;
      });
    } else if (_password.length < 8) {
      setState(() {
        password_strength = 2 / 4;
      });
    } else {
      if (pass_valid.hasMatch(_password)) {
        setState(() {
          password_strength = 4 / 4;
        });
        return true;
      } else {
        setState(() {
          password_strength = 3 / 4;
        });
        return false;
      }
    }
    return false;
  }
}
