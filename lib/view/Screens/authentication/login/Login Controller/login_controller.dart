import 'package:dialbox_seller/api_repo/api_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/persistant_bottom_sheet_screen.dart';

class LoginController extends GetxController{
  TextEditingController textEditingControllerPassword = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();

  DataProvider  dataProvider = DataProvider();
  var isLoding = false.obs;
    login({BuildContext? context})async{
     isLoding.value = true;
   dataProvider.loginFunction(Password: textEditingControllerPassword.text,Email: textEditingControllerEmail.text).then((value) {
     if(value == true){
       isLoding.value = false;
       Navigator.push(
           context!,
           MaterialPageRoute(
             builder: (context) => BottomSheetCustom(index: 0),
           ));

     }
   });

  }

}