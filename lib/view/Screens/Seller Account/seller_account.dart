import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../preferences/preference_screen.dart';

class SellerAccount extends StatefulWidget {
  const SellerAccount({Key? key}) : super(key: key);

  @override
  State<SellerAccount> createState() => _SellerAccountState();
}

class _SellerAccountState extends State<SellerAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(PreferenceScreen());
      }),
      bottomNavigationBar: Container(
        height: 110.h,
        color: AppColors.primaryColor,
        child: Column(
          children: [
            SizedBox(height: 10.h,),
          Text('Dialboxx Commitment',
          style: TextStyle(color: Colors.white,fontSize: 16)),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50.h,
                  width: 120.w,
                  color: Colors.red,
                  child: Center(
                    child: Row(
                      children: [
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 120.w,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
      appBar: const CustomAppBar(
        leading: BackButton(color: AppColors.primaryColor),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 1000.w,
          height: 1000.h,
          child: Column(
            children: [
              const HeaderContainer(
                text: "Seller Account",
              ),
              SizedBox(height: 4.h,),
              ListTile(
                leading: Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.sp),
                      border: Border.all(color: Color(0xff707070))),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/svg/product_imag.svg',
                      height: 18.h,
                      width: 24.w,
                    ),
                  ),
                  // color: AppColors.primaryColor,
                ),
                title: Text('Business Name'),
                subtitle: const Text('Joining date 15th/Oct/2022',
                    style: TextStyle(color: Colors.blue)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Divider(
                  thickness: 3.h,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8.h,),
              ListTile(
                leading: Image.asset('assets/images/account.png'),
                title: Text('Account Details',style: TextStyle(
                  // fontFamily: AppFonts.segoeui,
                  fontSize: 16,
                  color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                trailing: Icon(CupertinoIcons.forward,color: Colors.black),
              ),
              ListTile(
                leading: Image.asset('assets/images/account.png'),
                title: Text('My Account',style: TextStyle(
                  // fontFamily: AppFonts.segoeui,
                  fontSize: 16,
                  color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                trailing: Icon(CupertinoIcons.forward,color: Colors.black),
              ),
              ExpansionTile(
                leading: Image.asset(
                  'assets/images/setting.png',
                ),
                title: Text(
                  'Store Setting',
                  style: TextStyle(
                   // fontFamily: AppFonts.segoeui,
                    fontSize: 16,
                    color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const[
                      Text(
                        'Domains Settings ',
                      ),
                      Text(
                        'Social Media',
                      ),
                      Text(
                        'Shipping',
                      ),
                      Text(
                        'Store timing',
                      ),
                      Text(
                        'Extra charges',
                      ),
                      Text(
                        'Order form',
                      ),
                      Text(
                        'Preferences',
                      ),

                    ],
                  ),
                ],
              ),
              ListTile(
                leading: Image.asset('assets/images/toturial.png'),
                title: Text('Tutorial ',style: TextStyle(
                  // fontFamily: AppFonts.segoeui,
                  fontSize: 16,
                  color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                trailing: Icon(CupertinoIcons.forward,color: Colors.black),
              ),
              ListTile(
                leading: Image.asset('assets/images/help.png'),
                title: Text('Help Center ',style: TextStyle(
                  // fontFamily: AppFonts.segoeui,
                  fontSize: 16,
                  color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                trailing: Icon(CupertinoIcons.forward,color: Colors.black),
              ),
              ListTile(
                leading: Image.asset('assets/images/contact.png'),
                title: Text('Contact us ',style: TextStyle(
                  // fontFamily: AppFonts.segoeui,
                  fontSize: 16,
                  color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                trailing: Icon(CupertinoIcons.forward,color: Colors.black),
              ),
              ListTile(
                leading: Image.asset('assets/images/more.png'),
                title: Text('More Information  ',style: TextStyle(
                  // fontFamily: AppFonts.segoeui,
                  fontSize: 16,
                  color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                trailing: Icon(CupertinoIcons.forward,color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
