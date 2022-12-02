import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/coupon_code_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class FreeShippingDiscountScreen extends StatefulWidget {
  final int? flateDiscount;
  const FreeShippingDiscountScreen({super.key,  this.flateDiscount});

  @override
  State<FreeShippingDiscountScreen> createState() =>
      _FreeShippingDiscountScreenState();
}

class _FreeShippingDiscountScreenState
    extends State<FreeShippingDiscountScreen> {
  bool customerCoupons = false;
  bool onlinePayments = false;
  String? _selectedLocation;
  bool setDatevalue = false;
  //....Select Customer...............//
  final List<String> _locations = ['Imran', 'Asad', 'Ali', 'Saqib'];
  String? _selectedamount;
  //....Select Customer...............//
  final List<String> _amountlocations = [
    'RS.500',
    'RS.1000',
    'Rs.2000',
    'Rs.3000',
  ];
  bool functionalityOpen = true;
  bool couponvalidity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.black,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderContainer(
              text: "Discount Coupon",
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: widget.flateDiscount == 1
                        ? "Free shipping"
                        : widget.flateDiscount == 2
                            ? "Flat Discount"
                            : "Percentage Discount",
                    size: 14.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 205.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.whitColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.h, left: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Create Coupon",
                                size: 16.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomText(
                            text: "Coupon code*",
                            size: 12.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            height: 35.h,
                            width: 260.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff707070))),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10.w, bottom: 17.h),
                                  hintText: 'Enter coupon code',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Color(0xffA1A1A1),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomText(
                            text: "User per customer*",
                            size: 12.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            height: 35.h,
                            width: 260.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff707070))),
                            child: DropdownButton(
                              hint: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: CustomText(
                                  text: "Select user per customer",
                                  size: 14.sp,
                                  color: Color(0xffA1A1A1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              isExpanded: true,
                              underline: SizedBox(),
                              icon: Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 28.sp, color: Colors.black),
                              value: _selectedLocation,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedLocation = newValue;
                                });
                              },
                              items: _locations.map((location) {
                                return DropdownMenuItem(
                                  value: location,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: CustomText(
                                        text: location,
                                        size: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffA1A1A1)),
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 205.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.whitColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Coupon details",
                            size: 16.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: functionalityOpen
                                        ? widget.flateDiscount == 1
                                            ? "amount*"
                                            : widget.flateDiscount == 2
                                                ? "Discount amount*"
                                                : widget.flateDiscount == 3
                                                    ? "Percent*"
                                                    : ""
                                        : "Percent*",
                                    size: 12.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Container(
                                    height: 35.h,
                                    width: 140.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff707070))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 10.w, bottom: 17.h),
                                          hintText: widget.flateDiscount == 3
                                              ? "%"
                                              : 'Rs.',
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              color: Color(0xffA1A1A1),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                ],
                              ),
                              
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Minimum order value*",
                                    size: 12.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Container(
                                    height: 35.h,
                                    width: 140.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff707070))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 10.w, bottom: 17.h),
                                          hintText: 'Rs.',
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              color: Color(0xffA1A1A1),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                ],
                              ),
                            
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomText(
                            text: "User per customer*",
                            size: 12.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            height: 35.h,
                            width: 260.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff707070))),
                            child: DropdownButton(
                              hint: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: CustomText(
                                  text: "Rs.",
                                  size: 14.sp,
                                  color: Color(0xffA1A1A1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              isExpanded: true,
                              underline: SizedBox(),
                              icon: Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 28.sp, color: Colors.black),
                              value: _selectedamount,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedamount = newValue;
                                });
                              },
                              items: _amountlocations.map((location) {
                                return DropdownMenuItem(
                                  value: location,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: CustomText(
                                        text: location,
                                        size: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffA1A1A1)),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        functionalityOpen = !functionalityOpen;
                      });
                    },
                    child: Container(
                      height: functionalityOpen ? 45.h : 120.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: AppColors.blackColor.withOpacity(0.12))
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 8.h),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Coupon functionality",
                                  size: 16.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                Icon(
                                  functionalityOpen
                                      ? Icons.keyboard_arrow_down_rounded
                                      : Icons.keyboard_arrow_up_outlined,
                                  color: Colors.black,
                                  size: 28.sp,
                                )
                              ],
                            ),
                            !functionalityOpen
                                ? Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            text: "Show coupon to customers?",
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
                                              activeToggleColor:
                                                  AppColors.whitColor,
                                              activeText: '',
                                              activeTextColor: Colors.black54,
                                              inactiveText: '',
                                              value: customerCoupons,
                                              borderRadius: 30.0.sp,
                                              showOnOff: true,
                                              onToggle: (val) {
                                                setState(() {
                                                  customerCoupons = val;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            text:
                                                "Valid only for online payments?",
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
                                              activeToggleColor:
                                                  AppColors.whitColor,
                                              activeText: '',
                                              activeTextColor: Colors.black54,
                                              inactiveText: '',
                                              value: onlinePayments,
                                              borderRadius: 30.0.sp,
                                              showOnOff: true,
                                              onToggle: (val) {
                                                setState(() {
                                                  onlinePayments = val;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        couponvalidity = !couponvalidity;
                        functionalityOpen = true;
                      });
                    },
                    child: Container(
                      height: couponvalidity ? 45.h : 210.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: AppColors.blackColor.withOpacity(0.12))
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 8.h),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Coupon Validity",
                                  size: 16.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                Icon(
                                  couponvalidity
                                      ? Icons.keyboard_arrow_down_rounded
                                      : Icons.keyboard_arrow_up_outlined,
                                  color: Colors.black,
                                  size: 28.sp,
                                )
                              ],
                            ),
                            !couponvalidity
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                text: "From",
                                                size: 12.sp,
                                                color: AppColors.blackColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              Container(
                                                height: 35.h,
                                                width: 140.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff707070))),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 10.w,
                                                              bottom: 17.h),
                                                      hintText: 'Start date',
                                                      suffixIcon: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.w),
                                                        child: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_outlined,
                                                          color: Colors.black,
                                                          size: 26.sp,
                                                        ),
                                                      ),
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Color(0xffA1A1A1),
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                text: "Time",
                                                size: 12.sp,
                                                color: AppColors.blackColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              Container(
                                                height: 35.h,
                                                width: 140.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff707070))),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 10.w,
                                                              bottom: 17.h),
                                                      hintText: 'Start Time',
                                                      suffixIcon: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10.w),
                                                        child: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_outlined,
                                                          color: Colors.black,
                                                          size: 26.sp,
                                                        ),
                                                      ),
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Color(0xffA1A1A1),
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Checkbox(
                                            value: setDatevalue,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                this.setDatevalue = value!;
                                              });
                                            },
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "To",
                                                    size: 12.sp,
                                                    color: AppColors.blackColor,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  Container(
                                                    height: 35.h,
                                                    width: 140.w,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xff707070))),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets.only(
                                                                      left:
                                                                          10.w,
                                                                      bottom:
                                                                          17.h),
                                                              hintText:
                                                                  'Start date',
                                                              suffixIcon:
                                                                  Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 10
                                                                            .w),
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_outlined,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 26.sp,
                                                                ),
                                                              ),
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              hintStyle: TextStyle(
                                                                  color: Color(
                                                                      0xffA1A1A1),
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "Time",
                                                    size: 12.sp,
                                                    color: AppColors.blackColor,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  Container(
                                                    height: 35.h,
                                                    width: 140.w,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xff707070))),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets.only(
                                                                      left:
                                                                          10.w,
                                                                      bottom:
                                                                          17.h),
                                                              hintText:
                                                                  'Start Time',
                                                              suffixIcon:
                                                                  Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 10
                                                                            .w),
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_outlined,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 26.sp,
                                                                ),
                                                              ),
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                              hintStyle: TextStyle(
                                                                  color: Color(
                                                                      0xffA1A1A1),
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => CouponCodeScreen());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomButtonClick(
                  height: 45.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(4.sp)),
                  child: Center(
                    child: CustomText(
                      text: "Create a coupon",
                      size: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whitColor,
                    ),
                  ),
                ),
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

  //.................Shiping Fee Model Bottom Sheet...............................//

  Future showModelBottomSheet() {
    return showModalBottomSheet(
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
                        height: 10.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Image.asset(
                                      'assets/images/free_van.png',
                                      fit: BoxFit.contain)),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Free Shipping",
                                    size: 14.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomText(
                                    text:
                                        "Offer free shipping to your customer",
                                    color: Color(0xffA1A1A1),
                                    size: 13.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Image.asset(
                                    'assets/images/gift.png',
                                    fit: BoxFit.contain,
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "But X get Y Free",
                                    size: 14.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Container(
                                    height: 50.h,
                                    width: 270.w,
                                    child: CustomText(
                                      text:
                                          "Offer Free Products on Purchase of certain number of items",
                                      color: Color(0xffA1A1A1),
                                      maxline: 2,
                                      size: 13.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Image.asset(
                                      'assets/images/discount_voucher.png',
                                      fit: BoxFit.contain)),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Flat Discount",
                                    size: 14.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomText(
                                    text:
                                        "Offer a fixed discount to your customer",
                                    color: Color(0xffA1A1A1),
                                    size: 13.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Image.asset(
                                      'assets/images/discount_flat.png',
                                      fit: BoxFit.contain)),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Percentage Discount",
                                    size: 14.sp,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomText(
                                    text:
                                        "Offer a fixed discount to your customer",
                                    color: Color(0xffA1A1A1),
                                    size: 13.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ));
            },
          );
        });
  }
}
