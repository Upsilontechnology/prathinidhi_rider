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
      appBar: CustomAppBar(icon: Icon(Icons.arrow_back,color: Colors.white,),
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
                height: 290,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    ListTile(
                      leading: Container(
                        //height: 100,
                        width: 60,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D'),
                        ),
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
