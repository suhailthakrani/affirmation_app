import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> customerSupportList = ['FAQ\'s','Contact Us','Chatbot'];
    List<String> othersList = ['Privacy Policy','Terms and Conditions'];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
      const SizedBox(height: 50,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 20,),
              InkWell(onTap: (){Get.back();},child: Icon(Icons.arrow_back,color: Colors.white,)),
              Container(margin: const EdgeInsets.only(left: 20), child: const Text('General', style: TextStyle(color: Colors.white, fontSize: 25),)),
            ],
          ),
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Premium', style: TextStyle(color: Colors.white, fontSize: 25),),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Manage Subscription', style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 18,),
              ),
              Divider(color: Colors.grey.shade800,),
              const SizedBox(height: 20,),
              const Text('Customer Support', style: TextStyle(color: Colors.white, fontSize: 25),),
              ListView.separated(
                padding: const EdgeInsets.only(top: 10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),  // Disable inner ListView scrolling
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(customerSupportList[index], style: const TextStyle(color: Colors.white)),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 18,),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(color: Colors.grey.shade800,);
                },
                itemCount: customerSupportList.length,
              ),
              Divider(color: Colors.grey.shade800,),
              const SizedBox(height: 20,),
              const Text('Others', style: TextStyle(color: Colors.white, fontSize: 25),),
              ListView.separated(
                padding: const EdgeInsets.only(top: 10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),  // Disable inner ListView scrolling
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(othersList[index], style: const TextStyle(color: Colors.white)),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 18,),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(color: Colors.grey.shade800,);
                },
                itemCount: othersList.length,
              ),
              Divider(color: Colors.grey.shade800,),
            ],
          ),
        ),



    ],),);
  }
}
