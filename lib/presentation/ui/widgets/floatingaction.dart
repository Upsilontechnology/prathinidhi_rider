import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/dashboard_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';

class floatingaction extends StatelessWidget {
  const floatingaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: FloatingActionButton(
        backgroundColor: Colors.white70,
        onPressed: () => {
          Get.to(dashBoardScreen())
        }, // Example: Open notifications screen
        child: Icon(
          Icons.home_sharp,size: 35,
          color: AppColors.primaryColor,
        ),
        elevation: 2.0,
        shape: CircleBorder(
        ),
      ),
    );
  }
}
