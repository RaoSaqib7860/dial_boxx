// ignore_for_file: file_names

import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxline;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final String? fontFamily;

  const CustomText({
    Key? key,
    this.text,
    this.size,
    this.fontWeight,
    this.color,
    this.overflow,
    this.textAlign,
    this.maxline,
    this.decoration,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
      // TextStyle(
      //   color: color,
      //   fontSize: size,
      //   fontWeight: fontWeight,
      //   decoration: decoration,
      // ),
      overflow: overflow,
      textAlign: textAlign,
      softWrap: true,
      maxLines: maxline,
    );
  }
}

class CustomButtonClick extends StatelessWidget {
  final double? height;
  final double? width;
  final Decoration? decoration;
  final String? text;
  final Widget? child;
  final EdgeInsetsGeometry? margins,paddings;
  const CustomButtonClick({
    Key? key,
    this.height,
    this.width,
    this.margins,
    this.paddings,
    this.decoration,
    this.text,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margins,
      padding: paddings,
      decoration: decoration,
      child: child,
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  const CustomAppBar({
    super.key,
    this.actions,
    this.leading,
    this.bottom,
  });
  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        actions: actions,
        bottom: bottom,
        leading: leading,
        title: SizedBox(
            height: 53.h,
            width: 133.w,
            child: Image.asset(
              'assets/images/logoDialboxx.png',
              fit: BoxFit.cover,
            )),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  final String? text;
  const HeaderContainer({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: MediaQuery.of(context).size.width,
      color: AppColors.primaryColor,
      child: Center(
        child: CustomText(
          text: text,
          color: AppColors.whitColor,
          fontWeight: FontWeight.bold,
          size: 16.sp,
        ),
      ),
    );
  }
}
