import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../services/colors/app_colors.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../orders/more_information/more_information.dart';

class ChoseStoreCategories extends StatefulWidget {
  const ChoseStoreCategories({Key? key}) : super(key: key);

  @override
  State<ChoseStoreCategories> createState() => _ChoseStoreCategoriesState();
}

class _ChoseStoreCategoriesState extends State<ChoseStoreCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(MoreInformation());
      }),
      appBar: const CustomAppBar(
        leading: BackButton(color: AppColors.primaryColor),
      ),
      body: Container(
        width: 1000.w,
        height: 1000.h,
        child: Column(
          children: [
            const HeaderContainer(
              text: "Choose store category",
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: SvgPicture.asset('assets/svg/home.svg',),
                ),
                title: Text('Kiryana Store, FMCG & Grocery '),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
