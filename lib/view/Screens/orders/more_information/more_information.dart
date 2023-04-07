import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../services/colors/app_colors.dart';
import '../../../custom_widgets/custom_widgets.dart';
import '../../Seller Account/seller_account.dart';

class MoreInformation extends StatefulWidget {
  const MoreInformation({Key? key}) : super(key: key);

  @override
  State<MoreInformation> createState() => _MoreInformationState();
}

class _MoreInformationState extends State<MoreInformation> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(SellerAccount());
      }),
      appBar: const CustomAppBar(
        leading: BackButton(color: AppColors.primaryColor),
      ),
      body: Container(
        width: 1000.w,
        height: 1000.h,
        child: Column(
          children:  [
            const HeaderContainer(
              text: "Choose store category",
            ),
            ListTile(
              leading: Image.asset('assets/images/share.png'),
              title: Text('Share Dialboxx App'),
            ),
            ListTile(
              leading: Image.asset('assets/images/lock.png'),
              title: Text('Lock Screen Notification '),
              trailing: CupertinoSwitch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/lock.png'),
              title: Text('Privacy Policy'),
            ),
            ListTile(
              leading: Image.asset('assets/images/ratting.png'),
              title: Text('Rate Us'),
            ),
          ],
        ),
      ),
    );
  }
}
