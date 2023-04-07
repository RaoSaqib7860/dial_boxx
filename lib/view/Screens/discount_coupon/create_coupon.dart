import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import 'create_coupon_screen.dart';

class CreateCouponScreen extends StatefulWidget {
  const CreateCouponScreen({Key? key}) : super(key: key);

  @override
  State<CreateCouponScreen> createState() => _CreateCouponScreenState();
}

class _CreateCouponScreenState extends State<CreateCouponScreen> with TickerProviderStateMixin {
  late TabController _controller;
  var items = [
    'Select item',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Select item';
  bool value = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderContainer(
                text: "Discount Coupon",
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 4.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey,width: 1)
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 3.h,
                        width: 25.w,
                        child: Center(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 2.w,right: 1.w),
                            child: DropdownButton(
                              isExpanded: true,
                              underline: SizedBox(),
                              value: dropdownvalue,
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items,style: TextStyle(fontSize: 8.sp),),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                              hint:  Text(
                                "Font Family",
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,

                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 9.sp,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 4.h,
                  color: Colors.red,
                  child: TabBar(
                    controller: _controller,
                    indicatorWeight: 0.00001,
                    tabs: [
                      Text(
                        'SELECT',
                        style: TextStyle(fontSize: 10.sp,color: Colors.white),
                      ),
                      Text(
                        'CODE',
                        style: TextStyle(fontSize: 10.sp,color: Colors.white),
                      ),
                      Text(
                        'ACTION',
                        style: TextStyle(fontSize: 10.sp,color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.4.w),
                child: Container(
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                   // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(1, 1)),
                      BoxShadow(spreadRadius: 1,color: Colors.black12,offset: Offset(-1, -1)),
                    ],
                  ),
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Checkbox(
                                //     value: value,
                                //     onChanged: (value) {
                                //
                                //     },
                                // ),
                                Icon(Icons.check_box_outline_blank,color: Colors.grey,size: 17,),
                                Text(
                                  'Alfalah bank'
                                ),
                                Icon(Icons.edit_square,color: AppColors.primaryColor,size: 20,),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.black26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.check_box_outline_blank,color: Colors.grey,size: 17,),
                                Text(
                                    'Alfalah bank'
                                ),
                                Icon(Icons.edit_square,color: AppColors.primaryColor,size: 20,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 45.h,),
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
                      'CREATE COUPON',
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CouponScreen(),));
        },
      ),
    );
  }
}
