import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../services/colors/app_colors.dart';
import '../../../custom_widgets/custom_widgets.dart';

class OfferAddScreen extends StatefulWidget {
  const OfferAddScreen({Key? key}) : super(key: key);

  @override
  State<OfferAddScreen> createState() => _OfferAddScreenState();
}

class _OfferAddScreenState extends State<OfferAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const BackButton(color: AppColors.primaryColor),
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
      body: Container(
        width: 1000.w,
        height: 1000.h,
        child: Stack(
          children: [
            Column(
              children: [
                const HeaderContainer(
                  text: "Manage Website",
                ),
                const ListTile(
                  title: Text('Offer and Ads', style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  )),
                ),

                Expanded(child: ListView.builder(itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 8),
                  child: Container(
                    height: 230.h,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(' /brand/nishat/109'),
                              Text('4 weeks ago'),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(thickness: 2),
                        ),
                        const Icon(CupertinoIcons.delete,color: Colors.red,),
                      ],
                    ),
                  ),
                ),))

              ],
            ),
            Positioned(
              // top: 0,
                right: 40,
              //  left: 0,
              bottom: 8,
              child: CustomButtonClick(
                height: 45.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(6.sp)),
                child: Center(
                  child: CustomText(
                    text: "Create New",
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
    );
  }
}
