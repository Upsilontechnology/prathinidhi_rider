import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/delivery_confrim_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/floatingaction.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/navbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class OrderVerifyScreen extends StatefulWidget {
  const OrderVerifyScreen({super.key});
  @override
  State<OrderVerifyScreen> createState() => _OrderVerifyScreenState();
}
class _OrderVerifyScreenState extends State<OrderVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
    ontap:(){  Navigator.of(context).pop();
      }),
      bottomNavigationBar: navbuttom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        child: Icon(Icons.person,size: 65,),
                      ),
                      title: Text("Mohammad shahid",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                      subtitle: Text("+8801317 686 695"),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width:170,
                              child: CustomTextButton(onPressed: () {  }, text: ' Live Chat', color: AppColors.primaryColor, txtcolor: Colors.white,)),
                          SizedBox(
                              width:170,
                              child: CustomTextButton(onPressed: () {  }, text: ' Call', color: AppColors.primaryColor, txtcolor: Colors.white,)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: CustomTextButton(onPressed: () {  }, text: 'Emergency Call', color: AppColors.primaryColor, txtcolor: Colors.white,),
                    )
                  ],
                ),
              ),
            ),
            OPT_section,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: CustomTextButton(onPressed: () {
                Get.to(DeliveryConfrimScreen());
              }, text: ' Delivered', color: AppColors.primaryColor, txtcolor: Colors.white,),
            )
          ],
        ),
      ),
      floatingActionButton: floatingaction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }



  Padding get OPT_section {
    return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your OTP"
                    ),
                  ),
                ),
                SizedBox(
                  width: 180,
                  child: ElevatedButton(
                      onPressed: (){
                      }, child: Text("Send OTP")),
                ),
              ],
            ),
          );
  }
}
