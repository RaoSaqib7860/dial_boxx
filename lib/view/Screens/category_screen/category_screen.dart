import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets/common_widgets.dart';
import '../create_attributes/create_attributes.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
                text: "Category",
              ),
              SizedBox(height: 2.h,),
              customTextField(name: 'Category Name*',hint: 'Lamp',controller: nameController),
              customDropDown(name: 'Parent Category*'),
              customDropDown(name: 'Featured'),
              customDropDown(name: 'Assign to Menu'),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Thumnail'
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 4.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.black12),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(3),
                      child: ToggleSwitch(
                       // minWidth: 25.w,
                        customWidths: [20.w, 30.w],
                        minHeight: 2.h,
                        fontSize: 9.sp,
                        initialLabelIndex: 0,
                        activeBgColor: [Colors.grey.withAlpha(150)],
                        inactiveBgColor: Colors.white,
                        cornerRadius: 0,
                        activeFgColor: Colors.black,
                        //inactiveFgColor: Colors.grey[900],
                        totalSwitches: 2,
                        labels: ['Choose File', 'No file selected',],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
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
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAttributesScreen(),));
        },
      ),
    );
  }

  Widget customDropDown({
    String? name
}){
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 4.w,right: 4.w),
          child: Row(
            children: [
              Text(
                name!,
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
            hint: const Text(
              "Font Family",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 1.h,),
      ],
    );
  }

}
