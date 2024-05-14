import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/dashboard_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/floatingaction.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/navbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class DeliveryConfrimScreen extends StatelessWidget {
  const DeliveryConfrimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
      ontap: (){Navigator.pop(context);},
      ),
      bottomNavigationBar: navbuttom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 50),
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  //Lottie.network("https://lottiefiles.com/animations/green-check-1gQEa4FT5C?from=search"),
                  Image.asset("assets/Mask_group.png",height: 60,width: 70,),
                  Text(" Congratulations!",style: Theme.of(context).textTheme.titleLarge,),
                  Text("Product Deliverd Successfully.", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
                  SizedBox(height: 10,),
                  Text("You have Earned 5 Star Rating",style: Theme.of(context).textTheme.titleMedium,),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomTextButton(onPressed: () {
                      Get.to(dashBoardScreen());
                    }, text: 'Done', color: AppColors.primaryColor, txtcolor: Colors.white,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton:floatingaction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
