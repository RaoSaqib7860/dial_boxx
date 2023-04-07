import 'package:dialbox_seller/view/Screens/tutorials_screen/tutorials_screen/general_screen.dart';
import 'package:dialbox_seller/view/Screens/tutorials_screen/tutorials_screen/order_screen.dart';
import 'package:dialbox_seller/view/Screens/tutorials_screen/tutorials_screen/pricing_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dialbox_seller/view/Screens/tutorials_screen/tutorials_screen/delivery_screen.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';



class TutorialsScreen extends StatefulWidget {
  const TutorialsScreen({Key? key}) : super(key: key);

  @override
  State<TutorialsScreen> createState() => _TutorialsScreenState();
}

class _TutorialsScreenState extends State<TutorialsScreen> with TickerProviderStateMixin {
  int selectIndex = 0;
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.blue,
        ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 15.w),
        //     child: CircleAvatar(
        //       radius: 15.sp,
        //       backgroundColor: AppColors.primaryColor,
        //       child: Icon(
        //         Icons.person,
        //         size: 22.sp,
        //         color: AppColors.whitColor,
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: Column(
        children: [
          HeaderContainer(
            text: "Tutorials",
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.only(left: 5.w,right: 5.w),
            child: Container(
              height: 4.h,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  hintText: 'Search for tutorials',
                  labelText: 'Search for tutorials',
                  labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                  hintStyle: TextStyle(fontSize: 12.sp),
                  prefixIcon: Icon(Icons.search,color: Colors.grey,),
                  contentPadding: EdgeInsets.only(top: 0.5.h),

                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 5.w,right: 5.w,top: 3.h),
            child: Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 5.h,
            child: TabBar(
              isScrollable: true,
              indicatorWeight: 0.000001.h,
              controller: _controller,
              labelPadding: EdgeInsets.only(right: 2.w),
              tabs: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = 1;
                    });
                  },
                  child: Container(
                    height: 2.5.h,
                    width: 21.w,
                    decoration: BoxDecoration(
                        color: selectIndex == 1? AppColors.primaryColor:Colors.white,
                        border: Border.all(width: 1,color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        'General(19)',
                        style: TextStyle(color:selectIndex == 1? Colors.white:Colors.black,fontSize: 10.sp),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = 2;
                    });
                  },
                  child: Container(
                    height: 2.5.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: selectIndex == 2? AppColors.primaryColor:Colors.white,
                        border: Border.all(width: 1,color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        'Order(1)',
                        style: TextStyle(color:selectIndex == 2? Colors.white:Colors.black,fontSize: 10.sp),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = 3;
                    });
                  },
                  child: Container(
                    height: 2.5.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: selectIndex == 3? AppColors.primaryColor:Colors.white,
                        border: Border.all(width: 1,color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        'Delivery(1)',
                        style: TextStyle(color:selectIndex == 3? Colors.white:Colors.black,fontSize: 10.sp),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = 4;
                    });
                  },
                  child: Container(
                    height: 2.5.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: selectIndex == 4? AppColors.primaryColor:Colors.white,
                        border: Border.all(width: 1,color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        'Pricing(1)',
                        style: TextStyle(color:selectIndex == 4? Colors.white:Colors.black,fontSize: 10.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h,),
         Expanded(
             child: Container(
               child: TabBarView(
                 controller: _controller,
                 children: [
                   selectIndex == 1
                       ? GeneralScreen(index: 1,):
                   selectIndex == 2
                       ? TutorialOrderScreen(index: 2,):
                   selectIndex==3
                       ? DeliveryScreen(index: 3):
                   selectIndex==4
                       ? TutorialPricingScreen(index: 4,):
                   GeneralScreen(index: 1,),
                 ],
               ),
             )
         ),


        ],
      ),

    );
  }

Widget generalCategory(int index){
    return Column(
      children: [
        Container(
          height: 25.h,
          width: 90.w,
          child: Column(
            children: [
              Container(
                height: 20.h,
                color: Colors.grey.withAlpha(100),
                child: Center(
                  child: Icon(Icons.play_circle_fill,size: 60,color: Colors.blue,),
                ),
              ),
              Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'How to connect your domain name',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(height: 1.h,),
        Container(
          height: 25.h,
          width: 90.w,
          child: Column(
            children: [
              Container(
                height: 20.h,
                color: Colors.grey.withAlpha(100),
                child: Center(
                  child: Icon(Icons.play_circle_fill,size: 60,color: Colors.blue,),
                ),
              ),
              Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'How to connect your domain name',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
}

  Widget orderCategory(int index){
    return Column(
      children: [
        Center(
          child: Text(
            'Order Empty'
          ),
        )
      ],
    );
  }

  Widget deliverCategory(int index){
    return Column(
      children: [
        Center(
          child: Text(
              'Delivery Empty'
          ),
        )
      ],
    );
  }

  Widget pricingCategory(int index){
    return Column(
      children: [
        Center(
          child: Text(
              'Pricing Empty'
          ),
        )
      ],
    );
  }

}
