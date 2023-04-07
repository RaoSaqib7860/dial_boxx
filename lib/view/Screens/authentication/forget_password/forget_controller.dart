import 'package:dialbox_seller/api_repo/api_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../verify_otp_screen.dart';

class forgetotpController extends GetxController{
  TextEditingController textEditingControllerEmail = TextEditingController();

  DataProvider  dataProvider = DataProvider();
  var isLoading = false.obs;
  forgetSendOtp({BuildContext? context})async{
    isLoading.value = true;
    dataProvider.emailSendOtpFunction(Email: textEditingControllerEmail.text).then((value) {
      if(value == true){
        isLoading.value = false;
        Navigator.push(
            context!,
            MaterialPageRoute(
              builder: (context) => VerifyOtpScreen(Email:textEditingControllerEmail.text,callFromConfirm: 1, ),
            ));

      }
    });

  }

}