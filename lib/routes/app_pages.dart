import 'package:get/get.dart';
import '../pages/onboarding_page.dart';
import '../pages/home_page.dart';
import '../pages/restaurant_detail_page.dart';
import '../pages/checkout_page.dart';
import '../pages/order_history_page.dart';
import 'app_routes.dart';
import '../pages/main_navigation_page.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.ONBOARDING, page: () => const OnboardingPage()),
    GetPage(name: Routes.HOME, page: () => const HomePage()),
    GetPage(name: Routes.RESTAURANT_DETAIL, page: () => const RestaurantDetailPage()),
    GetPage(name: Routes.CHECKOUT, page: () => const CheckoutPage()),
    GetPage(name: Routes.ORDER_HISTORY, page: () => const OrderHistoryPage()),
    GetPage(name: Routes.MAIN_NAVIGATION, page: () => const MainNavigationPage()),
  ];
}
