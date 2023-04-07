import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../shipping/shipping_screen.dart';

class PreferenceScreen extends StatefulWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  State<PreferenceScreen> createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  bool index = false;
  bool value = false;
  int? selectedRadioTile;

  @override
  void initState() {
    super.initState();
    int selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(ShippingScreen());
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
              text: "Preference",
            ),
            SizedBox(height: 8.h),
            Card(
              elevation: 3,
              child: Container(
                height: 170.h,
                width: 320.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      title: Text('Orders',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 14.0),
                      child: Text('Auto-accept orders',
                          style: TextStyle(fontSize: 14)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 14.0, top: 8),
                      child: Text('Accept all your new orders automatically',
                          style: TextStyle(fontSize: 14)),
                    ),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: InkWell(
                        onTap: () async{
                         await SheetBootom();
                        },
                        child: Container(
                          height: 30.h,
                          width: 280.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Never'),
                                Icon(Icons.keyboard_arrow_down_rounded)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
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
              height: 300.h,
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
                  Padding(
                    padding: EdgeInsets.only(left: 14.0),
                    child: Text('Auto Accept Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: selectedRadioTile,
                        activeColor: Colors.green,
                        onChanged: (val) {
                          print("Radio $val");
                          //selectedRadioTile!;
                        },
                      ),
                      Text('COD orders only')
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: selectedRadioTile,
                        activeColor: Colors.green,
                        onChanged: (val) {
                          print("Radio $val");
                          //selectedRadioTile!;
                        },
                      ),
                      Text('Prepaid orders only')
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 44.0),
                    child: Text('Activate online payments',
                        style: TextStyle(
                          color: Colors.red,
                          textBaseline: TextBaseline.alphabetic,
                        )),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: selectedRadioTile,
                        activeColor: Colors.green,
                        onChanged: (val) {
                          print("Radio $val");
                          //selectedRadioTile!;
                        },
                      ),
                      Text('Never'),
                    ],
                  ),
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
                            text: "Save Changes",
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
