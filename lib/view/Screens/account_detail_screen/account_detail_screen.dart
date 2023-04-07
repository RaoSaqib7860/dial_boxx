import 'package:dialbox_seller/view/Screens/account_detail_screen/store_setting/store_setting.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../../custom_widgets/custom_widgets/custom_widgets.dart';
import '../logo_screen/logo_screen.dart';
import 'invoice_screen/invoice_screen.dart';

class AccountDetailScreen extends StatefulWidget {
  const AccountDetailScreen({Key? key}) : super(key: key);

  @override
  State<AccountDetailScreen> createState() => _AccountDetailScreenState();
}
enum SingingCharacter { lafayette, jefferson }
class _AccountDetailScreenState extends State<AccountDetailScreen> with TickerProviderStateMixin  {
  //AccountDetailModel model = AccountDetailModel();
  int index = 0;
  bool hasCode = true;
  String _value = 'Green';
  int selectIndex = 0;
  // List list = [
  //   AccountDetailModel(text1: 'Corporate Website',desc: 'For business requiring an informational \nwebsite',price: 'Rs. 1000',monthPrice: 'Rs. 500/month',billedPrice: '6000'),
  //   AccountDetailModel(text1: 'E-commerce website',desc: 'For business to all product online',price: 'Rs. 2000',monthPrice: 'Rs. 1000/month',billedPrice: '12,000'),
  //   AccountDetailModel(text1: 'E-commerce PLUS',desc: 'For business requiring an informational \nwebsite',price: 'Rs. 3300',monthPrice: 'Rs. 1666/month',billedPrice: '50,000'),
  // ];
   late TabController controller;
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.menu,color: Colors.black38,size: 22.sp,),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 15.w),
        //     child: CircleAvatar(
        //       radius: 15.sp,
        //       backgroundColor: AppColors.primaryColor,
        //       child: Icon(
        //         Icons.person,
        //         size: 22.sp,
        //         color: AppColors.whitColor,
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: Column(
        children: [
          Container(
            height: 13.h,
            color: AppColors.primaryColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h),
                    child: Text(
                        'Account Details',
                    style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ),
                  TabBar(
                    controller: controller,
                    tabs: [
                      Text('Store Setting',style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                      Text('Subscriptions',style: TextStyle(color: Colors.white,fontSize: 12.5.sp),),
                      Text('Invoice',style: TextStyle(color: Colors.white,fontSize: 13.sp),)
                    ],
                    indicatorColor: Colors.white,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 1.6.h),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: controller,
                children: [
                  StoreSettingScreen(),
                  //Container(child: Center(child: Text('Store Details Empty'),),),
                  ListView(
                    children: [
                      Center(child: Text(
                          'Select a plan according to our business \nneeds fo as low as RS.500 per month',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),
                      )),
                      SizedBox(height: 2.h,),
                      Center(child: Text(
                        'Yearly Packages',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),
                      )),

                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),

                            ),
                              isScrollControlled: true,

                              context: context,
                              builder: (context) {
                                return SingleChildScrollView(
                                  child: Container(
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 3.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  'Purchase Corporate Website',
                                              style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                              ),
                                              GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Icon(Icons.close,color: Colors.black,))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Dialboxx Platform fee ',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                              Text(
                                                'Rs 5000 ',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'GST(18%)',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                              Text(
                                                'Rs 1240 ',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                          child: Divider(
                                            height: 2.h,
                                            thickness: 3,
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Corporates(Yearly)',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                              Text(
                                                'Rs 6000 ',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Discount(10%)',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                              Text(
                                                'Rs 300 ',
                                                style: TextStyle(fontSize: 13.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                          child: Divider(
                                            height: 2.h,
                                            thickness: 3,
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Total Amount',
                                                style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                'Rs 9000 ',
                                                style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
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
                                                          height: 45.h,
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 3.h),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Purchase Corporate Website',
                                                                      style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                                                    ),
                                                                    GestureDetector(
                                                                        onTap: () {
                                                                          Navigator.pop(context);
                                                                        },
                                                                        child: Icon(Icons.close,color: Colors.black,))
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Dialboxx Platform fee ',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                    Text(
                                                                      'Rs 5000 ',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'GST(18%)',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                    Text(
                                                                      'Rs 1240 ',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                                                child: Divider(
                                                                  height: 2.h,
                                                                  thickness: 3,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Corporates(Yearly)',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                    Text(
                                                                      'Rs 6000 ',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Discount(10%)',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                    Text(
                                                                      'Rs 300 ',
                                                                      style: TextStyle(fontSize: 13.sp),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                                                child: Divider(
                                                                  height: 2.h,
                                                                  thickness: 3,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Total Amount',
                                                                      style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                                                    ),
                                                                    Text(
                                                                      'Rs 9000 ',
                                                                      style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 2.h),
                                                                child: Row(
                                                                  children: [
                                                                    Text(
                                                                      'Enter refer code',
                                                                      style: TextStyle(color: Colors.black,fontSize: 12.sp),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 2.h,),
                                                              Container(
                                                                height: 4.h,
                                                                width: 90.w,
                                                                child: TextField(
                                                                  textAlignVertical: TextAlignVertical.center,
                                                                  textAlign: TextAlign.left,
                                                                  maxLines: 1,
                                                                  decoration: InputDecoration(
                                                                    border: OutlineInputBorder(),
                                                                      hintText: 'Enter reffer code',

                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(height: 1.h,),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  Navigator.pop(context);
                                                                  showModalBottomSheet(
                                                                    shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                                                    ),
                                                                    context: context,
                                                                    builder: (context) {
                                                                      return Container(
                                                                        height: 30.h,
                                                                        child: Column(
                                                                          children: <Widget>[
                                                                            Padding(
                                                                              padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.h),
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Select Payment Option:',
                                                                                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Icon(Icons.close,color: Colors.black,))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            ListTile(
                                                                              title: Text('Cash Collection'),
                                                                              leading:  Radio(
                                                                                value: 1,
                                                                                groupValue: index,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    index = value!;
                                                                                  });
                                                                                },),
                                                                            ),
                                                                            ListTile(
                                                                              title: Text('Card'),
                                                                              leading:  Radio(
                                                                                value: 2,
                                                                                groupValue: index,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    index = value!;
                                                                                  });
                                                                                },),
                                                                            ),
                                                                            ListTile(
                                                                              title: Text('Bank Transfer'),
                                                                              leading:  Radio(
                                                                                value: 3,
                                                                                groupValue: index,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    index = value!;
                                                                                  });
                                                                                },),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                child: Container(
                                                                  height: 4.h,
                                                                  width: 35.w,
                                                                  color: Colors.blue,
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Pay Rs 9000',
                                                                      style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                              );
                                            },
                                            child: Text(
                                                'Have a refer code',
                                            style: TextStyle(color: Colors.blue,fontSize: 12.sp),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2.h,),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                            showModalBottomSheet(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                              ),
                                              context: context,
                                              builder: (context) {
                                                return Container(
                                                  height: 30.h,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.h),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Select Payment Option:',
                                                              style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                                            ),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  Navigator.pop(context);
                                                                },
                                                                child: Icon(Icons.close,color: Colors.black,))
                                                          ],
                                                        ),
                                                      ),
                                                      ListTile(
                                                        title: Text('Cash Collection'),
                                                        leading:  Radio(
                                                          value: 1,
                                                          groupValue: index,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              index = value!;
                                                            });
                                                          },),
                                                      ),
                                                      ListTile(
                                                        title: Text('Card'),
                                                        leading:  Radio(
                                                          value: 2,
                                                          groupValue: index,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              index = value!;
                                                            });
                                                          },),
                                                      ),
                                                      ListTile(
                                                        title: Text('Bank Transfer'),
                                                        leading:  Radio(
                                                          value: 3,
                                                          groupValue: index,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              index = value!;
                                                            });
                                                          },),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            height: 4.h,
                                            width: 35.w,
                                            color: Colors.blue,
                                            child: Center(
                                              child: Text(
                                                'Pay Rs 9000',
                                                style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                          );
                        },
                        child: customContainer(
                            'Corporate website',
                            'For business requiring an informational \nwebsite',
                            'Rs. 1000',
                            'Rs 500/month',
                            '6,000',
                            'Purchase',
                            AppColors.primaryColor
                        ),
                      ),
                      customContainer(
                          'E-commerce website',
                          'For business to all product online',
                          'Rs. 2000',
                          'Rs 1000/month',
                          '12,000',
                          'Purchase',
                          Colors.red
                      ),
                      customContainer(
                          'E-commerce PLUS',
                          'For an established business looking to sell \nproduct online',
                          'Rs. 3300',
                          'Rs 1666/month',
                          '50,000',
                          'Get in Touch',
                          AppColors.primaryColor
                      ),
                      Center(
                        child: Text('+ Show Plan Feature',style: TextStyle(fontSize: 15.sp,color: Colors.blue),),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.h),
                        child: Divider(
                          height: 4.h,
                          thickness: 3,
                        ),
                      ),
                      Center(
                        child: Text('Frequently asked question (FAQs)',style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 2.h,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('What type of business use dialboxx',style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.bold),),
                            Icon(Icons.add),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.h),
                        child: Divider(
                          height: 4.h,
                          thickness: 3,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('How much commission does dialboxx charge? ',style: TextStyle(fontSize: 11.sp,color: Colors.black,fontWeight: FontWeight.bold),),
                            Icon(Icons.remove),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Zero commission on sales of the business',style: TextStyle(fontSize: 13.sp,color: Colors.black),),

                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.h),
                        child: Divider(
                          height: 4.h,
                          thickness: 3,
                        ),
                      ),
                      Center(
                        child: Text('Need Help?',style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 2.h,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                             // height: 5.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.black26),
                                  borderRadius: BorderRadius.circular(7)
                                ),
                                child: Center(child: Text('             call us\n +92 300 9680946',style: TextStyle(fontSize: 13.sp,color: Colors.black),))),
                            Container(
                                //height: 5.h,
                                width: 42.w,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black26),
                                    borderRadius: BorderRadius.circular(7)
                                ),
                                child: Center(child: Text('      Need us\n Subscriptions',style: TextStyle(fontSize: 13.sp,color: Colors.black),))),



                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.h),
                        child: Row(
                          children: [
                            Text('By subscribing you agree to our ',style: TextStyle(fontSize: 11.sp,color: Colors.black),),
                            Text('terms and conditions',style: TextStyle(fontSize: 11.sp,color: AppColors.primaryColor),),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,)
                    ],
                  ),
                  InvoiceScreen(),
                ],
              ),
            )
            // ListView(
            //   children: [
            //     Center(child: Text(
            //         'Select a plan according to our business \nneeds fo as low as RS.500 per month',
            //     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),
            //     )),
            //     SizedBox(height: 2.h,),
            //     Center(child: Text(
            //       'Yearly Packages',
            //       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),
            //     )),
            //
            //     GestureDetector(
            //       onTap: () {
            //         showModalBottomSheet(
            //             context: context,
            //             builder: (context) {
            //               return Container(
            //                 height: 40.h,
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
            //                 ),
            //                 child: Column(
            //                   children: [
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 3.h),
            //                       child: Row(
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Text(
            //                               'Purchase Corporate Website',
            //                           style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
            //                           ),
            //                           GestureDetector(
            //                               onTap: () {
            //                                 Navigator.pop(context);
            //                               },
            //                               child: Icon(Icons.close,color: Colors.black,))
            //                         ],
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h),
            //                       child: Row(
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Text(
            //                             'Dialboxx Platform fee ',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                           Text(
            //                             'Rs 5000 ',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
            //                       child: Row(
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Text(
            //                             'GST(18%)',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                           Text(
            //                             'Rs 1240 ',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h),
            //                       child: Divider(
            //                         height: 2.h,
            //                         thickness: 3,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h),
            //                       child: Row(
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Text(
            //                             'Corporates(Yearly)',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                           Text(
            //                             'Rs 6000 ',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
            //                       child: Row(
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Text(
            //                             'Discount(10%)',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                           Text(
            //                             'Rs 300 ',
            //                             style: TextStyle(fontSize: 13.sp),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h),
            //                       child: Divider(
            //                         height: 2.h,
            //                         thickness: 3,
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 0.7.h),
            //                       child: Row(
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Text(
            //                             'Total Amount',
            //                             style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
            //                           ),
            //                           Text(
            //                             'Rs 9000 ',
            //                             style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Center(
            //                       child: Text(
            //                           'Have a refer code',
            //                       style: TextStyle(color: Colors.blue,fontSize: 12.sp),
            //                       ),
            //                     ),
            //                     SizedBox(height: 2.h,),
            //                     Container(
            //                       height: 4.h,
            //                       width: 35.w,
            //                       color: Colors.blue,
            //                       child: Center(
            //                         child: Text(
            //                           'Pay Rs 9000',
            //                           style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               );
            //             },
            //         );
            //       },
            //       child: customContainer(
            //           'Corporate website',
            //           'For business requiring an informational \nwebsite',
            //           'Rs. 1000',
            //           'Rs 500/month',
            //           '6,000',
            //           'Purchase',
            //           Colors.blueAccent
            //       ),
            //     ),
            //     customContainer(
            //         'E-commerce website',
            //         'For business to all product online',
            //         'Rs. 2000',
            //         'Rs 1000/month',
            //         '12,000',
            //         'Purchase',
            //         Colors.red
            //     ),
            //     customContainer(
            //         'E-commerce PLUS',
            //         'For an established business looking to sell \nproduct online',
            //         'Rs. 3300',
            //         'Rs 1666/month',
            //         '50,000',
            //         'Get in Touch',
            //         Colors.blueAccent
            //     ),
            //     Center(
            //       child: Text('+ Show Plan Feature',style: TextStyle(fontSize: 15.sp,color: Colors.blue),),
            //     ),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 3.h),
            //       child: Divider(
            //         height: 4.h,
            //         thickness: 3,
            //       ),
            //     ),
            //     Center(
            //       child: Text('Frequently asked question (FAQs)',style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.bold),),
            //     ),
            //     SizedBox(height: 2.h,),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 3.h),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text('What type of business use dialboxx',style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.bold),),
            //           Icon(Icons.add),
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 3.h),
            //       child: Divider(
            //         height: 4.h,
            //         thickness: 3,
            //       ),
            //     ),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 3.h),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text('How much commission does dialboxx charge? ',style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.bold),),
            //           Icon(Icons.remove),
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 3.h),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text('Zero commission on sales of the business',style: TextStyle(fontSize: 13.sp,color: Colors.black),),
            //
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 3.h),
            //       child: Divider(
            //         height: 4.h,
            //         thickness: 3,
            //       ),
            //     ),
            //     Center(
            //       child: Text('Need Help?',style: TextStyle(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.bold),),
            //     ),
            //     SizedBox(height: 2.h,),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(horizontal: 3.h),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Container(
            //             height: 5.h,
            //               width: 40.w,
            //               decoration: BoxDecoration(
            //                 border: Border.all(width: 1,color: Colors.black26),
            //                 borderRadius: BorderRadius.circular(7)
            //               ),
            //               child: Center(child: Text('             call us\n +92 300 9680946',style: TextStyle(fontSize: 13.sp,color: Colors.black),))),
            //           Container(
            //               height: 5.h,
            //               width: 40.w,
            //               decoration: BoxDecoration(
            //                   border: Border.all(width: 1,color: Colors.black26),
            //                   borderRadius: BorderRadius.circular(7)
            //               ),
            //               child: Center(child: Text('      Need us\n Subscriptions',style: TextStyle(fontSize: 13.sp,color: Colors.black),))),
            //
            //
            //
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding:  EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.h),
            //       child: Row(
            //         children: [
            //           Text('By subscribing you agree to our ',style: TextStyle(fontSize: 13.sp,color: Colors.black),),
            //           Text('terms and conditions',style: TextStyle(fontSize: 13.sp,color: Colors.blue),),
            //         ],
            //       ),
            //     ),
            //     SizedBox(height: 2.h,)
            //   ],
            // ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogoScreen(),));
        },
      ),
    );
  }

}
