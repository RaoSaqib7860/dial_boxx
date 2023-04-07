import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LogosScreen extends StatefulWidget {
  final int? index;
  const LogosScreen({this.index,Key? key}) : super(key: key);

  @override
  State<LogosScreen> createState() => _LogosScreenState();
}

class _LogosScreenState extends State<LogosScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 22.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1,color: Colors.black26)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,left: 4.w),
                    child: Text(
                      'Store Logo',
                      style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 4.w),
                    child: Container(
                      height: 10.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1,color: Colors.black26),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Icon(Icons.image,size: 40.sp,color: Colors.blue,),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 4.w),
                    child: Text(
                      'Update Store image',
                      style: TextStyle(fontSize: 14.sp,color: Colors.blueAccent),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
             // height: 12.h,
              width: 90.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black26),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,top: 1.5.h),
                        child: Text(
                          'Show Store name',
                          style: TextStyle(fontSize: 15.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),

                      CupertinoSwitch(
                        value: _value,
                        onChanged: (bool value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 4.w),
                    child: Text(
                      'Show store name alongside the store logo \nat the navigation bar',
                      style: TextStyle(
                          fontSize: 13.sp
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
