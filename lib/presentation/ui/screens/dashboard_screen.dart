
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/tile.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/navbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/cashcard.dart';
class dashBoardScreen extends StatefulWidget {
  const dashBoardScreen({super.key});

  @override
  State<dashBoardScreen> createState() => _dashBoardScreenState();
}

class _dashBoardScreenState extends State<dashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(icon: CircleAvatar(
        radius:65,
          child: Icon(Icons.person)
      ),
      ),
      bottomNavigationBar: navbuttom(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              //SizedBox(height: 10,),
              Container(
                height: 30,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(" Notice : In this section a notice appear for all ride")),
              ),
              Divider(
                height: 40, // Adjust the height of the divider
                thickness: 5, // Specify the thickness of the divider
                color: Colors.grey.shade300, // Set the color of the divider
                indent: 10, // Set the left indent of the divider
                endIndent: 10, // Set the right indent of the divider
              ),
              Cashcard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50,),
                  TextButton(onPressed: (){},child: Text("Withdraw ",style: TextStyle(fontWeight: FontWeight.w800,color: AppColors.primaryColor,fontSize: 20),),)
                ],
              ),
              Divider(
                thickness: 5, // Specify the thickness of the divider
                color: Colors.grey.shade300, // Set the color of the divider
                indent: 10, // Set the left indent of the divider
                endIndent: 10, // Set the right indent of the divider
              ),
              //SizedBox(height: 10,),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Order Status",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),)),
              SizedBox(height: 5,),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 350,
                      width: 900,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListViewScreen(),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () => {
          }, // Example: Open notifications screen
          child: Icon(Icons.home_filled,color: Colors.white,),
          elevation: 2.0,
          shape: CircleBorder(),// Elevation of the FAB
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}


