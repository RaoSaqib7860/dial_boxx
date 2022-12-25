import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/orders/tracking_order_screen/tracking_order_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DeliverOrderDetailsScreen extends StatefulWidget {
  const DeliverOrderDetailsScreen({super.key});

  @override
  State<DeliverOrderDetailsScreen> createState() => _DeliverOrderDetailsScreenState();
}

class _DeliverOrderDetailsScreenState extends State<DeliverOrderDetailsScreen> {
  bool acceptOrder = false;
  bool shipServices = false;
  bool selectOverNight = false;
  bool detain = false;
  bool overland = false;
  bool deliveryInfo = false;

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderContainer(
                text: "Order Details",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                              text: "Order ID# 731234",
                              size: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 4.sp,
                                  backgroundColor: Colors.black,
                                ),
                                CustomText(
                                  text: "  Ready to ship",
                                  size: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor,
                                ),
                              ],
                            )
                          ],
                        ),
                        CustomText(
                          text: "Today 13:30 PM",
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => TrackingOrderScreen(),
                                //     ));
                              },
                              child: CustomButtonClick(
                                height: 30.h,
                                width: 110.w,
                                decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(5.sp)),
                                child: Center(
                                  child: CustomText(
                                    text: "Track Order",
                                    color: AppColors.whitColor,
                                    size: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            CustomButtonClick(
                              height: 30.h,
                              width: 110.w,
                              decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(5.sp)),
                              child: Center(
                                child: CustomText(
                                  text: "RECEIPT",
                                  color: AppColors.whitColor,
                                  size: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomText(
                          text: "ITEMS",
                          fontWeight: FontWeight.w500,
                          size: 15.sp,
                          color: AppColors.blackColor,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ListView.builder(
                                itemCount: 2,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 80.h,
                                              width: 75.w,
                                              decoration: BoxDecoration(
                                                  color: AppColors.whitColor,
                                                  borderRadius: BorderRadius.circular(4.sp),
                                                  boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 1, color: AppColors.blackColor.withOpacity(0.10))],
                                                  border: Border.all(color: Colors.black26)),
                                              child: SvgPicture.asset(
                                                'assets/svg/product_imag.svg',
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: "Daal Food",
                                                    size: 14.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: AppColors.blackColor,
                                                  ),
                                                  CustomText(
                                                    text: "36",
                                                    size: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.blackColor,
                                                  ),
                                                  CustomText(
                                                    text: "Black",
                                                    size: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.blackColor,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                          CustomText(
                                                            text: "30*400Rs",
                                                            size: 12.sp,
                                                            fontWeight: FontWeight.w400,
                                                            color: AppColors.blackColor,
                                                          ),
                                                      CustomText(
                                                        text: "600Rs",
                                                        size: 12.sp,
                                                        fontWeight: FontWeight.w600,
                                                        color: AppColors.blackColor,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                  );

                                },
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: Divider(
                                  thickness: 2.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Item Total",
                                  size: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                CustomText(
                                  text: "Rs.1400Rs",
                                  size: 12.sp,
                                  fontWeight: FontWeight.w400,
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
                                  text: "Coupon Discount(AH0168B)",
                                  size: 12.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "-1200Rs",
                                  size: 12.sp,
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
                                  text: "Delivery Charges",
                                  size: 12.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                                CustomText(
                                  text: "100Rs",
                                  size: 12.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Grand Total",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  text: "100Rs",
                                  size: 14.sp,
                                  fontWeight: FontWeight.w300,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                          ],
                        ),
                        CustomText(
                          text: "Customer Details",
                          fontWeight: FontWeight.w600,
                          size: 14.sp,
                          color: AppColors.blackColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Name",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                                CustomText(
                                  text: "Ali khan",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Contact No.",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                                CustomText(
                                  text: "03008337080",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Address",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                                Container(
                                  //height: 40.h,
                                  width: 170.w,
                                  child: CustomText(
                                    text: "house 31 rafi block bahria town phase 8 rawalpindi",
                                    fontWeight: FontWeight.w400,
                                    size: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "City",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                                CustomText(
                                  text: "Rawalpindi",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Postal Code",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                                CustomText(
                                  text: "44000",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Payment",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                                CustomText(
                                  text: "Cash on Delivery",
                                  fontWeight: FontWeight.w400,
                                  size: 12.sp,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/deliver.svg'),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    CustomText(
                                      text: "Pick up by",
                                      size: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                CustomText(
                                  text: "Tuesday,29 March 2022",
                                  size: 12.sp,
                                  color: Color(0xff545454),
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/svg/deliver.svg'),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        CustomText(
                                          text: "Delivered by",
                                          size: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    CustomText(
                                      text: "Tuesday,29 March 2022",
                                      size: 12.sp,
                                      color: Color(0xff545454),
                                      fontWeight: FontWeight.w400,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        CustomText(
                          text: "Additional Information",
                          color: AppColors.blackColor,
                          size: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        CustomText(
                          text: "Additional Instruction",
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        CustomText(
                          text: "Nill",
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        CustomText(
                          text: "Email Address",
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        CustomText(
                          text: "Nill",
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        CustomText(
                          text: "Special Request",
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        CustomText(
                          text: "--------------------------",
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/tcs.png',
                              height: 24.h,
                              width: 53.w,
                            ),
                            CustomButtonClick(
                              height: 23.h,
                              width: 115.w,
                              decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(6.sp)),
                              child: Center(
                                child: CustomText(
                                  text: "Cancel Delivery",
                                  fontWeight: FontWeight.w600,
                                  size: 12.sp,
                                  color: AppColors.whitColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }

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
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   CustomText(
//                     text: "Accept Order",
//                     size: 15.sp,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w400,
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   CustomText(
//                     text: "Do you want to  Accept Order",
//                     size: 13.sp,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w300,
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Center(
//                     child: InkWell(
//                       onTap: () {
//                         setState(() {
//                           Navigator.of(context).pop();
//                           acceptOrder = true;
//                         });
//                       },
//                       child: CustomButtonClick(
//                         height: 40.h,
//                         width: 200.w,
//                         decoration: BoxDecoration(
//                             color: AppColors.darkgreenColor,
//                             borderRadius: BorderRadius.circular(8.sp)),
//                         child: Center(
//                           child: CustomText(
//                             text: "Yes,Accept Order",
//                             size: 14.sp,
//                             fontWeight: FontWeight.w500,
//                             color: AppColors.whitColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   )
//                 ],
//               ),
//             );
//           },
//         );
//       }).then((value) => (value) {
//         setState(() {});
//       });
// }
// //.....................Delivered Model Dialog..........................//

// Future delivershowModelBottomSheet() {
//   return showModalBottomSheet(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20.sp),
//           topRight: Radius.circular(20.sp),
//         ),
//       ),
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   CustomText(
//                     text: "Select Delivery Service",
//                     size: 15.sp,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w400,
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         Navigator.of(context).pop();
//                         shipServices = false;
//                       });
//                       shipWithshowModelBottomSheet();
//                     },
//                     child: Container(
//                       height: 50.h,
//                       width: MediaQuery.of(context).size.width,
//                       color: Color(0xffF1D838),
//                       child: Center(
//                         child: Container(
//                           height: 50.h,
//                           width: 70.w,
//                           child: Image.asset(
//                             'assets/images/tcs.png',
//                             fit: BoxFit.none,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Container(
//                     height: 50.h,
//                     width: MediaQuery.of(context).size.width,
//                     color: AppColors.secondaryColor,
//                     child: Container(
//                       height: 50.h,
//                       width: 70.w,
//                       child: Image.asset(
//                         'assets/images/insta.png',
//                         fit: BoxFit.none,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Container(
//                     height: 50.h,
//                     width: MediaQuery.of(context).size.width,
//                     color: AppColors.primaryColor,
//                     child: Container(
//                       height: 50.h,
//                       width: 70.w,
//                       child: Image.asset(
//                         'assets/images/post.png',
//                         fit: BoxFit.none,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Container(
//                     height: 50.h,
//                     width: MediaQuery.of(context).size.width,
//                     color: AppColors.whitColor,
//                     child: Center(
//                       child: CustomText(
//                         text: 'OR',
//                         size: 22.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Container(
//                       height: 50.h,
//                       width: MediaQuery.of(context).size.width,
//                       color: AppColors.primaryColor,
//                       child: Center(
//                         child: CustomText(
//                           text: 'SELF',
//                           size: 22.sp,
//                           color: AppColors.whitColor,
//                         ),
//                       )),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       }).then((value) => (value) {
//         setState(() {});
//       });
// }

// //...............ship with Model sheet dialog........................//

// Future shipWithshowModelBottomSheet() {
//   return showModalBottomSheet(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20.sp),
//               topRight: Radius.circular(20.sp))),
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Container(
//                   height: 60.h,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       color: Color(0xffF1D838),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20.sp),
//                           topRight: Radius.circular(20.sp))),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomText(
//                         text: "Ship with",
//                         size: 15.sp,
//                         color: AppColors.blackColor,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Container(
//                         height: 30.h,
//                         width: 70.w,
//                         child: Image.asset(
//                           'assets/images/tcs.png',
//                           fit: BoxFit.none,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20.w),
//                   child: Container(
//                     height: 65.h,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7.sp),
//                         border: Border.all(color: Color(0xff707070))),
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10.w),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             child: Row(
//                               children: [
//                                 Column(
//                                   crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                   children: [
//                                     CustomText(
//                                       text: "From",
//                                       fontWeight: FontWeight.w300,
//                                       size: 15.sp,
//                                       color: Colors.black,
//                                     ),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     CustomText(
//                                       text: "Islamabad",
//                                       fontWeight: FontWeight.w500,
//                                       size: 15.sp,
//                                       color: Colors.black,
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   width: 20.w,
//                                 ),
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment:
//                                       CrossAxisAlignment.center,
//                                   children: [
//                                     SvgPicture.asset(
//                                         'assets/svg/shiping.svg'),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Column(
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   CustomText(
//                                     text: "To",
//                                     fontWeight: FontWeight.w300,
//                                     size: 15.sp,
//                                     color: Colors.black,
//                                   ),
//                                   SizedBox(
//                                     height: 10.h,
//                                   ),
//                                   CustomText(
//                                     text: "Karachi",
//                                     fontWeight: FontWeight.w500,
//                                     size: 15.sp,
//                                     color: Colors.black,
//                                   ),
//                                 ],
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 !shipServices
//                     ? Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 20.w),
//                         child: Column(
//                           children: [
//                             Row(
//                               children: [
//                                 CustomText(
//                                   text: "COD",
//                                   fontWeight: FontWeight.w600,
//                                   size: 15.sp,
//                                   color: Colors.black,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 5.h,
//                             ),
//                             Row(
//                               children: [
//                                 CustomText(
//                                     text: "Rs.200/kg",
//                                     fontWeight: FontWeight.w600,
//                                     size: 15.sp,
//                                     color: AppColors.secondaryColor),
//                               ],
//                             ),
//                           ],
//                         ),
//                       )
//                     : Column(
//                         children: [
//                           CustomText(
//                             text: "Available Service Types",
//                             size: 12.sp,
//                             color: AppColors.secondaryColor,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           SizedBox(
//                             height: 10.h,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     selectOverNight = !selectOverNight;
//                                   });
//                                 },
//                                 child: CustomButtonClick(
//                                   height: 40.h,
//                                   width: 100.w,
//                                   decoration: BoxDecoration(
//                                     color: selectOverNight
//                                         ? AppColors.secondaryColor
//                                         : Colors.white,
//                                     border:
//                                         Border.all(color: Color(0xff707070)),
//                                     borderRadius: BorderRadius.circular(7.sp),
//                                   ),
//                                   child: Center(
//                                     child: CustomText(
//                                       text: 'Over Night',
//                                       color: selectOverNight
//                                           ? AppColors.whitColor
//                                           : AppColors.blackColor,
//                                       // AppColors.blackColor,
//                                       fontWeight: FontWeight.bold,
//                                       size: 12.sp,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     detain = !detain;
//                                   });
//                                 },
//                                 child: CustomButtonClick(
//                                   height: 40.h,
//                                   width: 100.w,
//                                   decoration: BoxDecoration(
//                                     color: detain
//                                         ? AppColors.secondaryColor
//                                         : Colors.white,
//                                     border:
//                                         Border.all(color: Color(0xff707070)),
//                                     borderRadius: BorderRadius.circular(7.sp),
//                                   ),
//                                   child: Center(
//                                     child: CustomText(
//                                       text: 'Detain',
//                                       color: detain
//                                           ? AppColors.whitColor
//                                           : AppColors.blackColor,
//                                       // AppColors.blackColor,
//                                       fontWeight: FontWeight.bold,
//                                       size: 12.sp,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     overland = !overland;
//                                   });
//                                 },
//                                 child: CustomButtonClick(
//                                   height: 40.h,
//                                   width: 100.w,
//                                   decoration: BoxDecoration(
//                                     color: overland
//                                         ? AppColors.secondaryColor
//                                         : Colors.white,
//                                     border: Border.all(
//                                         color: overland
//                                             ? AppColors.whitColor
//                                             : Color(0xff707070)),
//                                     borderRadius: BorderRadius.circular(7.sp),
//                                   ),
//                                   child: Center(
//                                     child: CustomText(
//                                       text: 'Overland',
//                                       color: overland
//                                           ? AppColors.whitColor
//                                           : AppColors.blackColor,
//                                       // AppColors.blackColor,
//                                       fontWeight: FontWeight.bold,
//                                       size: 12.sp,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 GestureDetector(
//                   onTap: !shipServices
//                       ? () {
//                           setState(() {
//                             shipServices = true;
//                           });
//                         }
//                       : () {
//                           setState(() {
//                             shipServices = false;
//                             Navigator.of(context).pop();
//                           });
//                           dialogWidget();
//                         },
//                   child: Container(
//                     height: 45.h,
//                     width: 270.w,
//                     decoration: BoxDecoration(
//                         color: AppColors.secondaryColor,
//                         borderRadius: BorderRadius.circular(17.sp)),
//                     child: Center(
//                       child: CustomText(
//                           text: "Next",
//                           color: AppColors.whitColor,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//               ],
//             );
//           },
//         );
//       }).then((value) => (value) {
//         setState(() {});
//       });
// }

// //......................Dialog widget.................................//

// Future dialogWidget() {
//   return showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(25.sp)),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: Icon(
//                         Icons.close,
//                         size: 28.sp,
//                       ),
//                     )
//                   ],
//                 ),
//                 Container(
//                   height: 30.h,
//                   width: 30.w,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: AppColors.primaryColor),
//                       borderRadius: BorderRadius.circular(30.sp)),
//                   child: Center(
//                     child: Icon(
//                       Icons.check,
//                       size: 20.sp,
//                       color: AppColors.primaryColor,
//                     ),
//                   ),
//                 ),
//                 CustomText(
//                   text: 'Order Booked',
//                   color: AppColors.blackColor,
//                   size: 16.sp,
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Container(
//                   height: 50.h,
//                   width: 150.w,
//                   color: Color(0xffF1D838),
//                   child: Center(
//                     child: Image.asset('assets/images/tcs.png'),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CustomText(
//                       text: "Tracking ID ",
//                       size: 14.sp,
//                       color: AppColors.blackColor,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     CustomText(
//                       text: "- ID1234567",
//                       size: 14.sp,
//                       color: AppColors.blackColor,
//                       fontWeight: FontWeight.w500,
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CustomText(
//                       text: "Nov 03,2022",
//                       size: 14.sp,
//                       color: AppColors.blackColor,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     CustomText(
//                       text: " 04:02:12 PM",
//                       size: 14.sp,
//                       color: AppColors.blackColor,
//                       fontWeight: FontWeight.w500,
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       deliveryInfo = true;
//                     });
//                     Navigator.of(context).pop();
//                   },
//                   child: Container(
//                     height: 45.h,
//                     width: 280.w,
//                     decoration: BoxDecoration(
//                         color: AppColors.secondaryColor,
//                         borderRadius: BorderRadius.circular(12.sp)),
//                     child: Center(
//                       child: CustomText(
//                         text: "LABEL PRINT",
//                         size: 16.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Container(
//                     height: 45.h,
//                     width: 280.w,
//                     decoration: BoxDecoration(
//                         color: Color(0xff555555),
//                         borderRadius: BorderRadius.circular(12.sp)),
//                     child: Center(
//                       child: CustomText(
//                         text: "LABEL PRINT",
//                         size: 16.sp,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ));
// }

}
