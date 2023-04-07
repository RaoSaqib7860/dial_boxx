import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../services/colors/app_colors.dart';

class FaviconScreen extends StatefulWidget {
  final int? index;
  const FaviconScreen({this.index,Key? key}) : super(key: key);

  @override
  State<FaviconScreen> createState() => _FaviconScreenState();
}

class _FaviconScreenState extends State<FaviconScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 22.h,
              width: 90.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black26),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 15.h,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                    ),
                  ),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.image,color: AppColors.primaryColor,size: 26.sp,),
                        SizedBox(width: 2.w,),
                        GestureDetector(
                          // onTap: () {
                          //   showDialog(
                          //     context: context,
                          //     builder: (context) => AlertDialog(
                          //       contentPadding: EdgeInsets.zero,
                          //       content: Container(
                          //         height: height * 0.28,
                          //         width: width * 0.26,
                          //         color: Colors.white,
                          //         child: Column(
                          //           // mainAxisAlignment:
                          //           //     MainAxisAlignment.start,
                          //           children: [
                          //             Container(
                          //               width: width,
                          //               height: height * 0.06,
                          //               color: Colors.black,
                          //               child: Column(
                          //                 mainAxisAlignment:
                          //                 MainAxisAlignment.center,
                          //                 crossAxisAlignment:
                          //                 CrossAxisAlignment.center,
                          //                 children: [
                          //                   Center(
                          //                     child: Text(
                          //                       'Add Photo!'.tr,
                          //                       style: TextStyle(
                          //                           color: Theme.of(context).brightness == Brightness.light ? AppColors.whiteColor: AppColors.whiteColor,
                          //                           fontSize: width * 0.05),
                          //                       textAlign: TextAlign.center,
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //             ),
                          //             SizedBox(
                          //               height: height * 0.040,
                          //             ),
                          //             Row(
                          //               children: [
                          //                 SizedBox(width: width * 0.040),
                          //                 GestureDetector(
                          //                     onTap: () {
                          //                       // capturFromCamera();
                          //                       getImage();
                          //                       Navigator.of(context).pop();
                          //                     },
                          //                     child: Text(
                          //                       'Take Photo'.tr,
                          //                       style: TextStyle(
                          //                           color: Theme.of(context).brightness == Brightness.light ? AppColors.blackColor:AppColors.blackColor,
                          //                           fontSize: width * 0.047),
                          //                     )),
                          //               ],
                          //             ),
                          //             SizedBox(
                          //               height: height * 0.030,
                          //             ),
                          //             Row(
                          //               children: [
                          //                 SizedBox(width: width * 0.040),
                          //                 GestureDetector(
                          //                   child: Text(
                          //                     'Chose from Library'.tr,
                          //                     style: TextStyle(
                          //                         color: Theme.of(context).brightness == Brightness.light ? AppColors.blackColor:AppColors.blackColor,
                          //                         fontSize: width * 0.047),
                          //                   ),
                          //                   onTap: () {
                          //                     Navigator.of(context).pop();
                          //                     showModalBottomSheet(
                          //                         shape: RoundedRectangleBorder(
                          //                             borderRadius:
                          //                             BorderRadius.only(
                          //                               topLeft: Radius.circular(10),
                          //                               topRight: Radius.circular(10),
                          //                             )),
                          //                         context: context,
                          //                         builder:
                          //                             (BuildContext context) {
                          //                           return Container(
                          //                             height: height * 0.28,
                          //                             width: width,
                          //                             child: Column(
                          //                               children: [
                          //                                 Column(
                          //                                   children: [
                          //                                     SizedBox(
                          //                                       height: height *
                          //                                           0.060,
                          //                                     ),
                          //                                     Text(
                          //                                       'Select Picture'.tr,
                          //                                       style: TextStyle(
                          //                                           color: Theme.of(context).brightness == Brightness.light ? AppColors.blackColor:AppColors.whiteColor,
                          //                                           fontSize:
                          //                                           width *
                          //                                               0.07,
                          //                                           fontWeight:
                          //                                           FontWeight
                          //                                               .bold),
                          //                                     ),
                          //                                   ],
                          //                                 ),
                          //                                 SizedBox(
                          //                                   height:
                          //                                   height * 0.060,
                          //                                 ),
                          //                                 Row(
                          //                                   children: [
                          //                                     SizedBox(
                          //                                       width:
                          //                                       width * 0.050,
                          //                                     ),
                          //                                     GestureDetector(
                          //                                         onTap: () {
                          //                                           getImageGalary();
                          //                                           Navigator.of(
                          //                                               context)
                          //                                               .pop();
                          //                                         },
                          //                                         child: Icon(
                          //                                           Icons
                          //                                               .photo_library,
                          //                                           size: width *
                          //                                               0.11,
                          //                                         )),
                          //                                     Row(
                          //                                       children: [
                          //                                         SizedBox(
                          //                                           width: width *
                          //                                               0.12,
                          //                                         ),
                          //                                         GestureDetector(
                          //                                           onTap: () {
                          //                                             getImageGalary();
                          //                                             Navigator.of(
                          //                                                 context)
                          //                                                 .pop();
                          //                                           },
                          //                                           child: Icon(
                          //                                             Icons.image,
                          //                                             size: width *
                          //                                                 0.11,
                          //                                           ),
                          //                                         ),
                          //                                       ],
                          //                                     )
                          //                                   ],
                          //                                 ),
                          //                                 SizedBox(
                          //                                   height:
                          //                                   height * 0.020,
                          //                                 ),
                          //                                 Row(
                          //                                   children: [
                          //                                     SizedBox(
                          //                                       width:
                          //                                       width * 0.040,
                          //                                     ),
                          //                                     Text(
                          //                                       'Albums'.tr,
                          //                                       style: TextStyle(
                          //                                           fontSize:
                          //                                           width *
                          //                                               0.04),
                          //                                     ),
                          //                                     Row(
                          //                                       children: [
                          //                                         SizedBox(
                          //                                           width: width *
                          //                                               0.12,
                          //                                         ),
                          //                                         Text(
                          //                                           'Photos'.tr,
                          //                                           style: TextStyle(
                          //                                               fontSize:
                          //                                               width *
                          //                                                   0.04),
                          //                                         )
                          //                                       ],
                          //                                     )
                          //                                   ],
                          //                                 ),
                          //                               ],
                          //                             ),
                          //                           );
                          //                         });
                          //                   },
                          //                 ),
                          //               ],
                          //             ),
                          //             SizedBox(
                          //               height: height * 0.040,
                          //             ),
                          //             Row(
                          //               children: [
                          //                 SizedBox(width: width * 0.040),
                          //                 GestureDetector(
                          //                     onTap: () {
                          //                       Navigator.pop(context);
                          //                     },
                          //                     child: Text(
                          //                       'Cancel',
                          //                       style: TextStyle(
                          //                           color: Theme.of(context).brightness == Brightness.light ? Colors.black:Colors.white,
                          //                           fontSize: 18.sp),
                          //                     )),
                          //               ],
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //   );
                          // },
                          child: Container(
                            height: 3.4.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text(
                                'Upload Image',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Container(
              height: 6.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Update',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
