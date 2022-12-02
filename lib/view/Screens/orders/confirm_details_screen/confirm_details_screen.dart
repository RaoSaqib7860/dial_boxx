import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/orders/order_types_screen/order_type_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConfirmDetailsScreen extends StatefulWidget {
  const ConfirmDetailsScreen({super.key});

  @override
  State<ConfirmDetailsScreen> createState() => _ConfirmDetailsScreenState();
}

class _ConfirmDetailsScreenState extends State<ConfirmDetailsScreen> {
  bool cashDelivery = false;
  bool prepaid = false;
  bool titTok = false;
  bool phone = false;
  bool facebook = false;
  bool whatsapp = false;
  bool instagram = false;
  bool other = false;
  int? existingCoupon = 1;
  bool selectCoupon = false;
  bool customDiscount = false;
  bool flatDiscount = false;

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
              text: "Confirm Detail",
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(5.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: AppColors.blackColor.withOpacity(0.15))
                        ]),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Payment Details",
                                size: 15.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Choose your payment method",
                                color: AppColors.primaryColor,
                                size: 13.sp,
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),

                          // addedListviewBuilder(),

                          Row(
                            children: [
                              Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: cashDelivery,
                                onChanged: (bool? value) {
                                  setState(() {
                                    cashDelivery = value!;
                                  });
                                },
                              ),
                              CustomText(
                                text: "Cash on delivery",
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: prepaid,
                                onChanged: (bool? value) {
                                  setState(() {
                                    prepaid = value!;
                                  });
                                },
                              ),
                              CustomText(
                                text: "prepaid",
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(5.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: AppColors.blackColor.withOpacity(0.15))
                        ]),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Order Source",
                                size: 15.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Select 1 Option",
                                color: AppColors.primaryColor,
                                size: 13.sp,
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: titTok,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        titTok = value!;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Tik Tok",
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 25.w),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      value: phone,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          phone = value!;
                                        });
                                      },
                                    ),
                                    CustomText(
                                      text: "Phone",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: facebook,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        facebook = value!;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Facebook",
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: whatsapp,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        whatsapp = value!;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Whatsapp",
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: instagram,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        instagram = value!;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Instagram",
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 30.w),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      value: other,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          other = value!;
                                        });
                                      },
                                    ),
                                    CustomText(
                                      text: "Other",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModelBottomSheet();
                        },
                        child: Container(
                          height: 30.h,
                          width: 154.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 16.sp,
                                ),
                                CustomText(
                                  text: "Add Discount",
                                  size: 13.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          deliveryModelBottomSheet();
                        },
                        child: Container(
                          height: 30.h,
                          width: 154.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 16.sp,
                                ),
                                CustomText(
                                  text: "Add Delivery fee",
                                  size: 13.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => OrderTypeScreen());
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
            )
          ],
        ),
      ),
    );
  }

  //.............................Model Bottom sheet.......................//

  //............ Add Discount Model bottom Sheet............................//

  Future showModelBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp))),
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.7),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: !selectCoupon
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Icon(
                                      Icons.close,
                                      size: 26.sp,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.w),
                                child: CustomText(
                                  text: "Select discount type",
                                  size: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  Radio(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: 1,
                                    groupValue: existingCoupon,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      setState(() {
                                        existingCoupon = value!.toInt();
                                        selectCoupon = false;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Apply existing coupon",
                                    size: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: 2,
                                    groupValue: existingCoupon,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      setState(() {
                                        existingCoupon = value!.toInt();
                                        customDiscount = true;
                                      });
                                    },
                                  ),
                                  CustomText(
                                    text: "Custom",
                                    size: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectCoupon = true;
                                    });
                                  },
                                  child: CustomButtonClick(
                                    height: 35.h,
                                    width: 190.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(8.sp)),
                                    child: Center(
                                      child: CustomText(
                                        text: "Proceed",
                                        size: 15.sp,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.whitColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              )
                            ],
                          )
                        : !customDiscount
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Icon(
                                          Icons.close,
                                          size: 26.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: CustomText(
                                      text: "Apply coupon",
                                      size: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
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
                                          hintText: 'Enter coupon code',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(
                                              left: 10.w, top: 4.h),
                                          suffixIcon: Padding(
                                            padding: EdgeInsets.only(top: 10.h),
                                            child: CustomText(
                                              text: "Apply",
                                              color: AppColors.secondaryColor,
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CustomText(
                                    text: 'Available coupons',
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    height: 40.h,
                                    width: 95.w,
                                    color: Color(0xffA1A1A1),
                                    child: Center(
                                      child: CustomText(
                                        text: "123456",
                                        size: 13.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CustomText(
                                    text: "15% off on items",
                                    color: Color(0xff4C4C4C),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectCoupon = false;
                                          //customDiscount = true;
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      child: CustomButtonClick(
                                        height: 35.h,
                                        width: 140.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8.sp)),
                                        child: Center(
                                          child: CustomText(
                                            text: "Apply",
                                            size: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.whitColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  )
                                ],
                              )
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Icon(
                                          Icons.close,
                                          size: 26.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: CustomText(
                                      text: "Custom discount",
                                      size: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Radio(
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            value: 1,
                                            groupValue: existingCoupon,
                                            activeColor: Colors.blue,
                                            onChanged: (value) {
                                              setState(() {
                                                existingCoupon = value!.toInt();
                                                flatDiscount = true;
                                                // selectCoupon = false;
                                              });
                                            },
                                          ),
                                          CustomText(
                                            text: "Percent",
                                            size: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            value: 2,
                                            groupValue: existingCoupon,
                                            activeColor: Colors.blue,
                                            onChanged: (value) {
                                              setState(() {
                                                existingCoupon = value!.toInt();
                                                //customDiscount = true;
                                                flatDiscount = false;
                                              });
                                            },
                                          ),
                                          CustomText(
                                            text: "Flat amount",
                                            size: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CustomText(
                                    text: flatDiscount
                                        ? "Discount in percent"
                                        : "Discount in amount",
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
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
                                            BorderRadius.circular(2.sp)),
                                    child: flatDiscount
                                        ? TextFormField(
                                            decoration: InputDecoration(
                                                hintText: 'Enter Percentage',
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.only(
                                                    left: 14.w, top: 4.h),
                                                suffixIcon: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 0.h),
                                                    child: Icon(
                                                      Icons.percent,
                                                      color:
                                                          AppColors.blackColor,
                                                      size: 16.sp,
                                                    ))),
                                          )
                                        : TextFormField(
                                            decoration: InputDecoration(
                                                hintText: 'Amount',
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.only(
                                                    left: 14.w, top: 4.h),
                                                suffixIcon: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10.h, left: 12.w),
                                                  child: CustomText(
                                                    text: "Rs.",
                                                  ),
                                                )),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectCoupon = false;
                                          //customDiscount = true;
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      child: CustomButtonClick(
                                        height: 35.h,
                                        width: 140.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8.sp)),
                                        child: Center(
                                          child: CustomText(
                                            text: "Save",
                                            size: 15.sp,
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
                              )),
              );
            },
          );
        });
  }

//....................... Add Delivery Fee Model bottom sheet..................//

  Future deliveryModelBottomSheet() {
    return showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: true,
        isDismissible: true,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.close,
                              size: 26.sp,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: CustomText(
                          text: "Enter Delivery fee",
                          size: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
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
                              hintText: 'Amount',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 10.w, top: 4.h),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: CustomText(
                                  text: "Rs.",
                                  color: AppColors.blackColor,
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pop();
                              //customDiscount = true;
                            });
                            Navigator.of(context).pop();
                          },
                          child: CustomButtonClick(
                            height: 35.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Center(
                              child: CustomText(
                                text: "Save",
                                size: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.whitColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ));
            },
          );
        });
  }
}
