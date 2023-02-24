import 'package:get/get.dart';

import '../modules/booking/bindings/booking_binding.dart';
import '../modules/booking/views/booking_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/matchinfo/bindings/matchinfo_binding.dart';
import '../modules/matchinfo/views/matchinfo_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/payment_details/bindings/payment_details_binding.dart';
import '../modules/payment/payment_details/views/payment_details_view.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING,
      page: () => BookingView(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: _Paths.MATCHINFO,
      page: () => const MatchinfoView(),
      binding: MatchinfoBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: PaymentBinding(),
      children: [
        GetPage(
          name: _Paths.PAYMENT_DETAILS,
          page: () => const PaymentDetailsView(),
          binding: PaymentDetailsBinding(),
        ),
      ],
    ),
  ];
}
