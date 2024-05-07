import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/dashboard_screen.dart';
import 'package:get/get.dart';
import '../utility/app_color.dart';
import '../widgets/textbutton.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 200,),
              Center(child: Image.asset("assets/riderlogo.png")),
              Text("Login",style:Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Phone number"
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: _obscureText,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: "Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  )
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text("Forget password?",style: TextStyle(color: Colors.blue,fontSize: 15),)
                ],
              ),
              SizedBox(height: 30,),
              CustomTextButton(onPressed: () {
                Get.to(dashBoardScreen());
              }, text: 'Log In', txtcolor: Colors.white, color: AppColors.primaryColor,),
            ],
          ),
        ),
      ),
    );
  }
}