import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../../../services/colors/app_colors.dart';
import '../manage_inventory/manage_inventory.dart';

class PublishScreen extends StatefulWidget {
  final int? index;
  const PublishScreen({this.index,Key? key}) : super(key: key);

  @override
  State<PublishScreen> createState() => _PublishScreenState();
}

class _PublishScreenState extends State<PublishScreen> {
  TextEditingController productController = TextEditingController();
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
    return Scaffold(
      body: Column(
        children: [
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
          // SizedBox(height: 1.h,),
          Padding(
            padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 2.h),
            child: Container(
              height: 5.h,
              child: TextField(
                controller: productController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  hintText: 'Search Product',
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
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.h),
                child: Container(
                  height: 20.h,
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
                        height: 14.h,
                        child: Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 2.w,right: 2.w,),
                              child: Container(
                                height: 10.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.grey,width: 1)
                                ),
                                child: Center(
                                  child: Icon(Icons.image,color: AppColors.primaryColor,size: 35,),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 2.h),
                              child: Container(
                                height: 13.h,
                                width: 63.w,
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
                                          child: Text('1 Piece',style: TextStyle(fontSize: 12.sp),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(right: 4.w),
                                          child: RichText(
                                            text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:  '100Rs  ',
                                                  style: TextStyle(fontSize: 10.sp,color: Colors.black)
                                              ),
                                              TextSpan(
                                                  text:  '200Rs',
                                                  style: TextStyle(fontSize: 10.sp,decoration: TextDecoration.lineThrough,color: Colors.black)
                                              ),
                                            ]
                                          ),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(right: 2.w),
                                          child: Text('In Stoke',style: TextStyle(fontSize: 9.sp,color: Colors.green),),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 25.w),
                                          child: Icon(Icons.more_vert,size: 15,),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20.w),
                                          child: FlutterSwitch(
                                            activeColor: Colors.green,
                                            width: 10.w,
                                            height: 2.7.h,
                                            valueFontSize: 25.0,
                                            toggleSize: 16,
                                            value: _value,
                                            borderRadius: 30.0,
                                            padding: 1,
                                            showOnOff: false,
                                            onToggle: (val) {
                                              setState(() {
                                                _value = val;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 2.w),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.share,size: 20,),
                                SizedBox(width: 2.w,),
                                Text(
                                  'Share Product',
                                  style: TextStyle(fontSize: 13.sp),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },),
          ),
          // SizedBox(height: 2.h,),
          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: 6.w),
          //   child: Container(
          //     height: 20.h,
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         boxShadow: [
          //           BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1),
          //           BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1),
          //           BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, 1),blurRadius: 1),
          //           BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, -1),blurRadius: 1),
          //         ]
          //     ),
          //     child: Column(
          //       children: [
          //         Container(
          //           height: 14.h,
          //           child: Row(
          //             children: [
          //               Padding(
          //                 padding:  EdgeInsets.only(left: 2.w,right: 2.w,),
          //                 child: Container(
          //                   height: 10.h,
          //                   width: 20.w,
          //                   decoration: BoxDecoration(
          //                       color: Colors.white,
          //                       borderRadius: BorderRadius.circular(5),
          //                       border: Border.all(color: Colors.grey,width: 1)
          //                   ),
          //                   child: Center(
          //                     child: Icon(Icons.image,color: Colors.blue,size: 35,),
          //                   ),
          //                 ),
          //               ),
          //               Padding(
          //                 padding:  EdgeInsets.symmetric(vertical: 2.h),
          //                 child: Container(
          //                   height: 13.h,
          //                   width: 63.w,
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       Column(
          //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Text('Dall food',style: TextStyle(fontSize: 14.sp),),
          //                           Padding(
          //                             padding:  EdgeInsets.only(right: 4.w),
          //                             child: Text('1 Piece',style: TextStyle(fontSize: 12.sp),),
          //                           ),
          //                           Padding(
          //                             padding:  EdgeInsets.only(right: 4.w),
          //                             child: Text('100 Rs',style: TextStyle(fontSize: 12.sp),),
          //                           ),
          //                           Padding(
          //                             padding:  EdgeInsets.only(right: 2.w),
          //                             child: Text('In Stoke',style: TextStyle(fontSize: 12.sp,color: Colors.green),),
          //                           ),
          //                         ],
          //                       ),
          //                       Column(
          //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Padding(
          //                             padding:  EdgeInsets.only(left: 25.w),
          //                             child: Icon(Icons.more_vert,size: 15,),
          //                           ),
          //                           Padding(
          //                             padding:  EdgeInsets.only(left: 20.w),
          //                             child: FlutterSwitch(
          //                               activeColor: Colors.green,
          //                               width: 10.w,
          //                               height: 2.7.h,
          //                               valueFontSize: 25.0,
          //                               toggleSize: 16,
          //                               value: _value,
          //                               borderRadius: 30.0,
          //                               padding: 1,
          //                               showOnOff: false,
          //                               onToggle: (val) {
          //                                 setState(() {
          //                                   _value = val;
          //                                 });
          //                               },
          //                             ),
          //                           ),
          //                         ],
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding:  EdgeInsets.symmetric(horizontal: 2.w),
          //           child: Divider(
          //             color: Colors.grey,
          //             thickness: 1,
          //           ),
          //         ),
          //         Expanded(
          //           child: Container(
          //             child: Center(
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Icon(Icons.share,size: 20,),
          //                   SizedBox(width: 2.w,),
          //                   Text(
          //                     'Share Product',
          //                     style: TextStyle(fontSize: 13.sp),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: Container(
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Add New Product',
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManageInventoryScreen(),));
        },
      ),
    );
  }
}
