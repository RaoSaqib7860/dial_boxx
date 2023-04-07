import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets/common_widgets.dart';
import '../products_screens/product_attribute/product_attribute.dart';

class CreateAttributesScreen extends StatefulWidget {
  const CreateAttributesScreen({Key? key}) : super(key: key);

  @override
  State<CreateAttributesScreen> createState() => _CreateAttributesScreenState();
}

class _CreateAttributesScreenState extends State<CreateAttributesScreen> {
  TextEditingController nameController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderContainer(
                text: "Create Attribute",
              ),
              SizedBox(height: 2.h,),
              customTextField(name: 'Title',hint: 'Lamp',controller: nameController),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Featured',
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

              SizedBox(height: 40.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.sp),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductAttributeScreen(),));
        },
      ),
    );
  }
}
