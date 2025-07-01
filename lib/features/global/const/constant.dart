import 'package:flutter/material.dart';
import 'package:temp_mail_app/features/home/data/drawer_model.dart';

import '../../premium/data/model/subscription_model.dart';
import '../resources/resources.dart';

class Constant {
  static List<SubscriptionModel> subscriptionModelList = [
    SubscriptionModel(
      numOfMonths: "1",
      imagePath: R.appImages.goodImg,
      packagePrice: "\$100",
      packageType: "good",
    ),
    SubscriptionModel(
      numOfMonths: "6",
      imagePath: R.appImages.bestImg,
      packagePrice: "\$250",
      packageType: "best",
    ),
    SubscriptionModel(
      numOfMonths: "12",
      imagePath: R.appImages.excellentImg,
      packagePrice: "\$500",
      packageType: "excellent",
    ),
  ];
  static List<DrawerModel> drawerMenuList = [
    DrawerModel(title: "about_us", icon: Icons.info_outline),
    DrawerModel(title: "rate_us", icon: Icons.rate_review_outlined),
    DrawerModel(title: "privacy_policy", icon: Icons.privacy_tip_outlined),
    DrawerModel(title: "contact_us", icon: Icons.mail_outline),
    DrawerModel(title: "follow_on_page", icon: Icons.facebook_outlined),
  ];
}
