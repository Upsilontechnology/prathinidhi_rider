import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/dashboard_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';

import '../widgets/textbutton.dart';

class PendingScreen extends StatelessWidget {
  const PendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBox(height: 10,),
          header(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 200,),
                Center(child: Image.asset("assets/confirm.png")),
                Text(" Your Application Under Review.",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700)),
                Text("Contact to our office with full documents",style: Theme.of(context).textTheme.titleSmall,),
                SizedBox(height: 10,),
                CustomTextButton(onPressed: () {
                  Get.to(dashBoardScreen());
                }, color: AppColors.primaryColor, text: 'Contact our Support team', txtcolor: Colors.white,),
                SizedBox(height: 10,)
              ],
            ),
          ),

        ],
      ),
    );
  }
}




