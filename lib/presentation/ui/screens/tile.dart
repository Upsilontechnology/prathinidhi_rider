import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/order_details_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/order_verify.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';

class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<Map<String, String>> items = [
    {
      'title': 'Mohammad Shahid',
      'subtitle': '+8801317 686 695',
      'status': '00:59:52'
    },
    {
      'title': 'Tamanna Akther',
      'subtitle': '+8801317 686 695',
      'status': '00:43:12'
    },
    {
      'title': 'Arman Ahmed',
      'subtitle': '+8801317 686 695',
      'status': '00:19:34'
    },
    {
      'title': 'Mohammad Shahid',
      'subtitle': '+8801317 686 695',
      'status': '00:59:52'
    },
    {
      'title': 'Tamanna Akther',
      'subtitle': '+8801317 686 695',
      'status': '00:43:12'
    },
    {
      'title': 'Arman Ahmed',
      'subtitle': '+8801317 686 695',
      'status': '00:19:34'
    },
  ];

  bool showAllItems =
      false; // Flag to control whether to show all items or just a subset

  @override
  Widget build(BuildContext context) {
    // Determine the number of items to display based on the flag
    final itemCount = showAllItems ? items.length : 3;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          // Show "Load More" button at the end of the list when not showing all items
          if (!showAllItems && index == itemCount - 1) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  // Update the state to show all items
                  setState(() {
                    showAllItems = true;
                  });
                },
                child: Column(
                  children: [
                    Text('More order', style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor),
                    ),
                    Divider(thickness: 2, color: Colors.red, indent: 110, endIndent: 110,
                    ),
                  ],
                ),
              ),
            );
          }
          return buildListItem(index);
        },
      ),
    );
  }

  Widget buildListItem(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(items[index]['title']!),
            subtitle: Text(items[index]['subtitle']!),
            trailing: Text(items[index]['status']!),
          ),
          //SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 42,
                width: 160,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(OrderVerifyScreen());
                  },
                  child: Text('Accept'),
                ),
              ),
              SizedBox(
                height: 42,
                width: 160,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(OrderDetailsScreen());
                  },
                  child: Text('Details'),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
