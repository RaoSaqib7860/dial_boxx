import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';

class ExtraChargesScreen extends StatefulWidget {
  const ExtraChargesScreen({Key? key}) : super(key: key);

  @override
  State<ExtraChargesScreen> createState() => _ExtraChargesScreenState();
}

class _ExtraChargesScreenState extends State<ExtraChargesScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        leading: BackButton(color: AppColors.primaryColor),
      ),
      body: Container(
        height: 1000.h,
        width: 1000.w,
        child: Column(
          children: [
            const HeaderContainer(
              text: "Extra Charges",
            ),
            SizedBox(
              height: 12.h,
            ),
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
                          const Text('GST',
                              style: TextStyle(
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
            ),
            SizedBox(height: 14.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Container(
                height: 50.h,
                width: 260.w,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text('Create extra charges'),
                )
              ),
            ),
            SizedBox(height: 400.h),
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
    );
  }

  Future<dynamic> SheetBootom() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            child: Container(
              height: 570.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    trailing: Icon(Icons.close, color: Colors.black),
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
