import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp_mail_app/features/dashboard/provider/dashboard_vm.dart';
import 'package:temp_mail_app/features/home/presentation/pages/home_view.dart';
import 'package:temp_mail_app/features/premium/presentation/premium_view.dart';

import '../../global/resources/resources.dart';
import '../../inbox/presentation/pages/inbox_view.dart';

class DashboardView extends StatefulWidget {
  static final String route = "/DashboardView";

  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  TextEditingController emailTC = TextEditingController();

  FocusNode emailFN = FocusNode();

  List<Widget> screenList = [
    HomeView(),
    InboxView(titleCenter: true),
    PremiumScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardVm>(
      builder: (context, dashboardVm, child) {
        return Scaffold(
          backgroundColor: R.appColors.white,
          body: screenList[dashboardVm.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.email), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.edit), label: ""),
            ],
            elevation: 2,
            iconSize: 30,
            selectedIconTheme: IconThemeData(color: R.appColors.primaryColor),
            backgroundColor: R.appColors.white,
            currentIndex: dashboardVm.selectedIndex,
            onTap: (newValue) {
              dashboardVm.selectedIndex = newValue;
              dashboardVm.updateMethod();
            },
          ),
        );
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      controller: emailTC,
      focusNode: emailFN,
      readOnly: true,
      autofillHints: [AutofillHints.email],
      keyboardType: TextInputType.emailAddress,
      decoration: R.appDecorations.inputDecorationWithHint(
        hintText: "random_mail",
        filledColor: R.appColors.fillColor,
        contentPadding: 16,
        borderRadius: 12,
        prefixIcon: Icon(
          Icons.email,
          color: R.appColors.subTitleGrey,
          size: 25,
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
