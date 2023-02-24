import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/buttons/custom_rounded_button.dart';
import '../controllers/payment_details_controller.dart';

class PaymentDetailsView extends GetView<PaymentDetailsController> {
  const PaymentDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Success'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 200.0,
            )
          ],
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/Success.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 168.0),
              child: Container(
                height: 240,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(blurRadius: 2, color: Colors.white70)
                ]),
                // co
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 78.0,
                      backgroundColor: Color.fromARGB(255, 8, 155, 13),
                      child: Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                        size: 128.0,
                      ),
                    ),
                    const SizedBox(
                      height: 29.0,
                    ),
                    Text(
                      "booked successfully".toUpperCase(),
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 12, 142, 16),
                              ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 16.0,
              ),
              child: CustomRoundedButton(
                radius: 8.0,
                width: double.infinity,
                color: const Color.fromARGB(255, 26, 136, 32),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: Center(
                    child: Text(
                      "back to home".toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
                onTap: () {
                  Get.toNamed("home");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
