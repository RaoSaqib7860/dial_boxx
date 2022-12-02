import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/orders/tracking_order_screen/tracking_order_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OrderNumberDetailsScreen extends StatefulWidget {
  const OrderNumberDetailsScreen({super.key});

  @override
  State<OrderNumberDetailsScreen> createState() =>
      _OrderNumberDetailsScreenState();
}

class _OrderNumberDetailsScreenState extends State<OrderNumberDetailsScreen> {
  bool acceptOrder = false;
  bool shipServices = false;
  bool selectOverNight = false;
  bool detain = false;
  bool overland = false;
  bool deliveryInfo = false;
  @override
  void initState() {
    // print('object');
    super.initState();
  }

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
            children: [
              HeaderContainer(
                text: "Order #31245",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 37.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.whitColor,
                          borderRadius: BorderRadius.circular(6.sp),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.15))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Nov, 04:35 PM",
                              size: 14.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w300,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5.sp,
                                ),
                                CustomText(
                                  text: " Delivered",
                                  fontWeight: FontWeight.w300,
                                  size: 14.sp,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    deliveryInfo
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomText(
                                text: "Delivery Information",
                                fontWeight: FontWeight.w500,
                                size: 15.sp,
                                color: AppColors.blackColor,
                              ),
                              Container(
                                //height: 201.h,
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
                                      left: 10.w, top: 8.h, right: 10.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 140.w,
                                            child: CustomText(
                                              text: "Delivery Company",
                                              size: 13.sp,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Container(
                                            height: 30.h,
                                            width: 60.w,
                                            child: Image.asset(
                                              'assets/images/tcs.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 140.w,
                                            child: CustomText(
                                              text: "Request Date",
                                              size: 13.sp,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Container(
                                            width: 190.w,
                                            height: 20.h,
                                            child: CustomText(
                                              text: "Nov 03,2022 04:02:12PM",
                                              size: 13.sp,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 140.w,
                                            child: CustomText(
                                              text: "Delivery Charges",
                                              size: 13.sp,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          CustomText(
                                            text: "Rs.200",
                                            size: 13.sp,
                                            fontWeight: FontWeight.w300,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 20.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Get.to(() =>
                                                    TrackingOrderScreen());
                                              },
                                              child: Container(
                                                height: 35.h,
                                                width: 130.w,
                                                decoration: BoxDecoration(
                                                    color:
                                                        AppColors.primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.sp)),
                                                child: Center(
                                                  child: CustomText(
                                                    text: "Track Order",
                                                    color: AppColors.whitColor,
                                                    size: 13.sp,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 35.h,
                                              width: 140.w,
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.secondaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.sp)),
                                              child: Center(
                                                child: CustomText(
                                                  text: "Print Label",
                                                  color: AppColors.whitColor,
                                                  size: 13.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : SizedBox(),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "ITEMS",
                      fontWeight: FontWeight.w500,
                      size: 15.sp,
                      color: AppColors.blackColor,
                    ),
                    Container(
                      // height: 70.h,
                      decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(6.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: AppColors.blackColor.withOpacity(0.15))
                        ],
                      ),
                      child: Column(
                        children: [
                          ListView.builder(
                            itemCount: 2,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: 8.w, right: 8.w, top: 8.h),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 65.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.sp),
                                              border: Border.all(
                                                  color: Color(0xff707070))),
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomText(
                                                  text: "Daal Food",
                                                  size: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.blackColor,
                                                ),
                                              ],
                                            ),
                                            CustomText(
                                              text: "1 unit",
                                              size: 14.sp,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.blackColor,
                                            ),
                                            Container(
                                              width: 265.w,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomText(
                                                    text: "x 2",
                                                    size: 14.sp,
                                                    fontWeight: FontWeight.w300,
                                                    color: AppColors.blackColor,
                                                  ),
                                                  CustomText(
                                                    text: "Rs.200",
                                                    size: 14.sp,
                                                    fontWeight: FontWeight.w300,
                                                    color: AppColors.blackColor,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Customer Invoice",
                      fontWeight: FontWeight.w300,
                      size: 15.sp,
                      color: AppColors.blackColor,
                    ),
                    Container(
                      //height: 201.h,
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Total",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "Rs.400",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Delivery Fee",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "Rs.400",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Grand total",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "Rs.400",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Customer Details",
                      fontWeight: FontWeight.w300,
                      size: 15.sp,
                      color: AppColors.blackColor,
                    ),
                    Container(
                      //height: 201.h,
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
                        padding:
                            EdgeInsets.only(left: 10.w, top: 8.h, right: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 140.w,
                                  child: CustomText(
                                    text: "Name",
                                    size: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                CustomText(
                                  text: "Usman",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 140.w,
                                  child: CustomText(
                                    text: "Mobile No",
                                    size: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                CustomText(
                                  text: "+923123015089",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CircleAvatar(
                                  radius: 15.sp,
                                  backgroundColor: Colors.black,
                                  child: Center(
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CircleAvatar(
                                  radius: 15.sp,
                                  backgroundColor: Colors.green,
                                  child: Center(
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 140.w,
                                  child: CustomText(
                                    text: "Address",
                                    size: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Container(
                                  width: 190.w,
                                  height: 45.h,
                                  child: CustomText(
                                    text: "house no 123 bahria town,rawalpindi",
                                    size: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 140.w,
                                  child: CustomText(
                                    text: "Postal code",
                                    size: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                CustomText(
                                  text: "1234",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 140.w,
                                  child: CustomText(
                                    text: "City",
                                    size: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                CustomText(
                                  text: "Rawalpindi",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 140.w,
                                  child: CustomText(
                                    text: "Payment",
                                    size: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                CustomText(
                                  text: "COD",
                                  size: 13.sp,
                                  fontWeight: FontWeight.w300,
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
                    SizedBox(
                      height: 10.h,
                    ),
                    acceptOrder
                        ? Visibility(
                            visible: !deliveryInfo,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.insert_emoticon_rounded,
                                  color: AppColors.darkgreenColor,
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                CustomText(
                                  text: "Order Accepted",
                                  size: 13.sp,
                                  color: AppColors.blackColor,
                                )
                              ],
                            ),
                          )
                        : SizedBox()
                  ],
                ),
              ),
              Visibility(
                visible: !deliveryInfo,
                child: SizedBox(
                  height: 80.h,
                ),
              )
            ],
          ),
        ),
        bottomSheet: !deliveryInfo
            ? Container(
                height: 60.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(6.sp)),
                        child: Center(
                          child: CustomText(
                            text: "Reject Order",
                            color: AppColors.whitColor,
                            size: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      !acceptOrder
                          ? GestureDetector(
                              onTap: () {
                                showModelBottomSheet(callBack: () {
                                  setState(() {});
                                });
                              },
                              child: Container(
                                height: 35.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(6.sp)),
                                child: Center(
                                  child: CustomText(
                                    text: "Accept Order",
                                    color: AppColors.whitColor,
                                    size: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                delivershowModelBottomSheet(
                                  callBack: () {
                                    setState(() {});
                                  },
                                );
                              },
                              child: Container(
                                height: 35.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(6.sp)),
                                child: Center(
                                  child: CustomText(
                                    text: "Deliver Order",
                                    color: AppColors.whitColor,
                                    size: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              )
            : SizedBox());
  }

  Future showModelBottomSheet({Function? callBack}) {
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
                  children: <Widget>[
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      text: "Accept Order",
                      size: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      text: "Do you want to  Accept Order",
                      size: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          callBack!.call();
                          acceptOrder = true;
                          setState(() {
                            Navigator.of(context).pop();
                          });
                        },
                        child: CustomButtonClick(
                          height: 40.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              color: AppColors.darkgreenColor,
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Center(
                            child: CustomText(
                              text: "Yes,Accept Order",
                              size: 14.sp,
                              fontWeight: FontWeight.w500,
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
              );
            },
          );
        }).then((value) => (value) {
          setState(() {});
        });
  }
  //.....................Delivered Model Dialog..........................//

  Future delivershowModelBottomSheet({Function()? callBack}) {
    return showModalBottomSheet(
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
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pop();
                          shipServices = false;
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp))),
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Column(
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
                    height: 30.h,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  !shipServices
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CustomText(
                                    text: "COD",
                                    fontWeight: FontWeight.w600,
                                    size: 15.sp,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                      text: "Rs.200/kg",
                                      fontWeight: FontWeight.w600,
                                      size: 15.sp,
                                      color: AppColors.secondaryColor),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Column(
                          children: [
                            CustomText(
                              text: "Available Service Types",
                              size: 12.sp,
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      border:
                                          Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(7.sp),
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
                                      border:
                                          Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(7.sp),
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
                                          color: overland
                                              ? AppColors.whitColor
                                              : Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(7.sp),
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
                            )
                          ],
                        ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: !shipServices
                        ? () {
                            setState(() {
                              shipServices = true;
                            });
                          }
                        : () {
                            setState(() {
                              shipServices = false;
                              Navigator.of(context).pop();
                            });
                            dialogWidget();
                          },
                    child: Container(
                      height: 45.h,
                      width: 270.w,
                      decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(17.sp)),
                      child: Center(
                        child: CustomText(
                            text: "Next",
                            color: AppColors.whitColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
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
                          Navigator.of(context).pop();
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
                    onTap: () {
                      setState(() {
                        deliveryInfo = true;
                      });
                      Navigator.of(context).pop();
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
                      Navigator.of(context).pop();
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
}
