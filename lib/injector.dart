import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/dashboard/provider/dashboard_vm.dart';

class Injector extends StatelessWidget {
  final Widget routerWidget;
  const Injector({super.key, required this.routerWidget});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DashboardVm()),
        // ChangeNotifierProvider(create: (context) => ModeVM()),
        //
        //
        //
        //
        //
        // ChangeNotifierProvider(create: (context) => HomeVM()),
        // ChangeNotifierProvider(create: (context) => OnboardVm()),
      ],
      child: routerWidget,
    );
  }
}
