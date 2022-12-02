import 'package:dialbox_seller/services/colors/app_colors.dart';
import 'package:dialbox_seller/view/Screens/delivery/book_delivery_screen/book_delivery_screen.dart';
import 'package:dialbox_seller/view/Screens/orders/all_orders_screens/all_orders_screen.dart';
import 'package:dialbox_seller/view/Screens/payment/payment_Screens/add_payment_method_screen.dart';
import 'package:dialbox_seller/view/Screens/product/add_product_screen/add_product_screen.dart';
import 'package:dialbox_seller/view/custom_widgets/custom_widgets.dart';
import 'package:dialbox_seller/view/Screens/delivery_screen.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/home_screen.dart';
import 'package:dialbox_seller/view/Screens/order_screen.dart';
import 'package:dialbox_seller/view/Screens/payment_screen.dart';
import 'package:dialbox_seller/view/Screens/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../Screens/home/components/kf_drawer/drawer_main_screen.dart';

bool goback = true;

class BottomSheetCustom extends StatelessWidget {
  BottomSheetCustom({Key? key, this.index});
  final int? index;
  late PersistentTabController _controller = PersistentTabController(
      initialIndex: index == 0
          ? 0
          : index == 1
              ? 1
              : index == 2
                  ? 2
                  : index == 3
                      ? 3
                      : 0);

  @override
  Widget build(BuildContext context) {
    showExitPopup(BuildContext context) {
      return showDialog(
          context: context,
          builder: (context) => AlertDialog(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                title: const CustomText(
                  text: 'ARE YOU SURE TO EXIT FROM APP?',
                  size: 13,
                  fontWeight: FontWeight.bold,
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const CustomText(
                        text: 'NO',
                      )),
                  TextButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: const CustomText(
                        text: 'YES',
                      ))
                ],
              ));
      //if showDialouge had returned null, then return false
    }
//..........this is will pop scop........//

    //  onWillPop: () async {
    //     if (goback) {
    //       print('Now showing dialog');
    //showExitPopup(context);
    //       return false;
    //     } else {
    //       return true;
    //     }
    //   },
    return PersistentTabView(
      context,
      controller: _controller,
      selectedTabScreenContext: (context) {},
      screens: _buildScreens(),
      items: _navBarsItems(),

      confineInSafeArea: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0), topRight: Radius.circular(0)),
      ),

      backgroundColor: AppColors.primaryColor,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      navBarHeight: 65.h,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        // curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        // curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.simple,
      onItemSelected: (v) {
        if (v == 0 && !goback) {
          goback = true;
          print('Now showing dialog');
          //showExitPopup(context);
        } else {
          goback = false;
        }
      },
      // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      DrawerSideMenuItems(),
      AllOrdersScreen(),
      const AddProductScreen(),
      const BookDeliveryScreen(),
      const AddPaymentMethodScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home,
          size: 30.sp,
        ),
        title: ("Home"),
        activeColorPrimary: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.w500),
        inactiveColorPrimary: Color(0xff827D88),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.collections_bookmark_rounded,
          size: 30.sp,
        ),
        title: ("Order"),
        activeColorPrimary: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.w500),
        inactiveColorPrimary: Color(0xff827D88),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.card_giftcard_rounded,
          size: 30.sp,
        ),
        title: ("Product"),
        activeColorPrimary: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.w500),
        inactiveColorPrimary: Color(0xff827D88),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.car_crash_outlined,
          size: 30.sp,
        ),
        title: ("Delivery"),
        activeColorPrimary: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.w500),
        inactiveColorPrimary: Color(0xff827D88),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.format_list_bulleted_rounded,
          size: 30.sp,
        ),
        title: ("Payment"),
        activeColorPrimary: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.w500),
        inactiveColorPrimary: Color(0xff827D88),
      ),
    ];
  }
}
