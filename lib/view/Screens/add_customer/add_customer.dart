import 'package:dialbox_seller/view/Screens/add_customer/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../account_detail_screen/account_detail_screen.dart';

class AddCustomerScreen extends StatefulWidget {
  const AddCustomerScreen({Key? key}) : super(key: key);

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController customerTypeController = TextEditingController();
  TextEditingController deliveryTypeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.menu,color: Colors.black38,size: 22.sp,),
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HeaderContainer(
                text: "New Customer",
              ),
              SizedBox(height: 2.h,),
              textFieldWidget(name: 'Name*',hint: 'Ahmad*',controller: nameController),
              textFieldWidget(name: 'Customer mail',hint: 'abc@gmail.com',controller: emailController),
              textFieldWidget(name: 'Customer Phone',hint: '031123333',controller: phoneController),
              textFieldWidget(name: 'Customer Type',hint: '031123333',controller: customerTypeController),
              textFieldWidget(name: 'Delivery Type',hint: '031123333',controller: deliveryTypeController),
              textFieldWidget(name: 'Address',hint: '031123333',controller: addressController),
              textFieldWidget(name: 'Location',hint: '031123333',controller: locationController),
              textFieldWidget(name: 'Zip',hint: '031123333',controller: zipController),
              SizedBox(height: 6.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  height: 5.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Add New Customer',
                      style: TextStyle(fontSize: 15.sp,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.h,)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountDetailScreen(),));
        },
      ),
    );
  }
}
