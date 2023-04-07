import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 5.w,right: 5.w,top: 1.2.h),
                child: Container(
                  height: 5.h,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      hintText: 'Search Invoice',
                      labelText: 'Search Invoice',
                      labelStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                      hintStyle: TextStyle(fontSize: 12.sp),
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
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
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: Container(
                    height: 45.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 2.w,top: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Invoice Details',
                                style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.close,size: 25,color: Colors.black,)),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 4.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Package:',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Date:',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Platform Fee:',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'GST(18%):',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Expiry Date:',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Package Term:',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Payment Option:',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Discount:',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Payment Status:',
                                    style: TextStyle(fontSize: 13.sp),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 12.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Corporate Website',
                                    style: TextStyle(fontSize: 13.sp,),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    '12 Oct 2023',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Rs. 9800',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Rs. 1200',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    '12 Oct 2023',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Yearly',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Cash Collection',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    '50%(Referral code)',
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text(
                                    'Paid',
                                    style: TextStyle(fontSize: 13.sp),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Divider(thickness: 1,color: Colors.grey,),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,right: 2.w,),
                          child: Row(

                            children: [
                              Text(
                                'Total Paid:',
                                style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: 25.w),
                                child: Text(
                                  'Rs. 12000',
                                  style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                              ),
                              child: Center(
                                child: Icon(Icons.forward_10_sharp,color: Colors.white,size: 30,),
                              ),
                            ))
                      ],
                    ),
                  ),
                );
              },
          );
        },
      ),
    );
  }
}
