import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/delivery/book_delivery_screen/book_delivery_screen.dart';
import 'package:dialbox_seller/view/Screens/delivery_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SetUpDialBoxDeliveryScreen extends StatefulWidget {
  const SetUpDialBoxDeliveryScreen({super.key});

  @override
  State<SetUpDialBoxDeliveryScreen> createState() =>
      _SetUpDialBoxDeliveryScreenState();
}

class _SetUpDialBoxDeliveryScreenState
    extends State<SetUpDialBoxDeliveryScreen> {
  bool value = false;
  String dropdownvalue = 'Enter Province';

  // List of items in our dropdown menu
  var items = [
    'Enter Province',
    'Punjab',
    'Sindh',
    'Balochistan',
    'KPK',
  ];
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderContainer(
              text: "Set up Dialboxx Delivery",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 130.h,
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(3.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          blurRadius: 2,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomText(
                          text:
                              "Get your Order delivered with Dialboxx Delivery.",
                          color: Color(0xff3D3D3D),
                          size: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.w, right: 10.w, top: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/shiping.svg',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "pickup",
                                        size: 12.sp,
                                        color: AppColors.blackColor,
                                      ),
                                      CustomText(
                                        text: "and Delivery",
                                        size: 12.sp,
                                        color: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/post_box.svg',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "1000+",
                                        size: 12.sp,
                                        color: AppColors.blackColor,
                                      ),
                                      CustomText(
                                        text: "Zip Codes",
                                        size: 12.sp,
                                        color: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/pickup_svg.svg',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "COD",
                                        size: 12.sp,
                                        color: AppColors.blackColor,
                                      ),
                                      CustomText(
                                        text: "aAvailable",
                                        size: 12.sp,
                                        color: AppColors.blackColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        CustomButtonClick(
                          height: 30.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.sp),
                              color: AppColors.primaryColor),
                          child: Center(
                            child: CustomText(
                              text: "HOW IT WORKS",
                              color: AppColors.whitColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                    text: "Pick up Location Details(warehouse)",
                    size: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                      text: "Pick up Location name*",
                      size: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff535353)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 30.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Location/Wearhuse name',
                        hintStyle: TextStyle(fontSize: 14.sp),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 170.w,
                        child: CustomText(
                            text: "Contact Person*",
                            size: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4C4C4C)),
                      ),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          child: CustomText(
                              text: "Mobile Number*",
                              size: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff4C4C4C)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30.h,
                        width: 140.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Enter full name',
                            hintStyle: TextStyle(fontSize: 14.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 30.h,
                          width: 140.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Enter Mobile number',
                              hintStyle: TextStyle(fontSize: 14.sp),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 170.w,
                        child: CustomText(
                            text: "Plot/house/flat no*",
                            size: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4C4C4C)),
                      ),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          child: CustomText(
                              text: "Sector/Area/Street*",
                              size: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff4C4C4C)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30.h,
                        width: 140.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Enter House No',
                            hintStyle: TextStyle(fontSize: 14.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 30.h,
                          width: 140.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Street',
                              hintStyle: TextStyle(fontSize: 14.sp),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 170.w,
                        child: CustomText(
                            text: "City*",
                            size: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4C4C4C)),
                      ),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          child: CustomText(
                              text: "Postal Code*",
                              size: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff4C4C4C)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30.h,
                        width: 140.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Enter City',
                            hintStyle: TextStyle(fontSize: 14.sp),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 30.h,
                          width: 140.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Enter Postal Code',
                              hintStyle: TextStyle(fontSize: 14.sp),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 170.w,
                        child: CustomText(
                          text: "Province*",
                          size: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          child: CustomText(
                            text: "GST Number*",
                            size: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30.h,
                        width: 140.w,
                        child: DropdownButton(
                          // Initial Value
                          value: dropdownvalue,
                          isDense: true,
                          isExpanded: true,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: CustomText(
                                  text: items,
                                  size: 14.sp,
                                  color: AppColors.blackColor,
                                ));
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 30.h,
                          width: 140.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Enter GST number',
                              hintStyle: TextStyle(fontSize: 14.sp),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: "I accept all",
                            size: 12.sp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "  terms & conditions",
                            size: 12.sp,
                            color: AppColors.primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => BookDeliveryScreen());
                },
                child: CustomButtonClick(
                  height: 45.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.sp),
                      color: AppColors.primaryColor),
                  child: Center(
                    child: CustomText(
                      text: "Finish Set Up",
                      fontWeight: FontWeight.bold,
                      color: AppColors.whitColor,
                      size: 15.sp,
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
}
