import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/order_verify.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/appbar.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});
  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          ontap: () {
            Navigator.of(context).pop();
          }),
      body: Column(
        children: [

          Text("data"),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 850,
                    width: 390,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Name",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            readOnly: true,
                            decoration: InputDecoration(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Mobile No",
                              style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            readOnly: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Location",
                              style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            maxLines: 2,
                            readOnly: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Product Description",
                              style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            maxLines: 3,
                            readOnly: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Client Budget",
                              style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            readOnly: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Company Demand",
                              style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            readOnly: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Product Image",
                              style: Theme.of(context).textTheme.titleMedium),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          commision_card
        ],
      ),
    );
  }

  Container get commision_card {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Your Commission",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900)),
            Text(
              "100 BDT",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62),
              child: CustomTextButton(
                onPressed: () {
                  Get.to(OrderVerifyScreen());
                },
                text: 'Accept',
                color: Colors.white,
                txtcolor: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
