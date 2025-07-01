import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:temp_mail_app/features/dashboard/presentation/dashboard_view.dart';
import 'package:temp_mail_app/features/global/const/heights_widths.dart';
import 'package:temp_mail_app/features/global/resources/app_localization.dart';

import '../../../global/resources/resources.dart';

class SplashView extends StatefulWidget {
  static final String route = '/SplashView';
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      Duration(seconds: 3),
      () => Get.offAllNamed(DashboardView.route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.appColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40.w,
              width: 40.w,
              decoration: R.appDecorations.imageDecoration(
                imagePath: R.appImages.appLogo,
              ),
            ),
            h4,
            Text(
              "temp_mail_pw".L(),
              style: R.textStyles.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            h10,
            SizedBox(
              width: 20.w,
              child: LinearProgressIndicator(color: R.appColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
