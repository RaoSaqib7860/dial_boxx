import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../category_screen/category_screen.dart';
import 'edit_product_screen/checkout_screen.dart';
import 'edit_product_screen/files_screen.dart';
import 'edit_product_screen/image_screen.dart';
import 'edit_product_screen/inventory_screen.dart';
import 'edit_product_screen/option_screen.dart';
import 'edit_product_screen/pricing_screen.dart';
import 'edit_product_screen/product_screen.dart';
import 'edit_product_screen/seo_screen.dart';
import 'edit_product_screen/variants_screen.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> with TickerProviderStateMixin {
  late TabController _controller;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 9, vsync: this);
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
            text: "Edit Product",
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
                          'Product',
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
                          'Pricing',
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
                          'Image',
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
                          'Option',
                          style: TextStyle(color: index == 4?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 5;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 5 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'Variants',
                          style: TextStyle(color: index == 5?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 6;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 6 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'Inventory',
                          style: TextStyle(color: index == 6?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 7;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 7 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'Files',
                          style: TextStyle(color: index == 7?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 8;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: index == 8 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'SEO',
                          style: TextStyle(color: index == 8?Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 9;
                      });
                    },
                    child: Container(
                      height: 3.3.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                          color: index == 9 ? AppColors.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black,width: 1)
                      ),
                      child: Center(
                        child: Text(
                          'Express Checkout',
                          style: TextStyle(color: index == 9?Colors.white : Colors.black,fontSize: 10.sp),
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
                      ?ProductScreen(index: 1,):
                      index == 2
                      ?PricingScreen(index: 2,):
                      index == 3
                      ?ImageScreen(index: 3,):
                      index == 4
                      ?OptionScreen(index: 4,):
                      index == 5
                      ?VariantScreen(index: 5,):
                      index == 6
                      ?InventoryScreen(index: 6,):
                      index == 7
                      ?FilesScreen(index: 7,):
                      index == 8
                      ?SEOScreen(index: 8,):
                      index == 9
                      ?CheckoutScreen(index: 9,):
                      ProductScreen(index: 1,)
                    ],
                  ),
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryScreen(),));
        },
      ),
    );
  }
}
