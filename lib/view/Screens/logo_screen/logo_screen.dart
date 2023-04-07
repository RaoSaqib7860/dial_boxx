
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../website_design_screen/website_design_screen.dart';
import 'lightspeed_screen/favicon_screen.dart';
import 'lightspeed_screen/fonts_screen.dart';
import 'lightspeed_screen/logos_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> with TickerProviderStateMixin {
 int selectIndex = 0;
  late TabController _controller;

@override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButton(
          color: Colors.blue,
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
      body: Column(
        children: [
          HeaderContainer(
            text: "Lightspeed",
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.only(left: 5.w),
            child: TabBar(
              isScrollable: true,
              indicatorWeight: 0.000001.h,
              controller: _controller,
              labelPadding: EdgeInsets.only(right: 3.w,),
              padding: EdgeInsets.only(right: 17.w),
              tabs: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = 1;
                    });
                  },
                  child: Container(
                    height: 3.5.h,
                    width: 18.w,
                    decoration: BoxDecoration(
                        color: selectIndex == 1? AppColors.primaryColor:Colors.white,
                        border: Border.all(width: 1,color: Colors.black),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        'Logo',
                        style: TextStyle(fontWeight: FontWeight.bold,color:selectIndex == 1? Colors.white:Colors.black,fontSize: 14.sp),
                      ),
                    ),
                  ),
                ),
               // SizedBox(width: 4.w,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = 2;
                    });
                  },
                  child: Container(
                    height: 3.5.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: selectIndex == 2? AppColors.primaryColor:Colors.white,
                        border: Border.all(width: 1,color: Colors.black),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        'Font & colors',
                        style: TextStyle(fontWeight: FontWeight.bold,color:selectIndex == 2? Colors.white:Colors.black,fontSize: 14.sp),
                      ),
                    ),
                  ),
                ),
               // SizedBox(width: 4.w,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = 3;
                    });
                  },
                  child: Container(
                    height: 3.5.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: selectIndex == 3? AppColors.primaryColor:Colors.white,
                        border: Border.all(width: 1,color: Colors.black),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        'Favicon',
                        style: TextStyle(fontWeight: FontWeight.bold,color:selectIndex == 3? Colors.white:Colors.black,fontSize: 14.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h,),
          Expanded(
              child: Container(
                child: TabBarView(
                  controller: _controller,
                  children: [
                    selectIndex == 1
                        ?LogosScreen(index: 1,):
                    selectIndex == 2
                        ?FontScreen(index: 2,):
                    selectIndex == 3
                        ?FaviconScreen(index: 3,):
                    LogosScreen(index: 1,),
                  ],
                ),
              )
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => WebsiteDesignScreen(),));
        },
      ),
    );
  }


}
