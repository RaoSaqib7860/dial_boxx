import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../utils_services/global_variable.dart';
import '../utils_services/snakbar.dart';
import '../utils_services/storage_util.dart';
import '../view/Screens/authentication/login/Login Model/login_model.dart';
import 'base_path.dart';

const userLogin = 'seller-login';
const sendOtp = 'request_otp';
const otpVerification = 'verify_otp';

class DataProvider{

  Future<bool> loginFunction({String? Email, String? Password}) async {
    //String? deviceId = await getId();
    final response = await http.post(Uri.parse('$baseURL$userLogin'), body: {
      'email': '$Email',
      'password': '$Password',
    },headers: {
      'csrf' : '5574499YmRzanYyZzExa2J3Y3N1b2Y='
    });
    print('Email ${Email}');
    print('password ${Password}');
    var data = jsonDecode(response.body);
    print('Data is login ${data}');
    if (data['result'] == 'success') {
      log("loginFunction code is = ${response.statusCode}");
      user_model = LoginModel.fromJson(data);
      storage.write('userData', user_model.toJson());
      snackBarFailer('${data['message']}');
      return true;
    } else {
      snackBarFailer('${data['message']}');
      return false;
    }
  }
  Future<bool> emailSendOtpFunction({String? Email, }) async {
    final response = await http.post(Uri.parse('$baseURL$sendOtp'), body: {
      'email': '$Email',
    },);
    print('Email ${Email}');
    Map data = jsonDecode(response.body);
    print('Data is login ${data}');
    if (!data.containsKey('status')) {
      snackBarFailer('${data['success']}');
      return true;
    } else {
      snackBarFailer('${data['success']}');
      return false;
    }
  }
  Future<bool> otpVerificationFunction({Map<String,dynamic>? map}) async {
    final response = await http.post(Uri.parse('$baseURL$otpVerification'), body: map,);
    print('Email ${map}');
    Map data = jsonDecode(response.body);
    print('Data is login ${data}');
    if (data['status'] == 200) {
      snackBarFailer('${data['success']}');
      return true;
    } else {
      snackBarFailer('${data['success']}');
      return false;
    }
  }
}


