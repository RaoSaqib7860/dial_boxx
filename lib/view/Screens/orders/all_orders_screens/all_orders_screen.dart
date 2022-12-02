import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/discount_coupon_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/create_order_screen/create_order_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kf_drawer/kf_drawer.dart';

class AllOrdersScreen extends KFDrawerContent {
  AllOrdersScreen({Key? key});

  @override
  State<AllOrdersScreen> createState() => _AllOrdersScreenState();
}

class _AllOrdersScreenState extends State<AllOrdersScreen> {
  var ordersList = [
    'All Orders(10)',
    'Today(2)',
    'Yesterday(4)',
    'This Week(8)'
  ];
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: AppColors.primaryColor,
          ),
          onPressed: widget.onMenuPressed,
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
        child: Column(
          children: [
            HeaderContainer(
              text: 'All Orders',
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 40.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    color: Colors.black12.withOpacity(0.10))
                              ],
                              border: Border.all(
                                  color: Color(0xff2C2C2C).withOpacity(0.60)),
                              borderRadius: BorderRadius.circular(5.sp)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Search Orders',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 5.h),
                                prefixIcon: Icon(Icons.search,
                                    color: Color(0xff6D6D6D))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Icon(
                        Icons.filter_list,
                        color: AppColors.primaryColor,
                        size: 35.sp,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 35.h,
                    child: ListView.builder(
                      itemCount: ordersList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectColor = index;
                              });
                            },
                            child: Container(
                                height: 40.h,
                                width: 125.w,
                                decoration: BoxDecoration(
                                    color: selectColor == index
                                        ? AppColors.primaryColor
                                        : Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(30.sp)),
                                child: Center(
                                  child: CustomText(
                                    text: ordersList[index],
                                    color: selectColor == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: selectColor == index
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                  ),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    // height: 320.h,
                    child: ListView.builder(
                      itemCount: 3,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.w, vertical: 10.h),
                          child: Container(
                            height: 150.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.whitColor,
                                borderRadius: BorderRadius.circular(5.sp),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                      color: Colors.black.withOpacity(0.20))
                                ]),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10.w, right: 10.w, top: 10.h),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: "Order #31245",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      CustomText(
                                        text: "Today, 4:18pm",
                                        size: 12.sp,
                                        color: AppColors.blackColor,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 54.h,
                                        width: 220.w,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 48.h,
                                              width: 48.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.sp),
                                                  border: Border.all(
                                                      color:
                                                          Color(0xff707070))),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                  'assets/svg/product_imag.svg',
                                                  height: 18.h,
                                                  width: 24.w,
                                                ),
                                              ),
                                              // color: AppColors.primaryColor,
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomText(
                                                  text: "1 Item",
                                                  color: Color(0xff3E3E3E),
                                                  size: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                CustomText(
                                                  text: "RS.200",
                                                  color: AppColors.primaryColor,
                                                  fontWeight: FontWeight.w600,
                                                  size: 15.sp,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomButtonClick(
                                        height: 22.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.lighOrangColor,
                                        ),
                                        child: Center(
                                          child: CustomText(
                                            text: "Paid",
                                            color: AppColors.secondaryColor,
                                            size: 13.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1.5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: "Pending",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Container(
                                        height: 20.h,
                                        width: 70.w,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black38),
                                            color: AppColors.whitColor,
                                            borderRadius:
                                                BorderRadius.circular(4.sp),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 2,
                                                  spreadRadius: 1,
                                                  color: Colors.black12
                                                      .withOpacity(0.10))
                                            ]),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomText(
                                                text: "Details",
                                                size: 12.sp,
                                              ),
                                              Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                size: 12.sp,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => CreateOrderScreen());
                    },
                    child: CustomButtonClick(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.sp),
                          color: AppColors.primaryColor),
                      child: Center(
                          child: CustomText(
                        text: "Create Order",
                        fontWeight: FontWeight.bold,
                        size: 16.sp,
                        color: AppColors.whitColor,
                      )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
      
    );
  }
}
