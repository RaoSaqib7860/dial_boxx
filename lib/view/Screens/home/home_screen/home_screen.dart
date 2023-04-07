import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/home/components/model_bottom_sheet.dart';
import 'package:dialbox_seller/view/Screens/home/domains/domains_screen.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/analytics_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/all_orders_screens/all_orders_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/custom_widgets/persistant_bottom_sheet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends KFDrawerContent {
  HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentSteper = 0;
  double progressValue = 25;
  bool status = true;
  bool changeWidget = true;
  int radioSelected = 1;
  String? radioVal;
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  final List<ChartData> chartData = [
    ChartData(
      'David', 25, AppColors.primaryColor,
      // Color.fromRGBO(9, 0, 136, 1)
    ),
    ChartData('Steve', 30, AppColors.secondaryColor
        //Color.fromRGBO(147, 0, 119, 1)
        ),
    ChartData(
      'Jack', 34, AppColors.secondaryColor,
      // Color.fromRGBO(228, 0, 124, 1)
    ),
    ChartData('Others', 52, AppColors.secondaryColor
        // Color.fromRGBO(255, 189, 57, 1)
        )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitColor,
      key: _scaffoldKey,
      appBar: CustomAppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: AppColors.primaryColor,
          ),
          onPressed: widget.onMenuPressed,
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
        child: SafeArea(
          child: changeWidget ? stepperWidget() : homeScreenWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            changeWidget = false;
          });
          // homeScreenWidget();
        },
      ),
    );
  }

//....................Home Screen..........................//
  Widget homeScreenWidget() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 120.h,
                  width: MediaQuery.of(context).size.width,
                  color: status
                      ? AppColors.primaryColor
                      : AppColors.secondaryColor,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Business Name",
                          size: 17.sp,
                          color: AppColors.whitColor,
                        ),
                        Container(
                          height: 35,
                          child: FlutterSwitch(
                            width: 100.0,
                            height: 40.0,
                            valueFontSize: 15.0,
                            toggleSize: 40.0,
                            activeColor: Colors.white,
                            activeToggleColor: AppColors.darkgreenColor,
                            activeText: 'Online',
                            activeTextColor: Colors.black54,
                            inactiveText: 'Offline',
                            value: status,
                            borderRadius: 30.0.sp,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                                status == false
                                    ? showModelBottomSheet()
                                    : SizedBox();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 70.h),
              child: Container(
                height: 210.h,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.whitColor,
                    borderRadius: BorderRadius.circular(10.sp),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 2,
                        color: Colors.black.withOpacity(0.20),
                      ),
                    ]),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: "Share store link",
                            fontWeight: FontWeight.bold,
                            size: 17.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomText(
                        text:
                            "Customer can visit the following link and place their order.",
                        size: 15.h,
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
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: CustomText(
                                  text: "Website details comming soon",
                                  size: 14.sp,
                                ),
                              ));
                            },
                            child: CustomText(
                              text: "Mydialboxx.com/businessname",
                              color: AppColors.primaryColor,
                              decoration: TextDecoration.underline,
                              size: 13.sp,
                            ),
                          ),
                          Container(
                            height: 35.h,
                            width: 80.w,

                            decoration: BoxDecoration(
                                color: AppColors.greenColor,
                                borderRadius: BorderRadius.circular(10.sp)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Icon(
                                  //   Icons.whatsapp,
                                  //   color: AppColors.whitColor,
                                  //   size: 22.sp,
                                  // ),
                                  CustomText(
                                    text: "Share",
                                    size: 14.sp,
                                    color: AppColors.whitColor,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DomainsScreen());
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: CustomButtonClick(
                            height: 30.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: 'Get your custom domain',
                                    color: AppColors.whitColor,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 7.sp,
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 9.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Container(
            height: 126.h,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.whitColor,
                borderRadius: BorderRadius.circular(6.sp),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.20))
                ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 126.h,
                      width:MediaQuery.of(context).size.width*0.31,
                      color: Colors.blue,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 5),
                          child: Container(
                            height: 50.h,
                            // width: 215.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "How to build your online store",
                                  size: 13.sp,
                                  color: Colors.black54,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: "and get your ",
                                      color: Colors.black54,
                                      size: 14.sp,
                                    ),
                                    CustomText(
                                      text: "Fire Store!",
                                      fontWeight: FontWeight.bold,
                                      size: 14.sp,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.6,
                          // height: 58.h,
                          child: CustomText(
                            text:
                                "Learn how you can setup your website & profile with Dialboxx with ZERO coding skills",
                            color: Colors.black54,
                            maxline: 4,
                            size: 12.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 0.h,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Overview",
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Lifetime",
                    color: AppColors.blackColor.withOpacity(0.80),
                    fontWeight: FontWeight.bold,
                    size: 13.sp,
                  ),
                  PopupMenuButton(
                    position: PopupMenuPosition.under,
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      itemBuilder: (context) => [
                            PopupMenuItem(
                                height: 50.h,
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Today',
                                      size: 14.sp,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomText(
                                      text: 'Yesterday',
                                      size: 14.sp,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomText(
                                      text: 'This Week',
                                      size: 14.sp,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomText(
                                      text: 'Last Week',
                                      size: 14.sp,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomText(
                                      text: 'This Month',
                                      size: 14.sp,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomText(
                                      text: 'Last Month',
                                      size: 14.sp,
                                    )
                                  ],
                                ))
                          ])
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => AnalyticsScreen(
                          tabIndex: 0,
                        ));
                  },
                  child: Container(
                    //  height: 180.h,
                    // width: 160.w,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(5.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),

                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: Row(
                            children: [
                              CustomText(
                                text: "Total Sales",
                                fontWeight: FontWeight.w500,
                                size: 15.sp,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130.h,
                          child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              // Chart title
                              // title: ChartTitle(text: 'Half yearly sales analysis'),
                              // Enable legend
                              legend: Legend(
                                isVisible: false,
                              ),

                              // Enable tooltip
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <ChartSeries<_SalesData, String>>[
                                ColumnSeries<_SalesData, String>(
                                    dataSource: data,
                                    xValueMapper: (_SalesData sales, _) =>
                                        sales.year,
                                    yValueMapper: (_SalesData sales, _) =>
                                        sales.sales,
                                    name: '',

                                    // Enable data label
                                    dataLabelSettings: DataLabelSettings(
                                      isVisible: true,
                                    ))
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => AnalyticsScreen(
                          tabIndex: 0,
                        ));
                  },
                  child: Container(
                    // height: 180.h,
                    // width: 160.w,

                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(5.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),

                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: Row(
                            children: [
                              CustomText(
                                text: "Total Products",
                                fontWeight: FontWeight.w500,
                                size: 15.sp,
                              )
                            ],
                          ),
                        ),
                        Container(
                            height: 130.h,
                            child: SfCircularChart(
                                margin: EdgeInsets.zero,
                                series: <CircularSeries>[
                                  // Renders doughnut chart
                                  DoughnutSeries<ChartData, String>(
                                      dataSource: chartData,
                                      pointColorMapper: (ChartData data, _) =>
                                          data.color,
                                      radius: '50',
                                      innerRadius: '38',
                                      xValueMapper: (ChartData data, _) => data.x,
                                      yValueMapper: (ChartData data, _) => data.y)
                                ]))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => AnalyticsScreen(
                          tabIndex: 1,
                        ));
                  },
                  child: Container(
                    height: 70.h,
                    // width: 160.w,
                    decoration: BoxDecoration(
                      color: AppColors.whitColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 1,
                            color: Colors.black.withOpacity(0.10))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Store View",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            size: 14.sp,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: "23",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            size: 12.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => AnalyticsScreen(
                          tabIndex: 2,
                        ));
                  },
                  child: Container(
                    height: 70.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      color: AppColors.whitColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 1,
                            color: Colors.black.withOpacity(0.10))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Product View",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            size: 14.sp,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: "15",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            size: 12.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Orders",
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                size: 15.sp,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => BottomSheetCustom(
                          index: 1,
                        ));
                  },
                  child: Container(
                    height: 65.h,
                    // width: 160.w,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(5.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/delivery.png',
                                height: 20.h,
                                width: 20.w,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15.sp,
                              )
                            ],
                          ),
                          CustomText(
                            text: "1 pending order",
                            size: 14.sp,
                            color: Colors.black54,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => BottomSheetCustom(
                          index: 1,
                        ));
                  },
                  child: Container(
                    height: 65.h,
                    // width: 160.w,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(5.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/delivery.png',
                                height: 20.h,
                                width: 20.w,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15.sp,
                              )
                            ],
                          ),
                          CustomText(
                            text: "3 Order to ship",
                            size: 14.sp,
                            color: Colors.black54,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            height: 130.h,
            width: MediaQuery.of(context).size.width,
            color: AppColors.primaryColor,
            child: Center(
              child: CustomText(
                text: "Coming Soon",
                color: AppColors.whitColor,
                size: 16.sp,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        )
      ],
    );
  }
  //....................Stepper Widget........................//

  stepperWidget() {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 260.h,
              width: MediaQuery.of(context).size.width,
              color: AppColors.primaryColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 0.h,
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.primaryColor,
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          minimum: 0,
                          maximum: 100,
                          annotations: [
                            GaugeAnnotation(
                              positionFactor: 0.1,
                              angle: 90,
                              widget: CustomText(
                                text: progressValue.toStringAsFixed(0) + '%',
                                size: 20.sp,
                                color: AppColors.whitColor,
                              ),
                            ),
                          ],
                          showLabels: false,
                          showTicks: false,
                          startAngle: 180,
                          endAngle: 0,
                          radiusFactor: 0.9,
                          canScaleToFit: true,
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.1,
                            color: AppColors.secondaryColor,
                            thicknessUnit: GaugeSizeUnit.factor,
                            // cornerStyle: CornerStyle.startCurve,
                          ),
                          pointers: const <GaugePointer>[
                            RangePointer(
                              value: 25,
                              width: 0.1,
                              color: Colors.white,
                              sizeUnit: GaugeSizeUnit.factor,
                              // cornerStyle: CornerStyle.bothCurve
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                    text: "Store setup is Complete",
                    size: 16.sp,
                    color: AppColors.whitColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                      text: "Finish folowing steps to unlock features",
                      size: 12.sp,
                      color: AppColors.whitColor.withOpacity(0.80))
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20, top: 170),
          child: Container(
            // height: 420.h,
            decoration: BoxDecoration(
                color: AppColors.whitColor,
                borderRadius: BorderRadius.circular(10.sp),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 3,
                      color: AppColors.blackColor.withOpacity(0.10))
                ]),
            child: Stepper(
                controlsBuilder: (context, details) {
                  return Row(
                    children: [
                      SizedBox(),
                      SizedBox(),
                    ],
                  );
                },
                currentStep: currentSteper,
                onStepTapped: (value) {
                  setState(() {
                    currentSteper = value;
                  });
                },
                steps: [
                  Step(
                    isActive: currentSteper >= 0,
                    state: StepState.complete,
                    title: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: CustomText(
                        text: 'Create online store',
                        size: 14.sp,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              "Congratulation on Opening your new online store!",
                          size: 13.sp,
                        ),
                        Text(
                          'Visit Stores',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 13.sp,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    content: SizedBox(),
                  ),
                  Step(
                    isActive: currentSteper >= 1,
                    state: StepState.complete,
                    title: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: CustomText(
                        text: 'Complete Business Information',
                        size: 14.sp,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              "Fill your business information to gain Customer trust",
                          size: 13.sp,
                        ),
                      ],
                    ),
                    content: SizedBox(),
                  ),
                  Step(
                    isActive: currentSteper >= 2,
                    state: StepState.complete,
                    title: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: CustomText(
                        text: 'Add Product',
                        color: Colors.blue,
                        size: 14.sp,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              "Set up your first product by adding the product name and images",
                          size: 13.sp,
                        ),
                        SizedBox(height: 8.h,),
                        CustomButtonClick(
                          height: 35.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(2.sp)),
                          child: Center(
                            child: CustomText(
                              text: 'Add Product',
                              color: AppColors.whitColor,
                              size: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    content: SizedBox(),
                  ),
                  Step(
                    isActive: currentSteper >= 3,
                    state: StepState.complete,
                    title: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: CustomText(
                        text: 'Set up payment method',
                        color: Colors.blue,
                        size: 14.sp,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(bottom:12.0),
                      child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              "Select how your customer will make payment for a purchase",
                          size: 13.sp,
                        ),
                        SizedBox(height: 8.h,),
                        CustomButtonClick(
                          height: 35.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(2.sp)),
                          child: Center(
                            child: CustomText(
                              text: 'Set up payment',
                              color: AppColors.whitColor,
                              size: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],),
                    ),
                    content: SizedBox(),
                  ),
                ]),
          ),
        )
      ],
    );
  }

  //.........Show Moel bottom sheet....................//

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Go Online After",
                          size: 16.sp,
                          fontWeight: FontWeight.bold,
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
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: radioSelected,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              radioSelected = value!.toInt();
                            });
                          },
                        ),
                        CustomText(
                          text: "1 hour",
                          size: 16.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: radioSelected,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              radioSelected = value!.toInt();
                            });
                          },
                        ),
                        CustomText(
                          text: "2 hours",
                          size: 16.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: radioSelected,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              radioSelected = value!.toInt();
                            });
                          },
                        ),
                        CustomText(
                          text: "4 hours",
                          size: 16.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 4,
                          groupValue: radioSelected,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              radioSelected = value!.toInt();
                            });
                          },
                        ),
                        CustomText(
                          text: "Tomorrow at same time",
                          size: 16.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 5,
                          groupValue: radioSelected,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              radioSelected = value!.toInt();
                            });
                          },
                        ),
                        CustomText(
                          text: "I will go online myself",
                          size: 16.sp,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          setState(() {
                            status = false;
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
                              text: "Confirm",
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
                ),
              );
            },
          );
        });
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
