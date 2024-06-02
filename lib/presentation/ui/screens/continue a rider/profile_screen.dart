import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/continue%20a%20rider/dashboard_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/dashapp.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/floatingaction.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/navbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<MenuItem> menuItems = [
    MenuItem(title: 'Profile', icon: Icons.account_circle),
    MenuItem(title: 'Notifications', icon: Icons.notifications),
    MenuItem(title: 'History', icon: Icons.history),
    MenuItem(title: 'Rewards Point', icon: Icons.emoji_events_sharp),
    MenuItem(title: 'Legal', icon: Icons.info_outlined),
    MenuItem(title: 'Log out', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: dashAppBar(
        icon: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: CircleAvatar(radius: 50,
              backgroundImage: AssetImage("assets/pic.jpeg")
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final menuItem = menuItems[index];
              return ListTile(
                leading: Icon(menuItem.icon),
                title: Text(menuItem.title),
                onTap: () {},
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.grey[400],
                indent: 45,
                endIndent: 45,
              );
            },
          ),
        ],
      ),
      // bottomNavigationBar: navbuttom(),
      // floatingActionButton: floatingaction(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class MenuItem {
  final String title;
  final IconData icon;

  MenuItem({required this.title, required this.icon});
}
