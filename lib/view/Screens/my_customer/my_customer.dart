
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../my_customers/my_customers.dart';
import 'customers_screens/all_customer.dart';
import 'customers_screens/imported_customer.dart';
import 'customers_screens/new_customer.dart';
import 'customers_screens/returning_customer.dart';

class MyCustomerScreen extends StatefulWidget {
  const MyCustomerScreen({Key? key}) : super(key: key);

  @override
  State<MyCustomerScreen> createState() => _MyCustomerScreenState();
}

class _MyCustomerScreenState extends State<MyCustomerScreen> with TickerProviderStateMixin {
  var items = [
    'Lifetime',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Lifetime';
  TextEditingController searchController = TextEditingController();
  late TabController _controller;
  int index = 0;

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
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 5.w,right: 6.w,top: 1.2.h),
                    child: Container(
                      height: 4.h,
                      width: 60.w,
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                          hintText: 'Search Customer',
                          labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                          hintStyle: TextStyle(fontSize: 12.sp),
                          prefixIcon: Icon(Icons.search,color: Colors.grey,size: 3.h,),
                          contentPadding: EdgeInsets.only(top: 0.5.h),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 1.w,),
                  Container(
                    height: 4.h,
                    width: 28.w,
                   child: Padding(
                     padding:  EdgeInsets.only(right: 8.w,top: 1.h),
                     child: DropdownButton(
                       isExpanded: true,
                       value: dropdownvalue,
                       underline: SizedBox(),
                       items: items.map((String items) {
                         return DropdownMenuItem(
                           value: items,
                           child: Text(items,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 11.sp)),
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
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 3.w),
            child: Container(
              height: 8.h,
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
                          ?AllCustomerScreen(index: 1,):
                      index == 2
                          ?NewCustomerScreen(index: 2,):
                      index == 3
                          ?ReturningCustomerScreen(index: 3,):
                      index == 4
                          ?ImportedCustomerScreen(index: 4,):
                      AllCustomerScreen(index: 1,)
                    ],
                  ),
                ),
              )),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.w),
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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyCustomersScreen(),));
        },
      ),
    );
  }
}
