import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:prathinidhi_rider/presentation/ui/screens/welcome_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    moveToNextScreen();
  }

  void moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 1),);
    Get.offAll(WelcomeScreen());

  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset("assets/applogo.png"),
            Text("rider",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.white),),
            Spacer(),
            //CircularProgressIndicator(),
            SizedBox(height: 16),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
