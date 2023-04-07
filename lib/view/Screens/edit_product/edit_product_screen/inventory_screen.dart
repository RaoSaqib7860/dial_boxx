import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../custom_widgets/custom_widgets/common_widgets.dart';

class InventoryScreen extends StatefulWidget {
  final int? index;
  const InventoryScreen({this.index,Key? key}) : super(key: key);

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  TextEditingController nameController = TextEditingController();
  var items = [
    'Don\'t need to manage stock',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Don\'t need to manage stock';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              customTextField(name: 'SKU',hint: '#ABC-123',controller: nameController),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Manage Stock',
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
                      child: Text(items),
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
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          'Save Changes',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
