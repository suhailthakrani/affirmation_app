import 'package:affirmation_app/views/screens/profile/components/general_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profile_screen_controller.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/constants.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryDarkColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin: const EdgeInsets.only(left: 20), child: const Text('Profile', style: TextStyle(color: Colors.white, fontSize: 25),)),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
                  child: const Icon(Icons.notifications_none, color: Colors.white, size: 30,),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Divider(color: Colors.grey.shade800),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  const Row(children: [
                    CircleAvatar(backgroundImage: AssetImage('assets/images/elon.jpg'), radius: 40,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('John Harry', style: TextStyle(color: Colors.white, fontSize: 25),),
                        SizedBox(height: 5,),
                        Text('PAtrick@gmail.com', style: TextStyle(color: Colors.white, fontSize: 15),),
                      ],
                    ),
                  ],),
                  const SizedBox(height: 30,),
                  const Text('Settings', style: TextStyle(color: Colors.white, fontSize: 25),),
                  ListView.separated(
                    padding: const EdgeInsets.only(top: 10),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),  // Disable inner ListView scrolling
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          if(controller.settingsList[index] == "General") {
                            Get.to(const GeneralScreen());
                          } else if(controller.settingsList[index] == "Reminders") {
                            Get.toNamed(kRemindersScreenRoute);
                          }
                        },
                        contentPadding: EdgeInsets.zero,
                        title: Text(controller.settingsList[index], style: const TextStyle(color: Colors.white)),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 18,),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(color: Colors.grey.shade800,);
                    },
                    itemCount: controller.settingsList.length,
                  ),
                  Divider(color: Colors.grey.shade800,),
                  const SizedBox(height: 20,),
                  const Text('Affirmation', style: TextStyle(color: Colors.white, fontSize: 25),),
                  ListView.separated(
                    padding: const EdgeInsets.only(top: 10),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),  // Disable inner ListView scrolling
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(controller.affirmationsList[index], style: const TextStyle(color: Colors.white)),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 18,),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(color: Colors.grey.shade800,);
                    },
                    itemCount: controller.affirmationsList.length,
                  ),
                  Divider(color: Colors.grey.shade800,),
                  const SizedBox(height: 20,),
                  const Text('Follow Us', style: TextStyle(color: Colors.white, fontSize: 25),),
                  const SizedBox(height: 20,),
                  const Row(children: [
                    Column(children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/icons/insta.jpg'), radius: 20,),
                      SizedBox(height: 5,),
                      Text('Instagram', style: TextStyle(color: Colors.white, fontSize: 10),),
                    ],),
                    SizedBox(width: 15,),
                    Column(children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/icons/twitter.png'), radius: 20,),
                      SizedBox(height: 5,),
                      Text('Twitter', style: TextStyle(color: Colors.white, fontSize: 10),),
                    ],),
                    SizedBox(width: 15,),
                    Column(children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/icons/fb.jpg'), radius: 20,),
                      SizedBox(height: 5,),
                      Text('Facebook', style: TextStyle(color: Colors.white, fontSize: 10),),
                    ],),
                  ],)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}