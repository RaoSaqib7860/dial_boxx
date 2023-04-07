import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../../custom_widgets/custom_widgets/common_widgets.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController againPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.blue,
        ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 15.w),
        //     child: CircleAvatar(
        //       radius: 15.sp,
        //       backgroundColor: AppColors.primaryColor,
        //       child: Icon(
        //         Icons.person,
        //         size: 22.sp,
        //         color: AppColors.whitColor,
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderContainer(
                text: "Profile Setting",
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 7.w),
                    child: Text(
                      'Store Information',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Container(
                height: 18.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black12,offset: Offset(1, 1),blurRadius: 3),
                    BoxShadow(color: Colors.black12,offset: Offset(-1, -1),blurRadius: 3)
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 0.5.h,),
                    customTextField(name: 'Name',hint: 'DECORAY',controller: nameController),
                    customTextField(name: 'Email',hint: 'abc@gmail.com',controller: emailController)
                  ],
                ),
              ),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 7.w),
                    child: Text(
                      'Change Password',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Container(
                height: 26.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black12,offset: Offset(1, 1),blurRadius: 3),
                    BoxShadow(color: Colors.black12,offset: Offset(-1, -1),blurRadius: 3)
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 0.5.h,),
                    customTextField(name: 'Old Password',hint: 'Enter Old Password',controller: oldPasswordController),
                    customTextField(name: 'New Password',hint: 'Enter New Password',controller: newPasswordController),
                    customTextField(name: 'Enter Again Password',hint: 'Enter Again',controller: againPasswordController),
                  ],
                ),
              ),
              SizedBox(height: 22.h,),
              Container(
                height: 5.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 4.h,)
            ],
          ),
        ),
      ),
    );
  }
}
