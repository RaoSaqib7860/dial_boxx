import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';
import '../../../custom_widgets/custom_widgets.dart';
import '../../create_attributes/create_attributes.dart';
import 'all_products/all_product_screen.dart';

class ProductAttributeScreen extends StatefulWidget {
  const ProductAttributeScreen({Key? key}) : super(key: key);

  @override
  State<ProductAttributeScreen> createState() => _ProductAttributeScreenState();
}

class _ProductAttributeScreenState extends State<ProductAttributeScreen> {
  var items = [
    'Product Attribute',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Product Attribute';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.menu,color: AppColors.primaryColor,size: 22.sp,),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: CircleAvatar(
              radius: 10.sp,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.person,
                size: 20.sp,
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
                text: "Products",
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 4.h,
                width: 45.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 5.w,right: 3.w),
                    child: DropdownButton(
                      isExpanded: true,
                      //style: TextStyle(color: Colors.white,),
                      icon: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
                      underline: SizedBox(),
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,style: TextStyle(color: Colors.white,),),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                          // switch(newValue){
                          //   case 'Item 2':
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(builder: (context) => CreateAttributesScreen()),
                          //     );
                          //     break;
                          // }
                        });
                      },
                      hint:  Text(
                        "Font Family",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),),
                      BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1)),
                      BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1)),
                      BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1)),
                    ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name'
                            ),
                            Text(
                                '4 weeks ago'
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h),
                        child: Row(
                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                'No of Product: '
                            ),
                            Text(
                                '6'
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 2.5.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                    'Small',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Container(
                              height: 2.5.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  'Medium',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.w),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Icon(Icons.edit_square,size: 30,color: AppColors.primaryColor,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  height: 20.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1)),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1)),
                        BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1)),
                      ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                'Name'
                            ),
                            Text(
                                '4 weeks ago'
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                'No of Product: '
                            ),
                            Text(
                                '6'
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 2.5.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Small',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                                Container(
                                  height: 2.5.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Medium',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 2.w,),
                                Container(
                                  height: 2.5.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.w),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Icon(Icons.edit_square,size: 30,color: AppColors.primaryColor,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18.h,),
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
                      'Create Attribute',
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AllProductScreen(),));
        },
      ),
    );
  }
}
