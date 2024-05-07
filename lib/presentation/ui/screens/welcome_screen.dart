import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/login_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/searchLocation%20_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/tile.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Center(child: Image.asset("assets/riderlogo.png")),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome to",
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Pratinidhi rider app",
                      style: Theme.of(context).textTheme.titleLarge)),
              SizedBox(
                height: 20,
              ),
              CustomTextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                color: Colors.grey.shade300,
                text: 'Continue as a rider',
                txtcolor: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),

              CustomTextButton(
                onPressed: () {
                  Get.to(Search_locationScreen());
                },
                color: AppColors.primaryColor,
                text: 'Become a rider',
                txtcolor: Colors.white,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
