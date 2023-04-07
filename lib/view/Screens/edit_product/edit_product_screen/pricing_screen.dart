import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';
import '../../../custom_widgets/custom_widgets/common_widgets.dart';

class PricingScreen extends StatefulWidget {
  final int? index;
  const PricingScreen({this.index,Key? key}) : super(key: key);

  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  TextEditingController priceController = TextEditingController();
  TextEditingController regPriceController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController sDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  bool _value = false;
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              customTextField(name: 'Current Price',hint: '3500',controller: priceController),
              customTextField(name: 'Regular Price',hint: '4000',controller: regPriceController),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Discount Type',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: DropdownButton(
                  isExpanded: true,
                  value: dropdownvalue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: TextStyle(color: Colors.black54),),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  hint:  Text(
                    "Font Family",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              customTextField(name: 'Discounted Price',hint: '500',controller: discountController),
              customTextField(name: 'Special Price Start',hint: 'Date',controller: sDateController),
              customTextField(name: 'Special Price End',hint: 'Date',controller: endDateController),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 3.5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Save Changes',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w,),
                    Container(
                      height: 3.5.h,
                      width: 17.w,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //SizedBox(height: 4.h,)
            ],
          ),
        ),
      ),
    );
  }
}
