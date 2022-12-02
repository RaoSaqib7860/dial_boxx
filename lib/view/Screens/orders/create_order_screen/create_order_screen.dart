import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/orders/confirm_details_screen/confirm_details_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({super.key});

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  // bool value = false;
  List<bool> selectedBool = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  //.........Add product.................//
  bool addProduct = false;
  bool addCustomer = false;

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
              text: "Create Order",
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
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      child: !addProduct
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    CustomText(
                                      text: "Products",
                                      size: 15.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 1.5,
                                ),

                                // addedListviewBuilder(),

                                SizedBox(
                                  height: 20.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    productModelBottomSheet(() {
                                      setState(() {});
                                    }).then((value) => (value) {
                                          setState(() {});
                                        });
                                  },
                                  child: CustomButtonClick(
                                    height: 30.h,
                                    width: 140.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor),
                                    child: Center(
                                      child: CustomText(
                                        text: "Add Product",
                                        color: AppColors.whitColor,
                                        fontWeight: FontWeight.w600,
                                        size: 13.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                )
                              ],
                            )
                          : addedProductListviewBuilder(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    // height: 130.h,
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
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      child: !addCustomer
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    CustomText(
                                      text: "Customer Details",
                                      size: 15.sp,
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 1.5,
                                ),
                                SizedBox(
                                  height: !addCustomer ? 30.h : 0.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    customerModelBottomSheet(callBack: () {
                                      print('object');
                                      setState(() {});
                                    });
                                  },
                                  child: CustomButtonClick(
                                    height: 30.h,
                                    width: 200.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor),
                                    child: Center(
                                      child: CustomText(
                                        text: "Add Customer Details",
                                        color: AppColors.whitColor,
                                        fontWeight: FontWeight.w600,
                                        size: 13.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: !addCustomer ? 20.h : 0.0,
                                )
                              ],
                            )
                          : addCustomerData(),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ConfirmDetailsScreen());
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

  //.............................Add Product Model Bottom sheet.......................//

  Future productModelBottomSheet(Function() callback) async {
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
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Select Products",
                          size: 16.sp,
                          color: Color(0xff4C4C4C),
                          fontWeight: FontWeight.w600,
                        ),
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
                            hintText: 'Search Products',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(top: 5.h, bottom: 12.h),
                            prefixIcon:
                                Icon(Icons.search, color: Color(0xff6D6D6D))),
                      ),
                    ),
                    Container(
                      height: 270.h,
                      child: ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Column(
                              children: [
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
                                              CustomText(
                                                text: "Dall Food",
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
                                    Checkbox(
                                      value: selectedBool[index],
                                      onChanged: (bool? value) {
                                        setState(() {
                                          selectedBool[index] = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      thickness: 2.0,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          addProduct = true;
                          callback.call();
                          setState(
                            () {
                              Navigator.of(context).pop();
                            },
                          );
                        },
                        child: CustomButtonClick(
                          height: 35.h,
                          width: 190.w,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Center(
                            child: CustomText(
                              text: "Add Product",
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
                ),
              );
            },
          );
        }).then((value) => (value) {
          setState(() {});
        });
  }

//..................Add Customer Model Bottom sheet.....................//

  Future customerModelBottomSheet({Function()? callBack}) {
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp))),
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (
              context,
              setState,
            ) {
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
                        CustomText(
                          text: "Select Customer",
                          size: 16.sp,
                          color: Color(0xff4C4C4C),
                          fontWeight: FontWeight.w600,
                        ),
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
                            hintText: 'Search Customer',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(top: 5.h, bottom: 12.h),
                            prefixIcon:
                                Icon(Icons.search, color: Color(0xff6D6D6D))),
                      ),
                    ),
                    Container(
                      height: 270.h,
                      child: ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Column(
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
                                          text: "Ahmad",
                                          color: Color(0xff4C4C4C),
                                          size: 15.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        CustomText(
                                          text: "+923234567840",
                                          color: Color(0xff4C4C4C),
                                          size: 15.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        CustomText(
                                          text: "xyz@gmail.com",
                                          color: Color(0xff4C4C4C),
                                          size: 15.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                    Checkbox(
                                      value: selectedBool[index],
                                      onChanged: (bool? value) {
                                        setState(() {
                                          selectedBool[index] = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      thickness: 2.0,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          callBack!.call();
                          setState(
                            () {
                              Navigator.of(context).pop();
                              addCustomer = true;
                            },
                          );
                          callBack.call();
                        },
                        child: CustomButtonClick(
                          height: 35.h,
                          width: 190.w,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Center(
                            child: CustomText(
                              text: "Add Cusomer",
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
                ),
              );
            },
          );
        }).then((value) => (value) {});
  }

//.....................Added the product Listview.builder is getting........//
  Widget addedProductListviewBuilder() {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              text: "Products",
              size: 15.sp,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
        Divider(
          thickness: 1.5,
        ),
        Container(
          // height: 50,
          child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 80.h,
                        width: 200.w,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 48.h,
                                  width: 48.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.sp),
                                      border:
                                          Border.all(color: Color(0xff707070))),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 25.h,
                                          width: 200.w,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.h,
                                                width: 70.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: AppColors
                                                            .primaryColor)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Icon(
                                                      Icons.remove,
                                                      size: 18.sp,
                                                    ),
                                                    CustomText(
                                                      text: "1",
                                                    ),
                                                    Icon(
                                                      Icons.add,
                                                      size: 18.sp,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CustomText(
                                                text: " X",
                                              ),
                                              CustomText(
                                                text: " RS.200",
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                size: 15.sp,
                                              )
                                            ],
                                          ),
                                        ),
                                        CustomText(
                                          text: "RS.200",
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.w600,
                                          size: 15.sp,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
          onTap: () {
            productModelBottomSheet(
              () {
                setState(() {});
              },
            );
          },
          child: CustomButtonClick(
            height: 35.h,
            width: 180.w,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(2.sp)),
            child: Center(
              child: CustomText(
                text: "Add New Products",
                size: 15.sp,
                color: AppColors.whitColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        )
      ],
    );
  }
//.............Add Customer Product Listview.builder..................//

  Widget addCustomerData() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: "Customer Detail",
                size: 15.sp,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          Divider(
            thickness: 1.5,
          ),
          CustomText(
            text: "Ahmad",
            color: Color(0xff4C4C4C),
            size: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          CustomText(
            text: "+923234567840",
            color: Color(0xff4C4C4C),
            size: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          CustomText(
            text: "xyz@gmail.com",
            color: Color(0xff4C4C4C),
            size: 15.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                customerModelBottomSheet(callBack: () {
                  print('object');
                  setState(() {});
                });
              },
              child: CustomButtonClick(
                height: 35.h,
                width: 190.w,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(2.sp)),
                child: Center(
                  child: CustomText(
                    text: "Add Customer Detail",
                    size: 15.sp,
                    color: AppColors.whitColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
