import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/authentication/create_account/create_account_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/create_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CreateAccountScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 270.h,
            ),
            CustomText(
              text: 'WELCOME TO',
              size: 32.sp,
            ),
            SizedBox(
              height: 40.0.h,
            ),
            SizedBox(
                height: 90.h,
                width: 230.w,
                child: Image.asset(
                  'assets/images/logoDialboxx.png',
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              text: "Seller's Portal",
              size: 23.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            )
          ],
        ),
      ),
    );
  }
}
