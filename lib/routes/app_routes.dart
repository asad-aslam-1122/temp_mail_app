import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:temp_mail_app/features/change_mail/presentation/change_mail_view.dart';

import '../features/dashboard/presentation/dashboard_view.dart';
import '../features/landing/presentation/pages/splash_view.dart';

abstract class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: SplashView.route,
      page: () => const SplashView(),
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
    GetPage(
      name: DashboardView.route,
      page: () => const DashboardView(),
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
    GetPage(
      name: ChangeMailView.route,
      page: () => const ChangeMailView(),
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 1000),
    ),
  ];
}
