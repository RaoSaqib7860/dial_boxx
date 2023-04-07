import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../my_customer/my_customer.dart';

class WebsiteDesignScreen extends StatefulWidget {
  const WebsiteDesignScreen({Key? key}) : super(key: key);

  @override
  State<WebsiteDesignScreen> createState() => _WebsiteDesignScreenState();
}

class _WebsiteDesignScreenState extends State<WebsiteDesignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.blue,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: CircleAvatar(
              radius: 15.sp,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.person,
                size: 22.sp,
                color: AppColors.whitColor,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          HeaderContainer(
            text: "Website Design",
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.only(left: 5.w,right: 5.w),
            child: Text(
              'Theme',
              style: TextStyle(fontSize: 14.sp),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.only(left: 5.w,right: 5.w,top: 1.h,bottom: 2.h),
                child: Container(
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1),blurRadius: 1),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1),blurRadius: 1),
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 19.h,
                        color: Colors.grey.withAlpha(50),
                        child: Center(
                          child: Icon(Icons.image,color: AppColors.primaryColor ,size: 23.w,),
                        ),
                      ),
                      Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 5.w,right: 5.w,bottom: 1.h),
                                  child: Text(
                                    'Leo',
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right: 5.w),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 2.8.h,
                                        width: 16.w,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black,width: 0.5),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Preview',
                                            style: TextStyle(fontSize: 12.sp),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 2.w,),
                                      Container(
                                        height: 2.8.h,
                                        width: 13.w,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(fontSize: 12.sp,color: Colors.white,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ),
              );
            },),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyCustomerScreen(),));
        },
      ),
    );
  }
}
