import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:temp_mail_app/features/global/const/constant.dart';
import 'package:temp_mail_app/features/global/const/heights_widths.dart';
import 'package:temp_mail_app/features/global/resources/app_localization.dart';
import 'package:temp_mail_app/features/home/data/drawer_model.dart';

import '../resources/resources.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: R.appColors.white,
      surfaceTintColor: R.appColors.white,
      elevation: 8,
      child: Column(
        children: [
          userHeaderWidget(),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                DrawerModel drawerModel = Constant.drawerMenuList[index];
                return ListTile(
                  leading: Icon(
                    drawerModel.icon,
                    size: 25,
                    color: R.appColors.primaryColor,
                  ),
                  title: Text(
                    '\t ${drawerModel.title.L()}',
                    style: R.textStyles.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: R.appColors.black,
                    ),
                  ),
                );
              },
              itemCount: Constant.drawerMenuList.length,
            ),
          ),

          // ListTile(
          //   title: Row(children: []),
          //   onTap: () {
          //     // launchUrlApp(about);
          //   },
          // ),
          //
          // ListTile(
          //   title: const Row(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 10),
          //         child: Icon(
          //           Icons.rate_review_outlined,
          //           size: 30,
          //           color: Colors.black54,
          //         ),
          //       ),
          //       Text(
          //         '\t Rate us',
          //         style: TextStyle(fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          //   onTap: () {
          //     // showDialog(
          //     //   context: context,
          //     //   barrierDismissible: true,
          //     //   builder: (BuildContext cont) => SlideRatingDialog(
          //     //     onRatingChanged: (rating) {
          //     //       setState(() {
          //     //         ratingStars = rating;
          //     //       });
          //     //     },
          //     //     buttonOnTap: () async {
          //     //       if (ratingStars <= 3) {
          //     //         String result;
          //     //
          //     //         platformVersion =
          //     //             await DeviceInformation.platformVersion;
          //     //         modelName = await DeviceInformation.deviceModel;
          //     //         deviceName = await DeviceInformation.deviceName;
          //     //         productName = await DeviceInformation.productName;
          //     //
          //     //         switch (ratingStars.toString()) {
          //     //           case "1":
          //     //             {
          //     //               result = "Worst";
          //     //             }
          //     //             break;
          //     //
          //     //           case "2":
          //     //             {
          //     //               result = "Not Good";
          //     //             }
          //     //             break;
          //     //
          //     //           case "3":
          //     //             {
          //     //               result = "Good";
          //     //             }
          //     //             break;
          //     //
          //     //           case "4":
          //     //             {
          //     //               result = "Excellent";
          //     //             }
          //     //             break;
          //     //
          //     //           default:
          //     //             {
          //     //               result = "OutStanding";
          //     //             }
          //     //             break;
          //     //         }
          //     //
          //     //         setState(() {});
          //     //
          //     //         final emailUrl = Uri(
          //     //           scheme: "mailto",
          //     //           path: "support@tempmail.pw",
          //     //           query: encodeQueryParameters(<String, String>{
          //     //             "subject": "TempMail App Rating",
          //     //             "body":
          //     //                 "Platform Version =\t $platformVersion \n"
          //     //                 "Model Name =\t $modelName \n"
          //     //                 "Product Name =\t $productName \n"
          //     //                 "Device Name =\t $deviceName \n"
          //     //                 "\nAccording to your review out app is $result\n"
          //     //                 "\nThanks For Giving Your Reviews to Us\n "
          //     //                 "Your Well Wishers,\n"
          //     //                 "TempMail.PW",
          //     //           }),
          //     //         );
          //     //
          //     //         try {
          //     //           launchUrl(emailUrl);
          //     //         } catch (e) {
          //     //           throw Exception("Could Not Lunch $emailUrl");
          //     //         }
          //     //       } else {
          //     //         StoreRedirect.redirect(
          //     //           androidAppId:
          //     //               "com.tempmail.pw.disposable.temporary.email",
          //     //           iOSAppId:
          //     //               "com.tempmail.pw.disposable.temporary.email",
          //     //         );
          //     //       }
          //     //     },
          //     //   ),
          //     // );
          //   },
          // ),
          //
          // ListTile(
          //   title: const Row(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 10),
          //         child: Icon(
          //           Icons.privacy_tip,
          //           size: 30,
          //           color: Colors.black54,
          //         ),
          //       ),
          //       Text(
          //         '\t Privacy Policy',
          //         style: TextStyle(fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          //   onTap: () {
          //     // launchUrlApp(privacy);
          //   },
          // ),
          //
          // ListTile(
          //   title: const Row(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 10),
          //         child: Icon(
          //           Icons.mail_outline,
          //           size: 30,
          //           color: Colors.black54,
          //         ),
          //       ),
          //       Text(
          //         '\t Contact us',
          //         style: TextStyle(fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          //   onTap: () {
          //     // launchUrlApp(contact);
          //   },
          // ),
          //
          // ListTile(
          //   title: const Row(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 10),
          //         child: Icon(Icons.facebook, size: 30, color: Colors.black54),
          //       ),
          //       Text(
          //         '\t Follow on Facebook',
          //         style: TextStyle(fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          //   onTap: () {
          //     // launchUrlApp(instagram);
          //   },
          // ),
        ],
      ),
    );
  }

  Widget userHeaderWidget() {
    return DrawerHeader(
      decoration: BoxDecoration(color: R.appColors.primaryColor),
      child: UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: R.appColors.primaryColor),
        accountName: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.person_rounded,
              color: R.appColors.primaryColor,
              shadows: [Shadow(color: R.appColors.white, blurRadius: 25)],
              size: 25,
            ),
            w4,
            Text(
              "temp_mail_pw".L(),
              style: R.textStyles.inter(
                fontSize: 16.sp,
                color: R.appColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        accountEmail: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.mail_rounded,
              color: R.appColors.primaryColor,
              shadows: [Shadow(color: R.appColors.white, blurRadius: 25)],
              size: 25,
            ),
            w4,
            Text(
              "asad@gmail.com",
              style: R.textStyles.inter(
                fontSize: 14.sp,
                color: R.appColors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
