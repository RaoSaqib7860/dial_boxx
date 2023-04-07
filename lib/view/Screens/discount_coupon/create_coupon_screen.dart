import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../add_customer/add_customer.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderContainer(
                text: "Discount Coupon",
              ),
             Container(
               height: 35.h,
               color: Colors.grey.withAlpha(50),
               child: Center(
                 child: Icon(Icons.image,color: AppColors.primaryColor,size: 28.w,),
               ),
             ),
              Container(
                color: Colors.white,
                height: 45.h,
                child: Column(
                  children: [
                    SizedBox(height: 8.h,),
                    Text(
                      'Get more sales with coupons',
                      style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2.h,),
                    Text(
                      'Create and share coupons for your sale',
                      style: TextStyle(color: Colors.grey,fontSize: 12.sp),
                    ),
                    SizedBox(height: 0.5.h,),
                    Text(
                      'to get more and more order on',
                      style: TextStyle(color: Colors.grey,fontSize: 12.sp),
                    ),
                    SizedBox(height: 0.5.h,),
                    Text(
                      'your store.',
                      style: TextStyle(color: Colors.grey,fontSize: 12.sp),
                    ),
                    SizedBox(height: 16.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 6.w),
                      child: Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Create Coupon',
                            style: TextStyle(fontSize: 15.sp,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddCustomerScreen(),));
        },
      ),
    );
  }
}
