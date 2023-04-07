import 'package:dialbox_seller/view/Screens/products_screens/product_attribute/all_products/trash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../manage_inventory/manage_inventory.dart';
import '../manage_inventory/publish_screen.dart';
import 'draft_screen.dart';
import 'incomplete_screen.dart';

class AllProductScreen extends StatefulWidget {
  const AllProductScreen({Key? key}) : super(key: key);

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> with TickerProviderStateMixin {
  late TabController _controller;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(right: 3.w),
              child: Container(
                height: 8.h,
                child: TabBar(
                  isScrollable: true,
                  indicatorWeight: 0.000001.h,
                  controller: _controller,
                  labelPadding: EdgeInsets.only(right: 4.w,),
                  padding: EdgeInsets.only(left: 6.w),
                  tabs: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Container(
                        height: 3.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                            color: index == 1 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black,width: 1)
                        ),
                        child: Center(
                          child: Text(
                            'Publish(1)',
                            style: TextStyle(color: index == 1 ? Colors.white : Colors.black,fontSize: 10.sp),
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
                        height: 3.h,
                        width: 17.w,
                        decoration: BoxDecoration(
                            color: index == 2 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black,width: 1)
                        ),
                        child: Center(
                          child: Text(
                            'Draft',
                            style: TextStyle(color:  index == 2 ? Colors.white : Colors.black,fontSize: 10.sp,),
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
                        height: 3.h,
                        width: 21.w,
                        decoration: BoxDecoration(
                            color: index == 3 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black,width: 1)
                        ),
                        child: Center(
                          child: Text(
                            'Incomplete (1)',
                            style: TextStyle(color: index == 3 ? Colors.white : Colors.black,fontSize: 10.sp),
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
                        height: 3.h,
                        width: 17.w,
                        decoration: BoxDecoration(
                            color: index == 4 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.red,width: 1)
                        ),
                        child: Center(
                          child: Text(
                            'Trash (1)',
                            style: TextStyle(color: index == 4 ? Colors.white : Colors.black,fontSize: 10.sp),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                  height: 20.h,
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      index == 1
                          ?
                      PublishScreen(index: 1,)
                          :
                      index == 2
                          ?
                      DraftScreen(index: 2,)
                          :
                      index == 3
                          ?
                      IncompleteScreen(index: 3,)
                          :
                      index == 4
                          ?
                      TrashScreen(index: 4,)
                          :
                      PublishScreen(index: 1,)
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManageInventoryScreen(),));
          },
        ),
      ),
    );
  }
}
