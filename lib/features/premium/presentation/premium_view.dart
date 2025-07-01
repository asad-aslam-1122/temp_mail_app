import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:temp_mail_app/features/change_mail/presentation/change_mail_view.dart';
import 'package:temp_mail_app/features/global/const/heights_widths.dart';
import 'package:temp_mail_app/features/global/resources/app_localization.dart';
import 'package:temp_mail_app/features/premium/data/model/subscription_model.dart';

import '../../global/const/constant.dart';
import '../../global/resources/resources.dart';

class PremiumScreen extends StatefulWidget {
  PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.appColors.white,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Material(
            color: R.appColors.primaryColor,

            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(250, 70),
            ),
            child: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                decoration: R.appDecorations.bottomRadiusDec(
                  backgroundColor: R.appColors.primaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star, size: 25),

                    Text(
                      "go_premium".L(),
                      style: R.textStyles.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: R.appColors.white,
                      ),
                    ),

                    Text(
                      "listen_to_any_sessions".L(),
                      textAlign: TextAlign.center,
                      style: R.textStyles.urbanist(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                        color: R.appColors.white,
                      ),
                    ),

                    Text(
                      "just_search_for_sessions_you_love_and_hit_play".L(),
                      textAlign: TextAlign.center,
                      style: R.textStyles.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: R.appColors.white,
                      ),
                    ),

                    pageViewIndicatorWidget(),

                    Text(
                      "free_Days_trials".L(),
                      textAlign: TextAlign.center,
                      style: R.textStyles.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: R.appColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          h2,

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              shrinkWrap: true,
              itemBuilder: (context, index) => subscriptionItemWidget(
                subscriptionModel: Constant.subscriptionModelList[index],
              ),
              itemCount: Constant.subscriptionModelList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget pageViewIndicatorWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        w5,
        Expanded(child: Divider(color: R.appColors.white, thickness: 1)),
        // const PageViewIndicator(
        //   length: 3,
        //   currentIndex: 0,
        //   currentColor: Colors.white,
        //   otherColor: Colors.white,
        // ),
        w10,
        Expanded(child: Divider(color: R.appColors.white, thickness: 1)),
        w5,
      ],
    );
  }

  Widget subscriptionItemWidget({
    required SubscriptionModel subscriptionModel,
  }) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(ChangeMailView.route);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: R.appDecorations.bottomRadiusDec(
          backgroundColor: R.appColors.primaryColor,
          fromBottom: false,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(subscriptionModel.imagePath),
                    ),
                  ),
                ),
                w5,

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${subscriptionModel.numOfMonths} Months",
                      textAlign: TextAlign.center,
                      style: R.textStyles.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      subscriptionModel.packageType.L(),
                      textAlign: TextAlign.center,
                      style: R.textStyles.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              subscriptionModel.packagePrice,
              textAlign: TextAlign.center,
              style: R.textStyles.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
