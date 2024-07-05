import 'package:affirmation_app/controllers/dropdown_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class UserDetailsInputScreenScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageGroupController = TextEditingController();
  DropdownController ocupationDDController = DropdownController(title: "", items: RxList([]));
  TextEditingController currentIncomeController = TextEditingController();
  DropdownController desiredOcupationDDController = DropdownController(title: "", items: RxList([]));
  TextEditingController desiredIncomeController = TextEditingController();
  TextEditingController debtAmountIncomeController = TextEditingController();
  DropdownController debtTypeDDController = DropdownController(title: "", items: RxList([]));
  TextEditingController savingGoalsController = TextEditingController();
  
}