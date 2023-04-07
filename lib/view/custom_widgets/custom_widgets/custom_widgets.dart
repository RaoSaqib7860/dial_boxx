import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget customContainer(
    String? text1,
    String? desc,
    String? price,
    String? monthPrice,
    String? billedPrice,
    String? purchasePrice,
    Color? color
    ){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 2.w),
    child: Card(
      elevation: 3,
      child: Container(
        //height: 34.h,
        width: 90.w,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.5,color: Colors.black26)
        ),
        child: Column(

          children: [
            Container(
              height: 6.h,
              width: double.infinity,
              color: color,
              child: Padding(
                padding:  EdgeInsets.only(top: 1.5.h,left: 3.w),
                child: Text(
                  text1!,
                  style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 1.h,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 4.w),
                    child: Text(
                      desc!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.5.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Text(
                          price!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )),
                SizedBox(height: 0.5.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Text(
                        monthPrice!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )),
                SizedBox(height: 0.5.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Text(
                        'Billed Accurately Rs '+billedPrice!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )),
                Padding(
                  padding:  EdgeInsets.only(top: 1.h,right: 2.w),
                  child: Container(
                    height: 5.h,
                    width: 80.w,
                    color: color,
                    child: Center(
                      child: Text(
                        purchasePrice!,
                        style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 2.h,)
          ],
        ),
      ),
    ),
  );
}

