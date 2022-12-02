import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalyticsScreen extends StatefulWidget {
  final int? tabIndex;
  const AnalyticsScreen({super.key, this.tabIndex});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  var ordersList = ['This Month', 'Last Month', 'This Year', 'Last Year'];
  int selectColor = 0;
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
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 
        widget.tabIndex == 0
            ? 0
            : widget.tabIndex == 1
                ? 1
                : widget.tabIndex == 2
                    ? 2
                    : 0

        );
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
                    height: 60.h,
                    child: Center(
                      child: CustomText(
                        text: "ANALYTICS",
                        size: 17.sp,
                        color: AppColors.whitColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                      CustomText(
                        text: "Sales",
                        size: 15.sp,
                      ),
                      CustomText(
                        text: "Traffic",
                        size: 15.sp,
                      ),
                      CustomText(
                        text: "Products",
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      salesWidget(),
                    ],
                  ),
                  //.............Categories Tab..........................//
                  trafficWidget(),
                  productWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  //...............................Traffic Widget...............................//

  Widget trafficWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                          border: Border.all(
                            color: selectColor == index
                                ? AppColors.whitColor
                                : Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30.sp)),
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 98.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "AVERAGE STORE VIEW",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "PER DAY ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "4",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "RECURRING",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "CUSTOMERS ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "2",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 214.h,
                        width: 166.w,
                        decoration: BoxDecoration(
                            color: AppColors.whitColor,
                            borderRadius: BorderRadius.circular(0.sp),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.10))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: "STORES VIEWS ",
                                    size: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Image.asset(
                                    'assets/images/info-circle-fill.png',
                                    height: 12.h,
                                    width: 12,
                                  )
                                ],
                              ),
                              CustomText(
                                text: "33",
                                size: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              Container(
                                height: 145.h,
                                width: 190,
                                child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(),
                                    // Chart title
                                    // title: ChartTitle(text: 'Half yearly sales analysis'),
                                    // Enable legend
                                    legend: Legend(
                                      isVisible: true,
                                      padding: 0.0,
                                    ),
                                    // Enable tooltip
                                    tooltipBehavior:
                                        TooltipBehavior(enable: true),
                                    series: <ChartSeries<_SalesData, String>>[
                                      LineSeries<_SalesData, String>(
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
                      Container(
                        color: AppColors.primaryColor,
                        width: 168.w,
                        height: 22,
                        child: Center(
                          child: CustomText(
                            text: "View Detailed Report",
                            size: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 234.h,
                    width: 166.w,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(0.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 6, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "VIEWS BY DEVICE",
                            size: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "TYPE ",
                                size: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
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
                                        xValueMapper: (ChartData data, _) =>
                                            data.x,
                                        yValueMapper: (ChartData data, _) =>
                                            data.y)
                                  ])),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 11.h,
                                      width: 13.w,
                                      color: AppColors.primaryColor,
                                    ),
                                    CustomText(
                                      text: " Desktop",
                                      size: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 11.h,
                                      width: 13.w,
                                      color: AppColors.secondaryColor,
                                    ),
                                    CustomText(
                                      text: " Mobile",
                                      size: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    )
                                  ],
                                )
                              ],
                            ),
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
      ],
    );
  }

//.................................Product Widget.......................................//

  Widget productWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                          border: Border.all(
                            color: selectColor == index
                                ? AppColors.whitColor
                                : Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30.sp)),
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
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "AVERAGE VIEW PER",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "PRODUCT ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "2",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "AVERAGE VIEW PER",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "CATEGORY ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "1",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 236.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(0.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: "TOP CATGORIES BY",
                            size: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "SALES ",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "1.Categories",
                                size: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              CustomText(
                                text: "70%",
                                size: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "1.Categories",
                                size: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              CustomText(
                                text: "30%",
                                size: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 214.h,
                        width: 162.w,
                        decoration: BoxDecoration(
                            color: AppColors.whitColor,
                            borderRadius: BorderRadius.circular(0.sp),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.10))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: "PRODUCT VIEWS ",
                                    size: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Image.asset(
                                    'assets/images/info-circle-fill.png',
                                    height: 12.h,
                                    width: 12,
                                  )
                                ],
                              ),
                              CustomText(
                                text: "2",
                                size: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              Container(
                                height: 145.h,
                                width: 190,
                                child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(),
                                    // Chart title
                                    // title: ChartTitle(text: 'Half yearly sales analysis'),
                                    // Enable legend
                                    legend: Legend(
                                      isVisible: true,
                                      padding: 0.0,
                                    ),
                                    // Enable tooltip
                                    tooltipBehavior:
                                        TooltipBehavior(enable: true),
                                    series: <ChartSeries<_SalesData, String>>[
                                      LineSeries<_SalesData, String>(
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
                      Container(
                        color: AppColors.primaryColor,
                        width: 164.w,
                        height: 22,
                        child: Center(
                          child: CustomText(
                            text: "View Detailed Report",
                            size: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 160.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.black.withOpacity(0.12))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: "TOP SELLING PRODUCT(BY UNIT) ",
                            size: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          Image.asset(
                            'assets/images/info-circle-fill.png',
                            height: 12.h,
                            width: 12,
                          ),
                        ],
                      ),
                      ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 8.h),
                                height: 42.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 1,
                                          color: Colors.black.withOpacity(0.12))
                                    ],
                                    borderRadius: BorderRadius.circular(2.sp)),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/svg/product_imag.svg',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "1.Product name",
                                    size: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff797979),
                                  ),
                                  CustomText(
                                    text: "Unit Solid:3",
                                    size: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff797979),
                                  )
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 25.h,
                width: MediaQuery.of(context).size.width,
                color: AppColors.primaryColor,
                child: Center(
                  child: CustomText(
                    text: "View Detailed Report",
                    size: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

//.................................Sales Widget.................................//

  Widget salesWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                          border: Border.all(
                            color: selectColor == index
                                ? AppColors.whitColor
                                : Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30.sp)),
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
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "AVERAGE ORDER PER",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "DAY ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "4",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "AVERAGE ORDER",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "VALUE ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "Rs.450",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "AVERAGE SALES PER",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "DAY ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "Rs.200",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.12))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "RECURRING",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "CUSTOMERS ",
                                size: 13.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomText(
                            text: "12%",
                            size: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 214.h,
                        width: 162.w,
                        decoration: BoxDecoration(
                            color: AppColors.whitColor,
                            borderRadius: BorderRadius.circular(0.sp),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.10))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: "Total Order ",
                                    size: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Image.asset(
                                    'assets/images/info-circle-fill.png',
                                    height: 12.h,
                                    width: 12,
                                  )
                                ],
                              ),
                              CustomText(
                                text: "15",
                                size: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              Container(
                                height: 145.h,
                                width: 190,
                                child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(),
                                    // Chart title
                                    // title: ChartTitle(text: 'Half yearly sales analysis'),
                                    // Enable legend
                                    legend: Legend(
                                      isVisible: true,
                                      padding: 0.0,
                                    ),
                                    // Enable tooltip
                                    tooltipBehavior:
                                        TooltipBehavior(enable: true),
                                    series: <ChartSeries<_SalesData, String>>[
                                      LineSeries<_SalesData, String>(
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
                      Container(
                        color: AppColors.primaryColor,
                        width: 164.w,
                        height: 22,
                        child: Center(
                          child: CustomText(
                            text: "View Detailed Report",
                            size: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 214.h,
                        width: 162.w,
                        decoration: BoxDecoration(
                            color: AppColors.whitColor,
                            borderRadius: BorderRadius.circular(0.sp),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.10))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: "Total Sales ",
                                    size: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Image.asset(
                                    'assets/images/info-circle-fill.png',
                                    height: 12.h,
                                    width: 12,
                                  )
                                ],
                              ),
                              CustomText(
                                text: "Rs.6000",
                                size: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              Container(
                                height: 145.h,
                                width: 190,
                                child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(),
                                    // Chart title
                                    // title: ChartTitle(text: 'Half yearly sales analysis'),
                                    // Enable legend
                                    legend: Legend(
                                      isVisible: true,
                                      padding: 0.0,
                                    ),
                                    // Enable tooltip
                                    tooltipBehavior:
                                        TooltipBehavior(enable: true),
                                    series: <ChartSeries<_SalesData, String>>[
                                      LineSeries<_SalesData, String>(
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
                      Container(
                        color: AppColors.primaryColor,
                        width: 164.w,
                        height: 22,
                        child: Center(
                          child: CustomText(
                            text: "View Detailed Report",
                            size: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(0.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: "Sales by top",
                            size: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Region ",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "1.Karachi",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                              CustomText(
                                text: "65%",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "2.Lahore",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                              CustomText(
                                text: "15%",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140.h,
                    width: 162.w,
                    decoration: BoxDecoration(
                        color: AppColors.whitColor,
                        borderRadius: BorderRadius.circular(0.sp),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.10))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: "Sales by traffic",
                            size: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "Source ",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              Image.asset(
                                'assets/images/info-circle-fill.png',
                                height: 12.h,
                                width: 12,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "1.Facebook",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                              CustomText(
                                text: "65%",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "2.Instagram",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                              CustomText(
                                text: "15%",
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4C4C4C),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 25.h,
                width: 162.w,
                color: AppColors.primaryColor,
                child: Center(
                  child: CustomText(
                    text: "View Detailed Report",
                    size: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                height: 25.h,
                width: 162.w,
                color: AppColors.primaryColor,
                child: Center(
                  child: CustomText(
                    text: "View Detailed Report",
                    size: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
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
