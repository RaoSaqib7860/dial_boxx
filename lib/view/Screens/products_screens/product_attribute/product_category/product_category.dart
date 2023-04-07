import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../services/colors/app_colors.dart';
import '../../../setup_delivery/setup_delivery.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({Key? key}) : super(key: key);

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {
  TextEditingController productController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  bool _value = false;
  var items = [
    'Select Action',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Select Action';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 2.h),
                child: Container(
                  height: 5.h,
                  child: TextField(
                    controller: productController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      hintText: 'Search Categories',
                      // labelText: 'Search Product',
                      labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                      hintStyle: TextStyle(fontSize: 12.sp),
                      prefixIcon: Icon(Icons.search,color: Colors.grey,size: 23,),
                      contentPadding: EdgeInsets.only(top: 0.5.h),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 6.w),
                    child: Container(
                      height: 4.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1)
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 3.h,
                            width: 25.w,
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.only(left: 2.w,right: 1.w),
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  value: dropdownvalue,
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items,style: TextStyle(fontSize: 8.sp),),
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
                          ),
                          Expanded(child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,

                            ),
                            child: Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(fontSize: 9.sp,color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
             Expanded(
                 child: ListView.builder(
                   itemCount: 2,
                   itemBuilder: (context, index) {
               return Padding(
                 padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 2.h,bottom: 1.h),
                 child: Container(
                   height: 14.h,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1),
                         BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1),
                         BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1),blurRadius: 1),
                         BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1),blurRadius: 1),
                       ]
                   ),
                   child: Column(
                     children: [
                       Container(
                         height: 10.h,
                         child: Row(
                           children: [
                             Padding(
                               padding:  EdgeInsets.only(left: 2.w,right: 2.w,),
                               child: Container(
                                 height: 6.h,
                                 width: 13.w,
                                 decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(5),
                                     border: Border.all(color: Colors.grey,width: 1)
                                 ),
                                 child: Center(
                                   child: Icon(Icons.image,color: AppColors.primaryColor,size: 20,),
                                 ),
                               ),
                             ),
                             Padding(
                               padding:  EdgeInsets.symmetric(vertical: 2.h),
                               child: Container(
                                 height: 5.h,
                                 width: 67.w,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Column(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('Dall food',style: TextStyle(fontSize: 14.sp),),
                                         Padding(
                                           padding:  EdgeInsets.only(right: 4.w),
                                           child: Text('#DR-111',style: TextStyle(fontSize: 8.sp),),
                                         ),
                                       ],
                                     ),
                                     Padding(
                                       padding:  EdgeInsets.only(bottom: 2.h,left: 2.w),
                                       child: Text('4 weeks ago'),
                                     ),

                                   ],
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                       Padding(
                         padding:  EdgeInsets.symmetric(horizontal: 3.w),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               children: [
                                 Text(
                                     '/category/planters/105'
                                 ),

                               ],
                             ),
                             Icon(Icons.edit_square,color: AppColors.primaryColor,size: 20,),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               );
             },)),
              SizedBox(height: 5.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Create Category',
                      style: TextStyle(fontSize: 15.sp,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.h,)
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetupDeliveryScreen(),));
            },
          ),
        )
    );
  }
  // Widget customContainer(){
  //   return Column(
  //     children: [
  //       SizedBox(height: 2.h,),
  //       Padding(
  //         padding:  EdgeInsets.symmetric(horizontal: 6.w),
  //         child: Container(
  //           height: 14.h,
  //           decoration: BoxDecoration(
  //               color: Colors.white,
  //               boxShadow: [
  //                 BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1),
  //                 BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1),
  //                 BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1),blurRadius: 1),
  //                 BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1),blurRadius: 1),
  //               ]
  //           ),
  //           child: Column(
  //             children: [
  //               Container(
  //                 height: 10.h,
  //                 child: Row(
  //                   children: [
  //                     Padding(
  //                       padding:  EdgeInsets.only(left: 2.w,right: 2.w,),
  //                       child: Container(
  //                         height: 6.h,
  //                         width: 13.w,
  //                         decoration: BoxDecoration(
  //                             color: Colors.white,
  //                             borderRadius: BorderRadius.circular(5),
  //                             border: Border.all(color: Colors.grey,width: 1)
  //                         ),
  //                         child: Center(
  //                           child: Icon(Icons.image,color: Colors.blue,size: 20,),
  //                         ),
  //                       ),
  //                     ),
  //                     Padding(
  //                       padding:  EdgeInsets.symmetric(vertical: 2.h),
  //                       child: Container(
  //                         height: 5.h,
  //                         width: 67.w,
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Column(
  //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                               children: [
  //                                 Text('Dall food',style: TextStyle(fontSize: 14.sp),),
  //                                 Padding(
  //                                   padding:  EdgeInsets.only(right: 4.w),
  //                                   child: Text('#DR-111',style: TextStyle(fontSize: 11.sp),),
  //                                 ),
  //                               ],
  //                             ),
  //                             Padding(
  //                               padding:  EdgeInsets.only(bottom: 2.h,left: 2.w),
  //                               child: Text('4 weeks ago'),
  //                             ),
  //
  //                           ],
  //                         ),
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //               Padding(
  //                 padding:  EdgeInsets.symmetric(horizontal: 3.w),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Column(
  //                       children: [
  //                         Text(
  //                             '/category/planters/105'
  //                         ),
  //
  //                       ],
  //                     ),
  //                     Icon(Icons.edit_square,color: Colors.blue,size: 20,),
  //                   ],
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
