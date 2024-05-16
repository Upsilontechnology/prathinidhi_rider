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
                  height: 25,
                ),
                Text(
                  "Pratinidhi Cash",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text("00 BDT",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.white))
              ],
            ),
            Image.asset("assets/card.png",height: 40,width: 80,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
