import 'dart:ffi';

import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/delivery/delivery_order_details_screen/delivery_order_details_screen.dart';
import 'package:dialbox_seller/view/Screens/delivery/setup_dialbox_delivery_screen/setup_dialboxx_delivery_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class BookDeliveryScreen extends StatefulWidget {
  const BookDeliveryScreen({super.key});

  @override
  State<BookDeliveryScreen> createState() => _BookDeliveryScreenState();
}

class _BookDeliveryScreenState extends State<BookDeliveryScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  var ordersList = [
    'All Orders(10)',
    'Today(2)',
    'Yesterday(4)',
    'This Week(8)'
  ];
  int selectColor = 0;
  bool status = false;
  bool openBottomSheet = false;
  bool dropDown1 = false;
  bool dropDown2 = false;
  bool dropDown3 = false;
  bool dropDown4 = false;
  bool acceptOrder = false;
  bool shipServices = false;
  bool selectOverNight = false;
  bool detain = false;
  bool overland = false;
  bool deliveryInfo = false;
  bool bookNow = false;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.primaryColor,
              child: Column(
                children: [
                  Container(
                    height: 30.h,
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    labelPadding: EdgeInsets.zero,
                    tabs: <Widget>[
                      CustomText(
                        text: "Delivery Orders",
                        size: 16.sp,
                      ),
                      CustomText(
                        text: "Pickup Location",
                        size: 16.sp,
                      ),
                      CustomText(
                        text: "FAQs",
                        size: 16.sp,
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  //................................Delivery Order............................................//
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
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
                                          color:
                                              Colors.black12.withOpacity(0.10))
                                    ],
                                    border: Border.all(
                                        color: Color(0xff2C2C2C)
                                            .withOpacity(0.60)),
                                    borderRadius: BorderRadius.circular(5.sp)),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Search Delivery Orders',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(top: 3.h),
                                      hintStyle: TextStyle(
                                        fontSize: 14.sp,
                                      ),
                                      prefixIcon: Icon(Icons.search,
                                          color: Color(0xff6D6D6D))),
                                ),
                              ),
                            ),
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
                        SizedBox(
                          height: 10.h,
                        ),
                        ListView.builder(
                          itemCount: 3,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              // height: 150.h,
                              padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
                              margin: EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: AppColors.whitColor,
                                  borderRadius: BorderRadius.circular(5.sp),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        spreadRadius: 1,
                                        color:
                                            Colors.black.withOpacity(0.20))
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
                                                        BorderRadius
                                                            .circular(4.sp),
                                                    border: Border.all(
                                                        color: Color(
                                                            0xff707070))),
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
                                                    CrossAxisAlignment
                                                        .start,
                                                children: [
                                                  CustomText(
                                                    text: "1 Item",
                                                    color:
                                                        Color(0xff3E3E3E),
                                                    size: 14.sp,
                                                    fontWeight:
                                                        FontWeight.w600,
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  CustomText(
                                                    text: "RS.200",
                                                    color: AppColors
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w600,
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
                                              color:
                                                  AppColors.secondaryColor,
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
                                                  BorderRadius.circular(
                                                      4.sp),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                            );
                          },
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              delivershowModelBottomSheet();
                            });
                          },
                          child: CustomButtonClick(
                            height: 45.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.sp),
                                color: AppColors.primaryColor),
                            child: Center(
                                child: CustomText(
                              text: "Book Delivery",
                              fontWeight: FontWeight.bold,
                              size: 16.sp,
                              color: AppColors.whitColor,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),

//.................................Pickup Location Tab.....................................//

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.w,
                          right: 15.w,
                          top: 15.h,
                        ),
                        child: Container(
                          //height: 300.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: AppColors.whitColor,
                            borderRadius: BorderRadius.circular(6.sp),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  color: Colors.black.withOpacity(0.15))
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.w, right: 10.w, top: 20.h),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        CustomText(
                                          text: "Contact Person",
                                          size: 14.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        CustomText(
                                            text: "Ali Usman",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w400),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          // height: 45.h,
                                          width: MediaQuery.of(context).size.width*0.4,
                                          child: CustomText(
                                            text: "Pickup Location Address",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          height: 45.h,
                                          width: MediaQuery.of(context).size.width*0.4,

                                          child: CustomText(
                                            text:
                                            "house 31 rafi block bahria town phase 8",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        CustomText(
                                          text: "Postal Code",
                                          size: 14.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        CustomText(
                                          text: "123",
                                          size: 14.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        CustomText(
                                          text: "GST Number",
                                          size: 14.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        CustomText(
                                          text: "12345",
                                          size: 14.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),

                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "Contact Number",
                                          size: 14.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          width: 130.w,
                                          child: CustomText(
                                              text: "+923123456789",
                                              size: 14.sp,
                                              color: AppColors.blackColor,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          width: 130.w,
                                          child: CustomText(
                                            text: "City",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          width: 130.w,
                                          child: CustomText(
                                            text: "Rawalpindi",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          width: 130.w,
                                          child: CustomText(
                                            text: "Province",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Container(
                                          width: 130.w,
                                          child: CustomText(
                                            text: "Punjab",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                                Divider(
                                  thickness: 2.5,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => SetUpDialBoxDeliveryScreen());
                                  },
                                  child: Center(
                                    child: CustomText(
                                      text: "Edit",
                                      color: AppColors.primaryColor,
                                      size: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

//.................................FAQs Tab.............................................//

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomText(
                          text: "Need Help?",
                          size: 16.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  // height: 46.h,
                                  // width: 170.w,
                                  padding:EdgeInsets.only(bottom: 16.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2.sp),
                                      border: Border.all(color: Color(0xffC7C4C4)),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 1,
                                          color: Colors.black.withOpacity(0.10),
                                        ),
                                      ]),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      CustomText(
                                        text: "Call Us",
                                        size: 9.0.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor,
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      CustomText(
                                        text: "+92-12-351-87677 (11am-5pm)",
                                        size: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 30,),
                              Expanded(
                                child: Container(
                                  // height: 46.h,
                                  // width: 170.w,
                                  padding:EdgeInsets.only(bottom: 16.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color(0xffC7C4C4),
                                      ),
                                      borderRadius: BorderRadius.circular(2.sp),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 2,
                                            spreadRadius: 1,
                                            color: Colors.black.withOpacity(0.10))
                                      ]),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      CustomText(
                                        text: "Email Us",
                                        size: 9.0.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor,
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      CustomText(
                                        text: "Support@dialboxx.com",
                                        size: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomText(
                          text: "Frequently asked question (FAQs)",
                          size: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              dropDown1 = !dropDown1;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "How Does Dialboxx Delivery Works?",
                                size: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              !dropDown1
                                  ? Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.remove,
                                      color: AppColors.blackColor,
                                    )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        dropDown1
                            ? Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: Container(
                                  child: CustomText(
                                    text:
                                        "Dialboxx partner with leading courier companies to get you the most & cost-effective shipping efficiency",
                                    color: Color(0xff656565),
                                    size: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              dropDown2 = !dropDown2;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // width: 320.w,
                                child: CustomText(
                                  text:
                                      "How do I start shipping with Dialboxx Delivery?",
                                  size: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              !dropDown2
                                  ? Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.remove,
                                      color: AppColors.blackColor,
                                    )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        dropDown2
                            ? Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: Container(
                                  child: CustomText(
                                    text:
                                        "Dialboxx partner with leading courier companies to get you the most & cost-effective shipping efficiency",
                                    color: Color(0xff656565),
                                    size: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              dropDown3 = !dropDown3;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "How Should I use Dialboxx Delivery?",
                                size: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              !dropDown3
                                  ? Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.remove,
                                      color: AppColors.blackColor,
                                    )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        dropDown3
                            ? Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: Container(
                                  child: CustomText(
                                    text:
                                        "Dialboxx partner with leading courier companies to get you the most & cost-effective shipping efficiency",
                                    color: Color(0xff656565),
                                    size: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              dropDown4 = !dropDown4;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "When will I get paid?",
                                size: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              !dropDown4
                                  ? Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.remove,
                                      color: AppColors.blackColor,
                                    )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        dropDown4
                            ? Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: CustomText(
                                  text:
                                      "Dialboxx partner with leading courier companies to get you the most & cost-effective shipping efficiency",
                                  color: Color(0xff656565),
                                  size: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //.....................delivery Model Bottom Sheet..............................//

  Future delivershowModelBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.sp),
            topRight: Radius.circular(20.sp),
          ),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      text: "Select Delivery Service",
                      size: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pop();
                          // shipServices = false;
                          bookNow = false;
                        });
                        shipWithshowModelBottomSheet();
                      },
                      child: Container(
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xffF1D838),
                        child: Center(
                          child: Container(
                            height: 50.h,
                            width: 70.w,
                            child: Image.asset(
                              'assets/images/tcs.png',
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 50.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.secondaryColor,
                      child: Container(
                        height: 50.h,
                        width: 70.w,
                        child: Image.asset(
                          'assets/images/insta.png',
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 50.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.primaryColor,
                      child: Container(
                        height: 50.h,
                        width: 70.w,
                        child: Image.asset(
                          'assets/images/post.png',
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 50.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.whitColor,
                      child: Center(
                        child: CustomText(
                          text: 'OR',
                          size: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        color: AppColors.primaryColor,
                        child: Center(
                          child: CustomText(
                            text: 'SELF',
                            size: 22.sp,
                            color: AppColors.whitColor,
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              );
            },
          );
        }).then((value) => (value) {
          setState(() {});
        });
  }

  //...............ship with Model sheet dialog........................//

  Future shipWithshowModelBottomSheet() {
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
              return SingleChildScrollView(
                child: Container(
                  // height: 740.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 60.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffF1D838),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.sp),
                                topRight: Radius.circular(20.sp))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Ship with",
                              size: 15.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 30.h,
                              width: 70.w,
                              child: Image.asset(
                                'assets/images/tcs.png',
                                fit: BoxFit.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: !bookNow ? 20.h : 10.0,
                      ),
                      !bookNow
                          ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(
                                text: "Select City",
                                fontWeight: FontWeight.bold,
                                size: 15.sp,
                                color: AppColors.blackColor,
                              ),
                            )
                          : SizedBox(),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Container(
                          height: 65.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.sp),
                              border: Border.all(color: Color(0xff707070))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "From",
                                            fontWeight: FontWeight.w300,
                                            size: 15.sp,
                                            color: Colors.black,
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          CustomText(
                                            text: "Islamabad",
                                            fontWeight: FontWeight.w500,
                                            size: 15.sp,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/shiping.svg'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "To",
                                          fontWeight: FontWeight.w300,
                                          size: 15.sp,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        CustomText(
                                          text: "Karachi",
                                          fontWeight: FontWeight.w500,
                                          size: 15.sp,
                                          color: Colors.black,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),

                      !bookNow
                          ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Delivery type",
                                    size: 15.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectOverNight = !selectOverNight;
                                          });
                                        },
                                        child: CustomButtonClick(
                                          height: 40.h,
                                          width: 100.w,
                                          decoration: BoxDecoration(
                                            color: selectOverNight
                                                ? AppColors.secondaryColor
                                                : Colors.white,
                                            border: Border.all(
                                                color: !selectOverNight
                                                    ? Color(0xff707070)
                                                    : Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(7.sp),
                                          ),
                                          child: Center(
                                            child: CustomText(
                                              text: 'Over Night',
                                              color: selectOverNight
                                                  ? AppColors.whitColor
                                                  : AppColors.blackColor,
                                              // AppColors.blackColor,
                                              fontWeight: FontWeight.bold,
                                              size: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            detain = !detain;
                                          });
                                        },
                                        child: CustomButtonClick(
                                          height: 40.h,
                                          width: 100.w,
                                          decoration: BoxDecoration(
                                            color: detain
                                                ? AppColors.secondaryColor
                                                : Colors.white,
                                            border: Border.all(
                                                color: !detain
                                                    ? Color(0xff707070)
                                                    : Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(7.sp),
                                          ),
                                          child: Center(
                                            child: CustomText(
                                              text: 'Detain',
                                              color: detain
                                                  ? AppColors.whitColor
                                                  : AppColors.blackColor,
                                              // AppColors.blackColor,
                                              fontWeight: FontWeight.bold,
                                              size: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            overland = !overland;
                                          });
                                        },
                                        child: CustomButtonClick(
                                          height: 40.h,
                                          width: 100.w,
                                          decoration: BoxDecoration(
                                            color: overland
                                                ? AppColors.secondaryColor
                                                : Colors.white,
                                            border: Border.all(
                                                color: !overland
                                                    ? Color(0xff707070)
                                                    : AppColors.whitColor),
                                            borderRadius:
                                                BorderRadius.circular(7.sp),
                                          ),
                                          child: Center(
                                            child: CustomText(
                                              text: 'Overland',
                                              color: overland
                                                  ? AppColors.whitColor
                                                  : AppColors.blackColor,
                                              // AppColors.blackColor,
                                              fontWeight: FontWeight.bold,
                                              size: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        border: Border.all(
                                            color: Color(0xff707070))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, bottom: 5.h),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA1A1A1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17.sp),
                                        hintText: 'Select City',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 45.h,
                                        width: 160.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.sp),
                                            border: Border.all(
                                                color: Color(0xff707070))),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 10.w, bottom: 5.h),
                                            hintStyle: TextStyle(
                                                color: Color(0xffA1A1A1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17.sp),
                                            hintText: 'Weight(Kg)',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 45.h,
                                        width: 160.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.sp),
                                            border: Border.all(
                                                color: Color(0xff707070))),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 10.w, bottom: 5.h),
                                            hintStyle: TextStyle(
                                                color: Color(0xffA1A1A1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17.sp),
                                            hintText: 'COD Amount',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  CustomText(
                                    text: "Customer Detail",
                                    size: 16.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        border: Border.all(
                                            color: Color(0xff707070))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, bottom: 5.h),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA1A1A1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17.sp),
                                        hintText: 'Customer Name',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        border: Border.all(
                                            color: Color(0xff707070))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, bottom: 5.h),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA1A1A1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17.sp),
                                        hintText: 'Mobile Number',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        border: Border.all(
                                            color: Color(0xff707070))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, bottom: 5.h),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA1A1A1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17.sp),
                                        hintText: 'Address',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        border: Border.all(
                                            color: Color(0xff707070))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 10.w, bottom: 5.h),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA1A1A1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17.sp),
                                        hintText: 'Ref Number',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: "COD Amount",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      CustomText(
                                        text: "Rs.500",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w600,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: "Delivery Charges",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      CustomText(
                                        text: "Rs.200",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Divider(
                                    thickness: 2.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: "Final Amount",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      CustomText(
                                        text: "Rs.300",
                                        size: 15.sp,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          Navigator.of(context).pop();
                                        },
                                      );

                                      dialogWidget();
                                      // Get.to(() => BookDeliveryScreen());
                                    },
                                    child: CustomButtonClick(
                                      height: 45.h,
                                      width: 250.w,
                                      decoration: BoxDecoration(
                                          color: AppColors.secondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(6.sp)),
                                      child: Center(
                                        child: CustomText(
                                          text: "Book now",
                                          fontWeight: FontWeight.bold,
                                          size: 15.sp,
                                          color: AppColors.whitColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                      SizedBox(
                        height: !bookNow ? 20.h : 0.0,
                      ),

                      !bookNow
                          ? Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    bookNow = true;
                                  });
                                },
                                child: CustomButtonClick(
                                  height: 45.h,
                                  width: 250.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius:
                                          BorderRadius.circular(6.sp)),
                                  child: Center(
                                    child: CustomText(
                                      text: "Next",
                                      fontWeight: FontWeight.bold,
                                      size: 15.sp,
                                      color: AppColors.whitColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),
                      SizedBox(
                        height: 10.h,
                      ),
                      // GestureDetector(
                      //   onTap: !shipServices
                      //       ? () {
                      //           setState(() {
                      //             shipServices = true;
                      //           });
                      //         }
                      //       : () {
                      //           setState(() {
                      //             shipServices = false;
                      //             Navigator.of(context).pop();
                      //           });
                      //           dialogWidget();
                      //         },
                      //   child: Container(
                      //     height: 45.h,
                      //     width: 270.w,
                      //     decoration: BoxDecoration(
                      //         color: AppColors.secondaryColor,
                      //         borderRadius: BorderRadius.circular(17.sp)),
                      //     child: Center(
                      //       child: CustomText(
                      //           text: "Next",
                      //           color: AppColors.whitColor,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              );
            },
          );
        }).then((value) => (value) {
          setState(() {});
        });
  }

  //......................Dialog widget.................................//

  Future dialogWidget() {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.sp)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (mounted) {
                            setState(() {
                              Navigator.of(context).pop();
                            });
                          }
                        },
                        child: Icon(
                          Icons.close,
                          size: 28.sp,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(30.sp)),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        size: 20.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  CustomText(
                    text: 'Order Booked',
                    color: AppColors.blackColor,
                    size: 16.sp,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 150.w,
                    color: Color(0xffF1D838),
                    child: Center(
                      child: Image.asset('assets/images/tcs.png'),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Tracking ID ",
                        size: 14.sp,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomText(
                        text: "- ID1234567",
                        size: 14.sp,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Nov 03,2022",
                        size: 14.sp,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomText(
                        text: " 04:02:12 PM",
                        size: 14.sp,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (mounted) {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                        await Get.to(() => DeliverOrderDetailsScreen());
                      }
                    },
                    child: Container(
                      height: 45.h,
                      width: 280.w,
                      decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(12.sp)),
                      child: Center(
                        child: CustomText(
                          text: "LABEL PRINT",
                          size: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (mounted) {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      }
                    },
                    child: Container(
                      height: 45.h,
                      width: 280.w,
                      decoration: BoxDecoration(
                          color: Color(0xff555555),
                          borderRadius: BorderRadius.circular(12.sp)),
                      child: Center(
                        child: CustomText(
                          text: "LABEL PRINT",
                          size: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }

  //.......................Note Widget.........................................//

  // Widget noteBottomSheetWidget() {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: <Widget>[
  //       SizedBox(
  //         height: 10.h,
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         children: [
  //           GestureDetector(
  //             onTap: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: Icon(
  //               Icons.close,
  //               size: 26.sp,
  //             ),
  //           )
  //         ],
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //               height: 20.h,
  //               width: 20.w,
  //               child: SvgPicture.asset(
  //                 'assets/svg/note.svg',
  //                 fit: BoxFit.cover,
  //               )),
  //           SizedBox(
  //             width: 4.w,
  //           ),
  //           CustomText(
  //             text: "Please note",
  //             size: 16.sp,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ],
  //       ),
  //       SizedBox(
  //         height: 10.h,
  //       ),
  //       Container(
  //         height: 70.h,
  //         width: 320.w,
  //         child: Center(
  //           child: CustomText(
  //             text:
  //                 "This product will also a part of the other coupon(s) Hiding it may deactivate the assocuative coupon(s)",
  //             color: Color(0xffA1A1A1),
  //             size: 14.sp,
  //             fontWeight: FontWeight.w500,
  //           ),
  //         ),
  //       ),
  //       SizedBox(
  //         height: 20.h,
  //       ),
  //       Center(
  //         child: GestureDetector(
  //           onTap: () {
  //             Navigator.of(context).pop();
  //             setState(() {
  //               status = false;
  //               openBottomSheet = false;
  //             });
  //           },
  //           child: CustomButtonClick(
  //             height: 45.h,
  //             width: 200.w,
  //             decoration: BoxDecoration(
  //                 color: AppColors.primaryColor,
  //                 borderRadius: BorderRadius.circular(8.sp)),
  //             child: Center(
  //               child: CustomText(
  //                 text: "Continue",
  //                 size: 16.sp,
  //                 fontWeight: FontWeight.bold,
  //                 color: AppColors.whitColor,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //       SizedBox(
  //         height: 8.h,
  //       )
  //     ],
  //   );
  // }

  // //..............Model Sheet Select type......................//

  // Future showModelBottomSheet() {
  //   return showModalBottomSheet(
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(20.sp),
  //               topRight: Radius.circular(20.sp))),
  //       context: context,
  //       builder: (context) {
  //         return StatefulBuilder(
  //           builder: (context, setState) {
  //             return Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 20.w),
  //                 child: !openBottomSheet
  //                     ? Column(
  //                         mainAxisSize: MainAxisSize.min,
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: <Widget>[
  //                           SizedBox(
  //                             height: 10.h,
  //                           ),
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.end,
  //                             children: [
  //                               GestureDetector(
  //                                 onTap: () {
  //                                   Navigator.of(context).pop();
  //                                 },
  //                                 child: Icon(
  //                                   Icons.close,
  //                                   size: 26.sp,
  //                                 ),
  //                               )
  //                             ],
  //                           ),
  //                           CustomText(
  //                             text: "Please Select Your Type",
  //                             size: 16.sp,
  //                             fontWeight: FontWeight.bold,
  //                           ),
  //                           SizedBox(
  //                             height: 10.h,
  //                           ),
  //                           Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Row(
  //                                 children: [
  //                                   Container(
  //                                       height: 40.h,
  //                                       width: 40.w,
  //                                       child: SvgPicture.asset(
  //                                         'assets/svg/eye_close.svg',
  //                                         fit: BoxFit.cover,
  //                                       )),
  //                                   SizedBox(
  //                                     width: 10.w,
  //                                   ),
  //                                   GestureDetector(
  //                                     onTap: () {
  //                                       setState(() {
  //                                         openBottomSheet = true;
  //                                       });
  //                                     },
  //                                     child: Column(
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment.start,
  //                                       children: [
  //                                         CustomText(
  //                                           text: "Hide",
  //                                           size: 14.sp,
  //                                           color: AppColors.blackColor,
  //                                           fontWeight: FontWeight.w600,
  //                                         ),
  //                                         CustomText(
  //                                           text:
  //                                               "This will Hide the product from store",
  //                                           color: Color(0xffA1A1A1),
  //                                           size: 13.sp,
  //                                           fontWeight: FontWeight.w500,
  //                                         )
  //                                       ],
  //                                     ),
  //                                   )
  //                                 ],
  //                               ),
  //                               SizedBox(
  //                                 height: 10.h,
  //                               ),
  //                               Row(
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   Container(
  //                                       height: 40.h,
  //                                       width: 40.w,
  //                                       child: SvgPicture.asset(
  //                                         'assets/svg/block.svg',
  //                                         fit: BoxFit.cover,
  //                                       )),
  //                                   SizedBox(
  //                                     width: 10.w,
  //                                   ),
  //                                   Column(
  //                                     crossAxisAlignment:
  //                                         CrossAxisAlignment.start,
  //                                     mainAxisAlignment:
  //                                         MainAxisAlignment.start,
  //                                     children: [
  //                                       CustomText(
  //                                         text: "Out of stock",
  //                                         size: 14.sp,
  //                                         color: AppColors.blackColor,
  //                                         fontWeight: FontWeight.w600,
  //                                       ),
  //                                       Container(
  //                                         height: 50.h,
  //                                         width: 270.w,
  //                                         child: CustomText(
  //                                           text:
  //                                               "This product will be shown on the store but out of stock",
  //                                           color: Color(0xffA1A1A1),
  //                                           maxline: 2,
  //                                           size: 13.sp,
  //                                           fontWeight: FontWeight.w500,
  //                                         ),
  //                                       )
  //                                     ],
  //                                   )
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                           SizedBox(
  //                             height: 20.h,
  //                           ),
  //                         ],
  //                       )
  //                     : noteBottomSheetWidget());
  //           },
  //         );
  //       });
  // }

}
