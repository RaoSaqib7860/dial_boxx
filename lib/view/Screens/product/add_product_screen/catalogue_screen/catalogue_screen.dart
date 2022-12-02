import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  // bool selectType = false;
  bool status = false;
  bool openBottomSheet = false;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
            Container(
              color: AppColors.primaryColor,
              child: Column(
                children: [
                  Container(
                    height: 30.h,
                    child: Center(
                      child: CustomText(
                        text: "Catalogue",
                        size: 16.sp,
                        color: AppColors.whitColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                      CustomText(
                        text: "Products",
                        size: 15.sp,
                      ),
                      CustomText(
                        text: "Categories",
                        size: 15.sp,
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 42.h,
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
                                      hintText: 'Search Products',
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search,
                                          color: Color(0xff6D6D6D))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(top: 15.h),
                              child: Container(
                                height: 180.h,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: AppColors.whitColor,
                                  borderRadius: BorderRadius.circular(4.sp),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        spreadRadius: 1,
                                        color: Colors.black.withOpacity(0.10))
                                  ],
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            //height: 84.h,
                                            width: 90.w,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 90.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.sp),
                                                      // color: Color(0xffE6E6E6),
                                                      color: Colors.black,
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff707070))),
                                                  child: Center(
                                                    child: SvgPicture.asset(
                                                        'assets/svg/product_imag.svg'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              //  height: 90.h,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 0.w),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomText(
                                                          text: "Dall Food",
                                                          size: 15.sp,
                                                          color:
                                                              Color(0xff3E3E3E),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                        PopupMenuButton(
                                                            child: Container(
                                                              height: 20.h,
                                                              width: 30.w,
                                                              child: Icon(Icons
                                                                  .more_vert_rounded),
                                                            ),
                                                            padding:
                                                                EdgeInsets.zero,
                                                            itemBuilder:
                                                                (context) => [
                                                                      PopupMenuItem(
                                                                          padding:
                                                                              EdgeInsets.symmetric(horizontal: 10.w),
                                                                          child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              CustomText(
                                                                                text: 'Edit',
                                                                                size: 14.sp,
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.h,
                                                                              ),
                                                                              CustomText(
                                                                                text: 'Move to top',
                                                                                size: 14.sp,
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.h,
                                                                              ),
                                                                              CustomText(
                                                                                text: 'Delete Product',
                                                                                size: 14.sp,
                                                                                color: AppColors.secondaryColor,
                                                                              ),
                                                                            ],
                                                                          ))
                                                                    ])
                                                      ],
                                                    ),
                                                  ),
                                                  CustomText(
                                                    text: "1 Piece",
                                                    size: 13.sp,
                                                    color: Color(0xff3E3E3E),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  Row(
                                                    children: [
                                                      CustomText(
                                                        text: "100Rs ",
                                                        size: 13.sp,
                                                        color:
                                                            Color(0xff3E3E3E),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                      CustomText(
                                                        text: "200Rs",
                                                        size: 13.sp,
                                                        color:
                                                            Color(0xff3E3E3E),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 10.w),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomText(
                                                          text: "In Stock",
                                                          color: AppColors
                                                              .greenColor,
                                                          size: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                        Container(
                                                          height: 34.h,
                                                          child: FlutterSwitch(
                                                            width: 55.0.w,
                                                            height: 30.0.h,
                                                            valueFontSize: 15.0,
                                                            toggleSize: 30.0,
                                                            padding: 0.4,
                                                            activeColor:
                                                                AppColors
                                                                    .greenColor,
                                                            activeToggleColor:
                                                                AppColors
                                                                    .whitColor,
                                                            activeText: '',
                                                            activeTextColor:
                                                                Colors.black54,
                                                            inactiveText: '',
                                                            value: status,
                                                            borderRadius:
                                                                30.0.sp,
                                                            showOnOff: true,
                                                            onToggle: (val) {
                                                              setState(() {
                                                                status = val;
                                                                !status
                                                                    ? showModelBottomSheet()
                                                                    : SizedBox();
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
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
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.share_outlined,
                                            color: AppColors.blackColor,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          CustomText(
                                            text: "Share Product",
                                            color: AppColors.blackColor,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomButtonClick(
                          height: 45.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(6.sp)),
                          child: const Center(
                            child: CustomText(
                              text: "Add New Product",
                              color: AppColors.whitColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //.............Categories Tab..........................//
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 42.h,
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
                                      hintText: 'Search Categories',
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search,
                                          color: Color(0xff6D6D6D))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(top: 15.h),
                              child: Container(
                                height: 160.h,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: AppColors.whitColor,
                                  borderRadius: BorderRadius.circular(4.sp),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        spreadRadius: 1,
                                        color: Colors.black.withOpacity(0.10))
                                  ],
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 10.h, left: 10.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            //height: 84.h,
                                            width: 80.w,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 70.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.sp),
                                                      // color: Color(0xffE6E6E6),
                                                      color: Colors.black,
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff707070))),
                                                  child: Center(
                                                    child: SvgPicture.asset(
                                                        'assets/svg/product_imag.svg'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              //  height: 90.h,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 0.w),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomText(
                                                          text:
                                                              "Product Category",
                                                          size: 15.sp,
                                                          color:
                                                              Color(0xff3E3E3E),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                        PopupMenuButton(
                                                            child: Container(
                                                              height: 20.h,
                                                              width: 30.w,
                                                              child: Icon(Icons
                                                                  .more_vert_rounded),
                                                            ),
                                                            padding:
                                                                EdgeInsets.zero,
                                                            itemBuilder:
                                                                (context) => [
                                                                      PopupMenuItem(
                                                                          padding:
                                                                              EdgeInsets.symmetric(horizontal: 10.w),
                                                                          child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              CustomText(
                                                                                text: 'Edit',
                                                                                size: 14.sp,
                                                                                color: AppColors.blackColor,
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.h,
                                                                              ),
                                                                              CustomText(
                                                                                text: 'Delete Product',
                                                                                size: 14.sp,
                                                                                color: AppColors.secondaryColor,
                                                                              ),
                                                                            ],
                                                                          ))
                                                                    ])
                                                      ],
                                                    ),
                                                  ),
                                                  CustomText(
                                                    text: "1 Product listed",
                                                    size: 13.sp,
                                                    color: Color(0xff3E3E3E),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 10.w),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomText(
                                                          text: "In Stock",
                                                          color: AppColors
                                                              .greenColor,
                                                          size: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                        Container(
                                                          height: 34.h,
                                                          child: FlutterSwitch(
                                                            width: 55.0.w,
                                                            height: 30.0.h,
                                                            valueFontSize: 15.0,
                                                            toggleSize: 30.0,
                                                            padding: 0.4,
                                                            activeColor:
                                                                AppColors
                                                                    .greenColor,
                                                            activeToggleColor:
                                                                AppColors
                                                                    .whitColor,
                                                            activeText: '',
                                                            activeTextColor:
                                                                Colors.black54,
                                                            inactiveText: '',
                                                            value: status,
                                                            borderRadius:
                                                                30.0.sp,
                                                            showOnOff: true,
                                                            onToggle: (val) {
                                                              setState(() {
                                                                status = val;
                                                                !status
                                                                    ? showModelBottomSheet()
                                                                    : SizedBox();
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6.h,
                                      ),
                                      Divider(
                                        thickness: 1.5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.share_outlined,
                                            color: AppColors.blackColor,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          CustomText(
                                            text: "Share Product",
                                            color: AppColors.blackColor,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomButtonClick(
                          height: 45.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(6.sp)),
                          child: Center(
                            child: CustomText(
                              text: "Add New Category",
                              color: AppColors.whitColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //.......................Note Widget.........................................//
  Widget noteBottomSheetWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 20.h,
                width: 20.w,
                child: SvgPicture.asset(
                  'assets/svg/note.svg',
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 4.w,
            ),
            CustomText(
              text: "Please note",
              size: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 70.h,
          width: 320.w,
          child: Center(
            child: CustomText(
              text:
                  "This product will also a part of the other coupon(s) Hiding it may deactivate the assocuative coupon(s)",
              color: Color(0xffA1A1A1),
              size: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                status = false;
                openBottomSheet = false;
              });
            },
            child: CustomButtonClick(
              height: 45.h,
              width: 200.w,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8.sp)),
              child: Center(
                child: CustomText(
                  text: "Continue",
                  size: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whitColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        )
      ],
    );
  }

  //..............Model Sheet Select type......................//

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
                  child: !openBottomSheet
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
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
                            CustomText(
                              text: "Please Select Your Type",
                              size: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
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
                                        child: SvgPicture.asset(
                                          'assets/svg/eye_close.svg',
                                          fit: BoxFit.cover,
                                        )),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          openBottomSheet = true;
                                        });
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "Hide",
                                            size: 14.sp,
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          CustomText(
                                            text:
                                                "This will Hide the product from store",
                                            color: Color(0xffA1A1A1),
                                            size: 13.sp,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ],
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
                                    Container(
                                        height: 40.h,
                                        width: 40.w,
                                        child: SvgPicture.asset(
                                          'assets/svg/block.svg',
                                          fit: BoxFit.cover,
                                        )),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "Out of stock",
                                          size: 14.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        Container(
                                          height: 50.h,
                                          width: 270.w,
                                          child: CustomText(
                                            text:
                                                "This product will be shown on the store but out of stock",
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
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        )
                      : noteBottomSheetWidget());
            },
          );
        });
  }


}
