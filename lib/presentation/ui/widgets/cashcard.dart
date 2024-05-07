import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';

class Cashcard extends StatelessWidget {
  const Cashcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 600,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
           AppColors.primaryColor,
           Colors.grey.shade600,
        ]),
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Pratinidhi Cash",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Text("00 BDT",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white))
              ],
            ),
            Icon(
              Icons.add_card,
              size: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
