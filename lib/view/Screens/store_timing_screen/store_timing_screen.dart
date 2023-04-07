import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../domains_screen/domains_screen.dart';

class StoreTimingScreen extends StatefulWidget {
  const StoreTimingScreen({Key? key}) : super(key: key);

  @override
  State<StoreTimingScreen> createState() => _StoreTimingScreenState();
}

class _StoreTimingScreenState extends State<StoreTimingScreen> {
  bool _value = false;
  List<String> daysList = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];

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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                HeaderContainer(
                  text: "Store Timing",
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hours',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp,color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2.3.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Your store will be automatically switches online/offline based\non the hours your choose.'
                    ),
                  ),
                ),
                //SizedBox(height: 1.h,),
                customContainerr(daysName: 'Monday'),
                customContainerr(daysName: 'Tuesday'),
                customContainerr(daysName: 'Wednesday'),
                customContainerr(daysName: 'Thursday'),
                customContainerr(daysName: 'Friday'),
                customContainerr(daysName: 'Saturday'),
                customContainerr(daysName: 'Sunday'),
                SizedBox(height: 6.h,),
                Container(
                  height: 5.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      'Save Changes',
                      style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 4.h,)

              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DomainsScreen(),));
        },
      ),
    );
  }
  Widget customContainerr({
    String? daysName
  }){

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
      child: Container(
        height: 12.h,
        //width: 87.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black12,offset: Offset(1, 1),blurRadius: 3),
            BoxShadow(color: Colors.black12,offset: Offset(-1, -1),blurRadius: 3)
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    daysName!,
                    style: TextStyle(color: Colors.black,fontSize: 13.sp,fontWeight: FontWeight.bold),
                  ),
                  CupertinoSwitch(
                    trackColor: Colors.black.withAlpha(150),
                    value: _value,
                    onChanged: (bool value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                children: [
                  Container(
                    height: 4.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26,width: 1)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 1.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('24 hours'),
                          Icon(Icons.arrow_forward_ios,size: 10,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
