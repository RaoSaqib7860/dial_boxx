import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackingOrderScreen extends StatefulWidget {
  const TrackingOrderScreen({super.key});

  @override
  State<TrackingOrderScreen> createState() => _TrackingOrderScreenState();
}

class _TrackingOrderScreenState extends State<TrackingOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(color: AppColors.primaryColor),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderContainer(
              text: "Track Order",
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, bottom: 4.w),
              child: CustomText(
                text: "Tracking Order",
                fontWeight: FontWeight.w500,
                size: 15.sp,
                color: AppColors.blackColor,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    //height: 201.h,
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.whitColor,
                      borderRadius: BorderRadius.circular(6.sp),
                      boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 1, color: Colors.black.withOpacity(0.15))],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 8.h, right: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.4,
                                child: CustomText(
                                  text: "Tracking ID",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.45,
                                child: CustomText(
                                  text: "ID1234567",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.4,

                                child: CustomText(
                                  text: "Pick up Location",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.45,

                                // height: 45.h,
                                child: CustomText(
                                  text: "house 1,street3,F-8/I Islamabad",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.4,

                                child: CustomText(
                                  text: "Delivery Location",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.45,

                                child: CustomText(
                                  text: "Office 2 zamzam lane 9,DHA,Karachi",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.4,

                                child: CustomText(
                                  text: "Delivery Type",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.45,

                                child: CustomText(
                                  text: "Over Night",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.4,

                                child: CustomText(
                                  text: "Weight Charge",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.45,

                                child: CustomText(
                                  text: "1Kg",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.4,

                                child: CustomText(
                                  text: "Delivery Charge",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.45,

                                child: CustomText(
                                  text: "Rs.250",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.4,

                                child: CustomText(
                                  text: "Delivery Status",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                // width: MediaQuery.of(context).size.width*0.45,

                                child: CustomText(
                                  text: "Awaiting Pickup",
                                  size: 13.sp,
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonClick(
                    height: 30.h,
                    width: 140.w,
                    decoration: BoxDecoration(color: AppColors.primaryColor),
                    child: Center(
                      child: CustomText(
                        text: 'Cancel Delivery',
                        size: 13.sp,
                        color: AppColors.whitColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomButtonClick(
                    height: 30.h,
                    width: 140.w,
                    decoration: BoxDecoration(color: AppColors.secondaryColor),
                    child: Center(
                      child: CustomText(
                        text: 'Print Label',
                        size: 13.sp,
                        color: AppColors.whitColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
