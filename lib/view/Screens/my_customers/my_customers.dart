import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../tutorials_screen/tutorials_screen.dart';
import 'my_customer_screen/all_screen.dart';
import 'my_customer_screen/imprted_screen.dart';
import 'my_customer_screen/new_screen.dart';
import 'my_customer_screen/returning_screen.dart';
import 'my_customer_screen/texttfield.dart';

class MyCustomersScreen extends StatefulWidget {
  const MyCustomersScreen({Key? key}) : super(key: key);

  @override
  State<MyCustomersScreen> createState() => _MyCustomersScreenState();
}

class _MyCustomersScreenState extends State<MyCustomersScreen> with TickerProviderStateMixin {
  TextEditingController productController = TextEditingController();
  late TabController _controller;
  int index = 0;
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }


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
      body: Column(
        children: [
          HeaderContainer(
            text: "My Customers",
          ),
          Container(
            height: 5.h,
            child: Center(
              child: Padding(
                padding:  EdgeInsets.only(left: 5.w,right: 6.w,top: 1.2.h),
                child: Container(
                  height: 4.h,
                  width: 90.w,
                  child: TextField(
                    controller: productController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      hintText: 'Search Products',
                      labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                      hintStyle: TextStyle(fontSize: 12.sp),
                      prefixIcon: Icon(Icons.search,color: Colors.grey,size: 3.h,),
                      contentPadding: EdgeInsets.only(top: 0.5.h),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 3.w),
            child: Container(
              height: 8.h,
              //color: Colors.white,
              child: TabBar(
                isScrollable: true,
                indicatorWeight: 0.000001.h,
                controller: _controller,
                labelPadding: EdgeInsets.only(left: 5.w),
                tabs: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 1 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          style: TextStyle(color: index == 1?Colors.white : Colors.black),
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
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 2 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'New',
                          style: TextStyle(color: index == 2?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 3 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'Returning',
                          style: TextStyle(color: index == 3?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 4;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 4 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'Imported',
                          style: TextStyle(color: index == 4?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                child: Container(
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      index == 1
                          ?AllCustomers(index: 1,):
                      index == 2
                          ?NewCustomers(index: 2,):
                      index == 3
                          ?ReturningCustomers(index: 3,):
                      index == 4
                          ?ImportedCustomers(index: 4,):
                      AllCustomers(index: 1,)
                    ],
                  ),
                ),
              )),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.w),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
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
                          height: 42.h,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add Customers',
                                  style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 2.h,),
                                texttFieldWidget(name: 'Name*',hint: 'Ahmad*'),
                                Text(
                                  'Mobile number*',
                                  style: TextStyle(fontSize: 12.sp,),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right: 3.w),
                                  child: Container(
                                    height: 3.9.h,
                                    child: DropdownButton(
                                      isExpanded: true,
                                      value: dropdownvalue,
                                     // underline: Divider(thickness: 1,color: Colors.grey,),
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
                                ),
                                SizedBox(height: 1.h,),
                                texttFieldWidget(name: 'Email(Optional)',hint: 'abc@gmail.com'),

                                Text(
                                  'Import your contact',
                                  style: TextStyle(color: Colors.blue,fontSize: 11.sp,decoration: TextDecoration.underline,),

                                ),
                                SizedBox(height: 4.h,),
                                Center(
                                  child: Container(
                                    height: 5.h,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Add Customers',
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Add Customer',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TutorialsScreen(),));
        },
      ),
    );
  }
}
