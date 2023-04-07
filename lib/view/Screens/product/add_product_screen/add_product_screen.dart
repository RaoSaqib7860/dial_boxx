import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/product/add_product_screen/catalogue_screen/catalogue_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../all_coupons_screen/discount_coupon_screen.dart';
import '../manage website/offer_and_ads_screen.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  bool addProduct = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(OfferAddScreen());
      }),
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
              text: "Add Products",
            ),
            !addProduct
                ? addProductItem()
                : Padding(
                    padding:
                        EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.sp),
                                  color: Color(0xffE6E6E6),
                                  border: Border.all(color: Color(0xff707070))),
                              child: Center(
                                child: SvgPicture.asset(
                                    'assets/svg/product_imag.svg'),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomText(
                          text: "Add Product Image(upto 7)",
                          color: Color(0xff797979),
                          size: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomText(
                          text: "Product Name*",
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 30.h,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Lamp',
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
                        CustomText(
                          text: "Product Category*",
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 30.h,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Home',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30.h,
                              width: 140.w,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: CustomText(
                                    text: "Rs.",
                                    size: 16.sp,
                                  ),
                                  isDense: true,
                                  hintText: 'Price*',
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
                                    prefixIcon: CustomText(
                                      text: "Rs.",
                                      size: 16.sp,
                                    ),
                                    isDense: true,
                                    hintText: 'Discounted Price',
                                    hintStyle: TextStyle(fontSize: 14.sp),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
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
                        CustomText(
                          text: "Product Unit*",
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 15.h,
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
                                  hintText: '1',
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
                                    hintText: 'Piece',
                                    suffixIcon: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                    hintStyle: TextStyle(fontSize: 14.sp),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
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
                        CustomText(
                          text: "Product Description",
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 30.h,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Product Description*',
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
                        CustomText(
                          text: "Total Available Items",
                          size: 12.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 30.h,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Quantity',
                              hintStyle: TextStyle(fontSize: 14.sp),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: AppColors.primaryColor,
                            ),
                            CustomText(
                              text: "ADD VARIANTS",
                              size: 14.sp,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => CatalogueScreen());
                          },
                          child: CustomButtonClick(
                            height: 45.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(6.sp)),
                            child: Center(
                              child: CustomText(
                                text: "Add product",
                                size: 14.sp,
                                color: AppColors.whitColor,
                                fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }

  //.............Add product item...............//
  Widget addProductItem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          Container(
            height: 30.h,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Quantity',
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
          GestureDetector(
            onTap: () {
              setState(() {
                addProduct = true;
              });
            },
            child: CustomButtonClick(
              height: 45.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(6.sp)),
              child: Center(
                child: CustomText(
                  text: "Continue",
                  size: 14.sp,
                  color: AppColors.whitColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
