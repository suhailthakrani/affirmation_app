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
  DropdownController ocupationDDController = DropdownController(title: "Occupation", items: RxList([
    "Programmer",
    "Teacher"
  ]));
  TextEditingController currentIncomeController = TextEditingController();
  DropdownController desiredOcupationDDController = DropdownController(title: "Desired Occupation", items: RxList(["Programmer",
    "Teacher"]));
  TextEditingController desiredIncomeController = TextEditingController();
  TextEditingController debtAmountController = TextEditingController();
  DropdownController debtTypeDDController = DropdownController(title: "Debt Type", items: RxList(["Type1", "Type2"]));
  TextEditingController savingGoalsController = TextEditingController();


  Future<void> updateUserDetails(context) async {
    if(validateData()) {
      UserModel userModel = UserModel.empty();
      userModel.name = nameController.text;
      userModel.ageGroup = ageGroupController.text;
      userModel.occupation = ocupationDDController.selectedItem.value;
      userModel.currentIncome = currentIncomeController.text;
      userModel.desiredOccupation = desiredOcupationDDController.selectedItem.value;
      userModel.desiredIncome = desiredIncomeController.text;
      userModel.debtAmount = debtAmountController.text;
      userModel.debtType = debtTypeDDController.selectedItem.value;
      userModel.savingGoals = savingGoalsController.text;
      String result = await UserServices().updateUserDetails(model:userModel);
      if(result == "Success") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Details Updated Successfully!")));
        Get.toNamed(kMainScreenRoute);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please enter correct data!")));
    }

  }

  bool validateData() {
    bool result = true;
    result = result &
    ageGroupController.text.isNotEmpty &
    (ocupationDDController.selectedItem.value!=null) &
    currentIncomeController.text.isNotEmpty &
    desiredIncomeController.text.isNotEmpty &
    (desiredOcupationDDController.selectedItem.value!=null) &
    debtAmountController.text.isNotEmpty &
    (debtTypeDDController.selectedItem.value!=null) &
    savingGoalsController.text.isNotEmpty;
    return result;
  }

  
}