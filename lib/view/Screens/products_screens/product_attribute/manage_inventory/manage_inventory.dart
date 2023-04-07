import 'package:dialbox_seller/view/Screens/products_screens/product_attribute/manage_inventory/stock_out.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../all_products/publish_screen.dart';
import '../product_category/product_category.dart';
import 'in_stock.dart';

class ManageInventoryScreen extends StatefulWidget {
  const ManageInventoryScreen({Key? key}) : super(key: key);

  @override
  State<ManageInventoryScreen> createState() => _ManageInventoryScreenState();
}

class _ManageInventoryScreenState extends State<ManageInventoryScreen> with TickerProviderStateMixin {
  late TabController _controller;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
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
                //color: Colors.white,
                child: TabBar(
                  isScrollable: true,
                  indicatorWeight: 0.000001.h,
                  controller: _controller,
                  labelPadding: EdgeInsets.only(right: 3.w,),
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
                        width: 17.w,
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
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: index == 2 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black,width: 1)
                        ),
                        child: Center(
                          child: Text(
                            'In Stock(11)',
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
                            'Stock Out(0)',
                            style: TextStyle(color: index == 3 ? Colors.white : Colors.black,fontSize: 10.sp),
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
                      InStockScreen(index: 2,)
                          :
                      index == 3
                          ?
                      StockOutScreen(index: 3,)
                          :
                      PublishScreen(index: 1,)
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductCategoryScreen(),));
          },
        ),
      ),
    );
  }
}
