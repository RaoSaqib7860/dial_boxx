import 'dart:ffi';

import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/delivery/delivery_order_details_screen/delivery_order_details_screen.dart';
import 'package:dialbox_seller/view/Screens/delivery/setup_dialbox_delivery_screen/setup_dialboxx_delivery_screen.dart';
import 'package:dialbox_seller/view/Screens/home/components/kf_drawer/drawer_main_screen.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/home_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/custom_widgets/persistant_bottom_sheet_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class AddPaymentMethodScreen extends StatefulWidget {
  const AddPaymentMethodScreen({super.key});

  @override
  State<AddPaymentMethodScreen> createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  bool bootomsheetstatus = false;
  var ordersList = [
    'All Orders(10)',
    'Today(2)',
    'Yesterday(4)',
    'This Week(8)'
  ];
  int selectColor = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(
          Icons.menu,
          color: AppColors.primaryColor,
        ),
        // BackButton(color: AppColors.primaryColor),
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.primaryColor,
              child: Column(
                children: [
                  Container(
                    height: 30.h,
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                      CustomText(
                        text: "Payment Method",
                        size: 14.sp,
                      ),
                      CustomText(
                        text: "Payment History",
                        size: 14.sp,
                      ),
                      CustomText(
                        text: "Payout Details",
                        size: 14.sp,
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Dialboxx Pay",
                                size: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                              CustomButtonClick(
                                height: 23.h,
                                width: 115.w,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(2.sp)),
                                child: Center(
                                  child: CustomText(
                                    text: "HOW IT WORKS",
                                    fontWeight: FontWeight.w600,
                                    size: 12.sp,
                                    color: AppColors.whitColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "COD",
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                                size: 14.sp,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 220.w,
                                child: CustomText(
                                  text:
                                      "Activate COD to start accepting cash on Delivery",
                                  size: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                height: 34.h,
                                child: FlutterSwitch(
                                  width: 55.0.w,
                                  height: 30.0.h,
                                  valueFontSize: 15.0,
                                  toggleSize: 30.0,
                                  padding: 0.4,
                                  activeColor: AppColors.greenColor,
                                  activeToggleColor: AppColors.whitColor,
                                  activeText: '',
                                  activeTextColor: Colors.black54,
                                  inactiveText: '',
                                  value: bootomsheetstatus,
                                  borderRadius: 30.0.sp,
                                  showOnOff: true,
                                  onToggle: (val) {
                                    setState(() {
                                      bootomsheetstatus = val;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "HBL Konnect",
                                size: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                              CustomButtonClick(
                                height: 25.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(2.sp)),
                                child: Center(
                                  child: CustomText(
                                    text: "Set Up",
                                    fontWeight: FontWeight.w600,
                                    size: 12.sp,
                                    color: AppColors.whitColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Image.asset('assets/images/hbl-logo.png'),
                          SizedBox(
                            height: 6.h,
                          ),
                          Container(
                            width: 180.w,
                            child: CustomText(
                              text:
                                  "Set up your pay out Method to take online pay Method directly into your bank account",
                              size: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Qisst Pay",
                                size: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                              CustomButtonClick(
                                height: 25.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(2.sp)),
                                child: Center(
                                  child: CustomText(
                                    text: "Set Up",
                                    fontWeight: FontWeight.w600,
                                    size: 12.sp,
                                    color: AppColors.whitColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset('assets/svg/qist_pay.svg'),
                          SizedBox(
                            height: 2.h,
                          ),
                          Container(
                            width: 190.w,
                            child: CustomText(
                              text:
                                  "Allow your Customer to make the purchase in installement & increase your conversation rate by 10x",
                              size: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              showModelBottomSheet();
                            },
                            child: CustomButtonClick(
                              height: 45.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(2.sp),
                              ),
                              child: Center(
                                child: CustomText(
                                  text: "Add payout Method",
                                  size: 14.sp,
                                  color: AppColors.whitColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 160.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(border: Border.all()),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 20.h),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          CustomText(
                                            text: "Rs.0",
                                            size: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor,
                                          ),
                                          CustomText(
                                            text: "Booked Order",
                                            size: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff4C4C4C),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CustomText(
                                            text: "Rs.0",
                                            size: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor,
                                          ),
                                          CustomText(
                                            text: "Pending Delivery Charges",
                                            size: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff4C4C4C),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          CustomText(
                                            text: "Rs.0",
                                            size: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor,
                                          ),
                                          CustomText(
                                            text: "Booked Order",
                                            size: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff4C4C4C),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CustomText(
                                            text: "Rs.0",
                                            size: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor,
                                          ),
                                          CustomText(
                                            text: "Pending Return",
                                            size: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff4C4C4C),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
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
                                            color: Colors.black12
                                                .withOpacity(0.10))
                                      ],
                                      border: Border.all(
                                          color: Color(0xff2C2C2C)
                                              .withOpacity(0.60)),
                                      borderRadius:
                                          BorderRadius.circular(5.sp)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Search Payment History',
                                        border: InputBorder.none,
                                        contentPadding:
                                            EdgeInsets.only(top: 4.h),
                                        hintStyle: TextStyle(
                                            fontSize: 15.sp,
                                            color: Color(0xff838383)),
                                        prefixIcon: Icon(Icons.search,
                                            color: Color(0xff6D6D6D))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Container(
                            height: 35.h,
                            child: ListView.builder(
                              itemCount: ordersList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.w),
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
                                            borderRadius:
                                                BorderRadius.circular(30.sp)),
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
                          Column(
                            children: [
                              Container(
                                // height: 380.h,
                                child: ListView.builder(
                                  itemCount: 2,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 110.h,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              color: AppColors.whitColor,
                                              borderRadius:
                                                  BorderRadius.circular(4.sp),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 2,
                                                    spreadRadius: 1,
                                                    color: AppColors.blackColor
                                                        .withOpacity(0.10))
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.h),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    10.w),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              height: 55.h,
                                                              width: 55.w,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(5
                                                                              .sp),
                                                                      // color: Color(0xffE6E6E6),
                                                                      color: Colors
                                                                          .white,
                                                                      border: Border.all(
                                                                          color:
                                                                              Color(0xff707070))),
                                                              child: Center(
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/svg/product_imag.svg',
                                                                  fit: BoxFit
                                                                      .none,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          //  height: 90.h,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        10.w),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomText(
                                                                      text:
                                                                          "Order #31245",
                                                                      size:
                                                                          15.sp,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                    CustomText(
                                                                      text:
                                                                          "22/10/22",
                                                                      size:
                                                                          12.sp,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomText(
                                                                      text:
                                                                          "Rs.200",
                                                                      size:
                                                                          15.sp,
                                                                      color: AppColors
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          22.h,
                                                                      width:
                                                                          55.w,
                                                                      color: Color(
                                                                          0xffF0C9D0),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            CustomText(
                                                                          text:
                                                                              "COD",
                                                                          color:
                                                                              AppColors.secondaryColor,
                                                                          size:
                                                                              14.sp,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                // Padding(
                                                                //   padding: EdgeInsets.only(
                                                                //       right: 10.w),
                                                                //   child: Row(
                                                                //     mainAxisAlignment:
                                                                //         MainAxisAlignment
                                                                //             .spaceBetween,
                                                                //     children: [
                                                                //       CustomText(
                                                                //         text: "In Stock",
                                                                //         color: AppColors
                                                                //             .greenColor,
                                                                //         size: 12.sp,
                                                                //         fontWeight:
                                                                //             FontWeight.w300,
                                                                //       ),
                                                                //       Text('data'),
                                                                //     ],
                                                                //   ),
                                                                // )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.w),
                                                    child: Divider(
                                                      thickness: 2.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.w),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomText(
                                                          text: "Pending",
                                                          size: 15.sp,
                                                          color: AppColors
                                                              .blackColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                        Container(
                                                          height: 20.h,
                                                          width: 70.w,
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .black38),
                                                              color: AppColors
                                                                  .whitColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.sp),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    blurRadius:
                                                                        2,
                                                                    spreadRadius:
                                                                        1,
                                                                    color: Colors
                                                                        .black12
                                                                        .withOpacity(
                                                                            0.10))
                                                              ]),
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        4.w),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomText(
                                                                  text:
                                                                      "Details",
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 27.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.sp),
                                    border:
                                        Border.all(color: Color(0xff707070))),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.arrow_downward_outlined,
                                        color: Color(0xff707070),
                                        size: 18.sp,
                                      ),
                                      CustomText(
                                        text: "Download Report",
                                        size: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffA1A1A1),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
                    child: Column(
                      children: [
                        Container(
                          height: 340.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: AppColors.whitColor,
                            borderRadius: BorderRadius.circular(4.sp),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: AppColors.blackColor.withOpacity(0.12))
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Bank',
                                  size: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: 'Allied Bank',
                                  size: 14.sp,
                                  color: Color(0xff4C4C4C),
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  text: 'Account Title',
                                  size: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: 'Ahmed khan',
                                  size: 14.sp,
                                  color: Color(0xff4C4C4C),
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  text: 'Account Number',
                                  size: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: '**********3422',
                                  size: 14.sp,
                                  color: Color(0xff4C4C4C),
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  text: 'City',
                                  size: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: 'Rawalpindi',
                                  size: 14.sp,
                                  color: Color(0xff4C4C4C),
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  text: 'Address',
                                  size: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: 'Phase 7 Rawalpindi',
                                  size: 14.sp,
                                  color: Color(0xff4C4C4C),
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomButtonClick(
                          height: 45.h,
                          width: MediaQuery.of(context).size.width,
                          decoration:
                              BoxDecoration(color: AppColors.primaryColor),
                          child: Center(
                            child: CustomText(
                              text: "UPDATE",
                              size: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whitColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future showModelBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp))),
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                        text: "Bank Account Info ",
                        size: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 30.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Select Bank*',
                            hintStyle: TextStyle(fontSize: 12.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 30.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Account title*',
                            hintStyle: TextStyle(fontSize: 12.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 30.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Account Number/IBAN*',
                            hintStyle: TextStyle(fontSize: 12.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                        text: "Address Info",
                        size: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 30.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'City',
                            hintStyle: TextStyle(fontSize: 12.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 30.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Address',
                            hintStyle: TextStyle(fontSize: 12.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => BottomSheetCustom(
                                index: 0,
                              ));
                        },
                        child: CustomButtonClick(
                          height: 45.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(3.sp)),
                          child: Center(
                            child: CustomText(
                              text: 'Add Payment Method',
                              size: 14.sp,
                              color: AppColors.whitColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ));
            },
          );
        });
  }
}
