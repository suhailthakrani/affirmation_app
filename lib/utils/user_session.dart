import 'dart:convert';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';


/*Created By: Amjad Jamali on 15-Aug-2023*/
class UserSession {

  static final RxBool isDataChanged = RxBool(false);
  static final Rx<UserModel> userModel = UserModel.empty().obs;

  static final UserSession _instance = UserSession._internal();
  UserSession._internal();
  factory UserSession() {
    return _instance;
  }

  Future<bool> createSession({required UserModel user}) async {
    final preference = await SharedPreferences.getInstance();
    userModel.value = user;
    return preference.setString('USER_DATA', jsonEncode(userModel.value.toJsonForRegister()));
  }

  Future<bool> isUserLoggedIn() async {
    final preference = await SharedPreferences.getInstance();
    userModel.value = UserModel.fromJSON(jsonDecode(preference.getString('USER_DATA') ?? "{}"));
    return userModel.value.email.isNotEmpty;
  }

  Future<bool> logout() async {
    final preference = await SharedPreferences.getInstance();
    preference.remove('USER_DATA');
    userModel.value = UserModel.empty();
    return true;
  }

}
