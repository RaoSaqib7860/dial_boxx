import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../extra_charges/extra_charges_screen.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({Key? key}) : super(key: key);

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  bool selectedRadioTile = false;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(ExtraChargesScreen());
      }),
      appBar: const CustomAppBar(
        leading: BackButton(color: AppColors.primaryColor),
      ),
      body: Container(
        height: 1000.h,
        width: 1000.w,
        child: Column(
          children: [
            const HeaderContainer(
              text: "Shipping",
            ),
            SizedBox(height: 8.h),
            Card(
              elevation: 3,
              child: Container(
                height: 150.h,
                width: 320.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      title: Text('Delivery time',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 14.0),
                      child: Text('Delivery happens with',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14)),
                    ),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: InkWell(
                        onTap: () async {
                          await SheetBootom();
                        },
                        child: Container(
                          height: 30.h,
                          width: 280.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('12-24 hours'),
                                Icon(Icons.keyboard_arrow_down_rounded)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Card(
                elevation: 3,
                child: Container(
                  height: 50.h,
                  width: 320.w,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery charges',style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                          CupertinoSwitch(
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> SheetBootom() {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            child: Container(
              height: 570.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    trailing: Icon(Icons.close, color: Colors.black),
                  ),
                  const ListTile(
                    title: Text('Delivery time',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 50.h,
                      width: 320.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2,),borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        title: Text('12-24 hours'),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 50.h,
                      width: 320.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2,),borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        title: Text('12-24 hours'),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 50.h,
                      width: 320.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2,),borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        title: Text('12-24 hours'),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 50.h,
                      width: 320.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2,),borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        title: Text('12-24 hours'),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 50.h,
                      width: 320.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2,),borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        title: Text('12-24 hours'),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 50.h,
                      width: 320.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2,),borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        title: Text('12-24 hours'),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 50.h,
                      width: 320.w,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2,),borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        title: Text('12-24 hours'),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: CustomButtonClick(
                      height: 45.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.sp),
                          color: AppColors.primaryColor),
                      child: Center(
                          child: CustomText(
                        text: "Add customer time",
                        fontWeight: FontWeight.bold,
                        size: 16.sp,
                        color: AppColors.whitColor,
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
