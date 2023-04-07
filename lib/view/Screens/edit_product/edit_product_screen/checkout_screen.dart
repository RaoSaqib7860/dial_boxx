import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CheckoutScreen extends StatefulWidget {
  final int? index;
  const CheckoutScreen({this.index,Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  TextEditingController checkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  height: 22.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12,width: 1)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 3.h),
                            child: Text(
                              'Create Express Checkout Url For Direct Order',
                              style: TextStyle(fontSize: 11.sp,color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 3.h),
                            child: Text(
                              'Product Meta',
                              style: TextStyle(fontSize: 11.sp,color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h),
                            child: Text(
                              'QUANTITY',
                              style: TextStyle(fontSize: 11.sp,color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.2.h),
                        child: Container(
                          height: 4.h,
                          child: TextField(
                            style: TextStyle(fontSize: 12.sp),
                            controller: checkController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              hintText: 'Quantity',
                              labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                              hintStyle: TextStyle(fontSize: 10.sp),
                              suffixIcon: Icon(Icons.arrow_drop_down_sharp,size: 20,),
                              //Column(children: [Icon(Icons.arrow_drop_up,size: 20,),Icon(Icons.arrow_drop_down,size: 18,)],),
                              contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 3.5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          'Save Changes',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
