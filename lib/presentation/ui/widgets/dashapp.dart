import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/continue%20a%20rider/profile_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';

class dashAppBar extends StatelessWidget implements PreferredSizeWidget {
  const dashAppBar({Key? key,  this.ontap, required this.icon})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);
  final Widget icon;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: Image.asset(
        "assets/applogo.png",
        height: 120,
        width: 70,
      ),
      centerTitle: true,
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: GestureDetector(
                onTap: () {
                  Get.to(ProfileScreen());
                },
                child: Image.asset(
                  "assets/menu.png",
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ))),
      ],
      leading: CircleAvatar(
        //backgroundColor: Colors.transparent, // Ensure transparency for the avatar background
        child: ClipOval(
          child: Image.asset(
              "assets/pic.jpeg",
              fit: BoxFit.cover, // Maintain aspect ratio and cover the entire circle
              height: double.infinity,// Fixed height
              width: 40 // Fixed width
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18.0),
          bottomLeft: Radius.circular(18.0),
        ),
      ),
    );
  }
}