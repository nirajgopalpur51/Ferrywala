import 'package:ferry/seller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'optionpage.dart';

class languageSelection extends StatefulWidget {
  const languageSelection({Key? key}) : super(key: key);

  @override
  State<languageSelection> createState() => _languageSelectionState();
}


class _languageSelectionState extends State<languageSelection> {
  final items = ["English","Hindi"];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Padding(padding: EdgeInsets.only(left: 10)),
          Center(child: Text("Choose your language",
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          SizedBox(height: 10,),

          ElevatedButton(onPressed: (){
            var locale = Locale('en','US');
            Get.updateLocale(locale);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>optionpage()));
          }, child: Text("English")),
          SizedBox(height: 10,),
          Text("Or",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            var locale = Locale('hi','IN');
            Get.updateLocale(locale);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>optionpage()));
          }, child: Text("हिंदी")),


          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0, right: 25),
          //   child: Container(
          //     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(25),
          //         border: Border.all(color: Colors.grey, width: 1)),
          //     child: DropdownButtonHideUnderline(
          //       child: DropdownButton<String>(
          //         value: value,
          //
          //         iconSize: 35,
          //         isExpanded: true,
          //         items: items.map(buildMenuItem).toList(),
          //         onChanged: (value) => setState(() => this.value = value),
          //       ),
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }
}
