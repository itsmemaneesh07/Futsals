import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/buttons/custom_rounded_button.dart';
import '../bindings/payment_binding.dart';
import '../controllers/payment_controller.dart';
import '../payment_details/views/payment_details_view.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        centerTitle: true,
        backgroundColor: Colors.green,
        
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 456,
                height: 288,
                child: Image.asset(
                  'assets/images/Futsals.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    CustomTableRow(
                        title: "Futsal Name:", value: "Websoft Futsal"),
                    SizedBox(
                      height: 12.0,
                    ),
                    CustomTableRow(
                        title: "Location:", value: "Shirjana Chowk, Street-18"),
                    SizedBox(
                      height: 12.0,
                    ),
                    CustomTableRow(title: "Date:", value: "15/feb/2023"),
                    SizedBox(
                      height: 12.0,
                    ),
                    CustomTableRow(
                      title: "Time:",
                      value: "10:00 Am",
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    CustomTableRow(
                      title: "Bill:",
                      value: "\$ 12.80",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 55.0,
                    vertical: 18.0,
                  ),
                  child: Column(
                    children: [
                      CustomRoundedButton(
                        radius: 6.0,
                        width: double.maxFinite,
                        color: const Color.fromARGB(255, 46, 124, 49),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 12.0,
                          ),
                          child: Center(
                            child: Text(
                              "Click to Pay".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(
                            () => const PaymentDetailsView(),
                            binding: PaymentBinding(),
                          );
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ));
    
  }
}
class CustomTableRow extends StatelessWidget {
  const CustomTableRow({
    Key? key,
    required this.title,
    required this.value,
    this.titleStyle,
    this.valueStyle,
  }) : super(key: key);
  final String title;
  final String value;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.toUpperCase(),
            style: titleStyle ??
                Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
          ),
          Text(
            value.toUpperCase(),
            style: valueStyle ??
                Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
          ),
        ],
      ),
    );
  }
}
