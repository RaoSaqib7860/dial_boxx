import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../social_media_screen/social_media_screen.dart';


class DomainsScreen extends StatefulWidget {
  const DomainsScreen({Key? key}) : super(key: key);

  @override
  State<DomainsScreen> createState() => _DomainsScreenState();
}

class _DomainsScreenState extends State<DomainsScreen> {
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
                text: "Domains",
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 20.h,
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
                            'Dialboxx manage domain',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                      child: Row(
                        children: [
                          Text(
                            'Domain name',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                      child: Row(
                        children: [
                          Text(
                            'http://dialboxx.com/pro123',
                            style: TextStyle(color: Colors.blue,fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Date added',style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 0.5.h,),
                              Text('Nov 1, 2022'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Date added',style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 0.5.h,),
                              Text('Dialboxx'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 16.h,
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
                            'Find your perfect domain?',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'Search for the domain namebest suited for\nyour brand'
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 4.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Set up',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 16.h,
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
                            'Already have a domain?',
                            style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'You can connect your existing domain to\nDialboxx in a few minutes'
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 4.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Connect',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.h,),
              Container(
                height: 5.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Save Changes',
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SocialMediaScreen(),));
        },
      ),
    );
  }
}
