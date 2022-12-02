import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../orders/all_orders_screens/all_orders_screen.dart';

class DomainsScreen extends StatefulWidget {
  const DomainsScreen({super.key});

  @override
  State<DomainsScreen> createState() => _DomainsScreenState();
}

class _DomainsScreenState extends State<DomainsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leading: BackButton(
        color: AppColors.primaryColor,
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70.h,
              width: MediaQuery.of(context).size.width,
              color: AppColors.primaryColor,
              child: Center(
                child: CustomText(
                  text: "Domains",
                  color: AppColors.whitColor,
                  fontWeight: FontWeight.bold,
                  size: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Container(
                    height: 175.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(10.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: AppColors.blackColor.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "Dialboxx manage domain",
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "Domain name",
                            color: AppColors.blackColor,
                            size: 14.sp,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "http://dialboxx.com/pro123",
                            color: AppColors.primaryColor,
                            size: 12.sp,
                            decoration: TextDecoration.underline,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Date added",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              CustomText(
                                text: "Date added",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Nov 1,2022",
                                size: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              CustomText(
                                text: "Dialboxx",
                                size: 14.sp,
                                fontWeight: FontWeight.w300,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 150.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(10.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: AppColors.blackColor.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "Find your perfect domain?",
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            child: CustomText(
                              text:
                                  "Search for the domain name best suited for your brand",
                              color: AppColors.blackColor,
                              size: 14.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomButtonClick(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Center(
                              child: CustomText(
                                text: "Set up",
                                size: 14.sp,
                                color: AppColors.whitColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 150.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(10.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: AppColors.blackColor.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomText(
                            text: "Already have a domain?",
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                            size: 16.sp,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            child: CustomText(
                              text:
                                  "You can connect your existing domain to Dialboxx in few minutes",
                              color: AppColors.blackColor,
                              size: 14.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomButtonClick(
                            height: 30.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Center(
                              child: CustomText(
                                text: "Connect",
                                size: 14.sp,
                                color: AppColors.whitColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => AllOrdersScreen());
                    },
                    child: CustomButtonClick(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(6.sp)),
                      child: Center(
                        child: CustomText(
                          text: "Save Changes",
                          color: AppColors.whitColor,
                          size: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
