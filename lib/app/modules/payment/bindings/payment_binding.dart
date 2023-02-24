import 'package:get/get.dart';

import 'package:futsals/app/modules/payment/controllers/payment_details_controller.dart';

import '../controllers/payment_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentDetailsController>(
      () => PaymentDetailsController(),
    );
    Get.lazyPut<PaymentController>(
      () => PaymentController(),
    );
  }
}
