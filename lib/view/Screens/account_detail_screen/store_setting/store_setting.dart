
import 'package:dialbox_seller/view/Screens/account_detail_screen/store_setting/store_information.dart';
import 'package:dialbox_seller/view/Screens/account_detail_screen/store_setting/store_location.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class StoreSettingScreen extends StatefulWidget {
  const StoreSettingScreen({Key? key}) : super(key: key);

  @override
  State<StoreSettingScreen> createState() => _StoreSettingScreenState();
}

class _StoreSettingScreenState extends State<StoreSettingScreen> with TickerProviderStateMixin {
  late TabController _controller;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 8.h,
            child: Center(
              child: TabBar(
                indicatorWeight: 0.000001.h,
                controller: _controller,
               // labelColor: Colors.black,
                tabs: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5.w),
                      child: Container(
                        height: 4.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          color: index == 1 ? AppColors.primaryColor:Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.grey,width: 1)
                        ),
                        child: Center(
                          child: Text(
                            'Store Information',
                            style: TextStyle(color: index == 1 ? Colors.white:Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Padding(
                      padding:  EdgeInsets.only(right: 5.w),
                      child: Container(
                        height: 4.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            color: index == 2 ? AppColors.primaryColor:Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Colors.grey,width: 1)
                        ),
                        child: Center(
                          child: Text(
                            'Store Location',
                            style: TextStyle(color: index == 2 ? Colors.white:Colors.black),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 0.5.h,),
          Expanded(
            child: Container(
              child: TabBarView(
                  controller: _controller,
                  children: [
                    index == 1
                    ?StoreInnfoScreen(inndex: 1)
                    :index == 2
                    ?StoreLocationScreen(inndex: 2)
                        :StoreInnfoScreen(inndex: 1)
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
