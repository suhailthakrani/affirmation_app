import 'package:affirmation_app/controllers/dropdown_controller.dart';
import 'package:affirmation_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';
import '../services/users_services.dart';

class UserDetailsInputScreenScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageGroupController = TextEditingController();
  DropdownController ocupationDDController = DropdownController(title: "", items: RxList([
    "Programmer",
    "Teacher"
  ]));
  TextEditingController currentIncomeController = TextEditingController();
  DropdownController desiredOcupationDDController = DropdownController(title: "", items: RxList(["Programmer",
    "Teacher"]));
  TextEditingController desiredIncomeController = TextEditingController();
  TextEditingController debtAmountIncomeController = TextEditingController();
  DropdownController debtTypeDDController = DropdownController(title: "", items: RxList(["Type1", "Type2"]));
  TextEditingController savingGoalsController = TextEditingController();


  Future<void> register(context) async {
    UserModel userModel = updateUserModel(
      ageGroupController,
      ocupationDDController,
      currentIncomeController,
      desiredIncomeController,
      desiredOcupationDDController,
      debtAmountIncomeController,
      debtTypeDDController,
      savingGoalsController
    );
    String result = await UserServices().registerUser(model:userModel);
    if(result == "Success") {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Details Updated Successfully!")));
      Get.toNamed(kMainScreenRoute);
    }
  }

  UserModel updateUserModel(
    TextEditingController ageGroupController,
    DropdownController occupationController,
    TextEditingController currentIncomeController,
    TextEditingController desiredIncomeController,
    DropdownController desiredOccupationController,
    TextEditingController debtAmountController,
    DropdownController debtTypeController,
    TextEditingController savingGoalsController
  ) {
    UserModel userModel = UserModel.empty();
    if (ageGroupController.text.isNotEmpty) {
      userModel.ageGroup = ageGroupController.text;
    }
    if (occupationController.validate()) {
      userModel.occupation = occupationController.selectedItem.value;
    }
    if (currentIncomeController.text.isNotEmpty) {
      userModel.currentIncome = currentIncomeController.text;
    }
    if (desiredIncomeController.text.isNotEmpty) {
      userModel.desiredIncome = desiredIncomeController.text;
    }
    if (desiredOccupationController.validate()) {
      userModel.occupation = desiredOccupationController.selectedItem.value;
    }
    if (debtAmountController.text.isNotEmpty) {
      userModel.debtAmount = debtAmountController.text;
    }
    if (debtTypeController.validate()) {
      userModel.occupation = debtTypeController.selectedItem.value;
    }
    if (savingGoalsController.text.isNotEmpty) {
      userModel.savingGoals = savingGoalsController.text;
    }
    return userModel;
  }
  
}