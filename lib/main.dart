import 'package:device_preview/device_preview.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/coupon_code_screen.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/discount_coupon_screen.dart';
import 'package:dialbox_seller/view/Screens/all_coupons_screen/free_shipping_discount_screen.dart';
import 'package:dialbox_seller/view/Screens/delivery/book_delivery_screen/book_delivery_screen.dart';
import 'package:dialbox_seller/view/Screens/delivery/delivery_order_details_screen/delivery_order_details_screen.dart';
import 'package:dialbox_seller/view/Screens/delivery/setup_dialbox_delivery_screen/setup_dialboxx_delivery_screen.dart';
import 'package:dialbox_seller/view/Screens/home/domains/domains_screen.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/analytics_screen.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/home_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/all_orders_screens/all_orders_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/confirm_details_screen/confirm_details_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/create_order_screen/create_order_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/order_details_screen/order_details_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/order_details_screen/order_summary_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/order_number_details/order_number_details.dart';
import 'package:dialbox_seller/view/Screens/orders/order_types_screen/order_type_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/tracking_order_screen/tracking_order_screen.dart';
import 'package:dialbox_seller/view/Screens/payment/payment_Screens/add_payment_method_screen.dart';
import 'package:dialbox_seller/view/Screens/product/add_product_screen/add_product_screen.dart';
import 'package:dialbox_seller/view/Screens/product/add_product_screen/catalogue_screen/catalogue_screen.dart';
import 'package:dialbox_seller/view/Screens/splash_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/persistant_bottom_sheet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  SplashScreen(),
          // const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}
