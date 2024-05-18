import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/become%20a%20rider/application_submitted_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/become%20a%20rider/from_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/grid_view.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/loaction_region.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class deliveryInfoScreen extends StatefulWidget {
  const deliveryInfoScreen({super.key});

  @override
  State<deliveryInfoScreen> createState() => _deliveryInfoScreenState();
}

class _deliveryInfoScreenState extends State<deliveryInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text("Which region you want to access for delivery?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  RegionSearchLocation(),
                  SizedBox(height: 15,),
                  Text("Which vehicle you want to choose for your delivery?",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                  geid_view(),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CustomTextButton(onPressed: () {
                      Get.to(ApplicationForm());
                    }, text: 'Next Step', color: AppColors.primaryColor, txtcolor: Colors.white,),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
