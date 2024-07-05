import 'package:affirmation_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/dropdown_controller.dart';
import '../../utils/user_session.dart';

class CustomDropdown extends StatelessWidget {

  final DropdownController controller;
  final double paddingHorizontal;
  final void Function(dynamic)? onItemChanged;
  final bool readOnly;


  const CustomDropdown({super.key,
    required this.controller,
    this.paddingHorizontal=0,
    this.onItemChanged,
    this.readOnly = false,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 0,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:  const BorderSide(color: kWhiteColor)
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 4.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Obx(()=> DropdownButton(
                    borderRadius: BorderRadius.circular(15),
                    dropdownColor: Colors.grey,
                    value: controller.selectedItem.value,
                    isExpanded: true,
                    underline: const SizedBox(),
                    icon: Icon(Icons.arrow_drop_down, size: 40, color: readOnly ? kLightGreyColor : controller.items.isEmpty ? kLightGreyColor : kWhiteColor ),
                    iconEnabledColor: kWhiteColor,
                    items: readOnly ? null : controller.items.map<DropdownMenuItem>((selectedItem) {
                      return DropdownMenuItem(
                        value: selectedItem,
                        child: Text(
                          selectedItem.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: kWhiteColor),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      (readOnly && controller.selectedItem.value!=null) ? controller.selectedItem.value.toString() : 'Select ${controller.title}',
                      style: const TextStyle(color:  kWhiteColor)
                    ),
                    onChanged: (selectedItem){
                      controller.selectedItem.value = selectedItem;
                      controller.validate();
                      if(onItemChanged!=null){
                        onItemChanged!(selectedItem);
                      }
                    },
                  ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 4),
          Obx(() => Visibility(
            visible: controller.errorMessage.value.isNotEmpty,
            child: Text(controller.errorMessage.value, style: const TextStyle(color: kWhiteColor, fontSize: 12),),
          )),
        ],
      ),
    );
  }
}