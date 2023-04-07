import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AllCustomerScreen extends StatefulWidget {
  final int? index;
  const AllCustomerScreen({this.index,Key? key}) : super(key: key);

  @override
  State<AllCustomerScreen> createState() => _AllCustomerScreenState();
}

class _AllCustomerScreenState extends State<AllCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(left: 3.w,right: 5.w,bottom: 2.h,top: 0.2.h),
            child: Container(
              height: 11.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1),
                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1),
                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1),blurRadius: 1),
                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1),blurRadius: 1),
                  ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 1.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                           TextSpan(
                             text: 'Ali',
                             style: TextStyle(fontSize: 12.sp,color: Colors.black,fontWeight: FontWeight.bold)
                           ),

                            TextSpan(
                                text: '  imported',
                                style: TextStyle(fontSize: 10.sp,color: Colors.black,)
                            )
                          ]
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TOTAL ORDER',
                              style: TextStyle(color: Colors.grey,fontSize: 10.sp,),
                            ),
                            SizedBox(height: 0.3.h,),
                            Text(
                              '0',
                              style: TextStyle(color: Colors.black,fontSize: 13.sp,),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TOTAL SALES',
                                style: TextStyle(color: Colors.grey,fontSize: 10.sp,),
                              ),
                              SizedBox(height: 0.3.h,),
                              Text(
                                'Rs. 0',
                                style: TextStyle(color: Colors.black,fontSize: 13.sp,),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },),
    );
  }
}
