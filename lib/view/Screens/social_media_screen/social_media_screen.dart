import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../tutorials_screen/tutorials_screen.dart';

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({Key? key}) : super(key: key);

  @override
  State<SocialMediaScreen> createState() => _SocialMediaScreenState();
}

class _SocialMediaScreenState extends State<SocialMediaScreen> {
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
                text: "Social Media",
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 47.h,
                width: 80.w,
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
                    Padding(
                      padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h),
                      child: Row(
                        children: [
                          Text(
                            'Social profiles',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    customText(socialName: 'Facebook URL',linkName: 'http://facebook.com/'),
                    customText(socialName: 'Twitter URL',linkName: 'http://twitter.com/'),
                    customText(socialName: 'Instagram URL',linkName: 'http://instagram.com/'),
                    customText(socialName: 'Tiktok URL',linkName: 'http://tiktok.com/'),
                    customText(socialName: 'Youtube URL',linkName: 'http://youtube.com/'),
                  ],
                ),
              ),
              SizedBox(height: 18.h,),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TutorialsScreen(),));
        },
      ),
    );
  }

  Widget customText({
    String? socialName,
    String? linkName,
}){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
          child: Row(
            children: [
              Text(
                socialName!,
                style: TextStyle(color: Colors.blue,fontSize: 13.sp),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 0.5.h),
          child: Row(
            children: [
              Text.rich(
                TextSpan(
                  text: linkName!,
                  style: TextStyle(color: Colors.black,fontSize: 13.sp),
                  children: [
                    TextSpan(
                     text: 'username',
                      style: TextStyle(color: Colors.grey,fontSize: 13.sp),
                    )
                  ]
                ),

              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 4.w,right: 4.w,bottom: 0.5.h),
          child: Divider(
            height: 2.h,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
