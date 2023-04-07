import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import 'create_coupon.dart';

class SaveCouponScreen extends StatefulWidget {
  const SaveCouponScreen({Key? key}) : super(key: key);

  @override
  State<SaveCouponScreen> createState() => _SaveCouponScreenState();
}

class _SaveCouponScreenState extends State<SaveCouponScreen> {
  TextEditingController codeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController percentageController = TextEditingController();
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
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1)),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1)),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1)),
                      ]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Coupon',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3.h,),
                        Text(
                          'Code*',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        custommTextField(labelText: 'Enter coupon code',controller: codeController),
                        SizedBox(height: 2.h,),
                        Text(
                          'Expiry Date',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        custommTextField(labelText: 'Date',controller: dateController),
                        SizedBox(height: 2.h,),
                        Text(
                          'Percentage (%)',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        custommTextField(labelText: '%',controller: percentageController),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
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
                      'Save',
                      style: TextStyle(fontSize: 15.sp,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateCouponScreen(),));
        },
      ),
    );
  }

  Widget custommTextField({
    String? hintText,
    String? labelText,
    Widget? suffixIcon,
    TextEditingController? controller
  }){
    return Padding(
      padding:  EdgeInsets.only(top: 0.5.h),
      child: Container(
        height: 4.h,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
            hintText: hintText,
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
            hintStyle: TextStyle(fontSize: 12.sp),
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
          ),
        ),
      ),
    );
  }

}
