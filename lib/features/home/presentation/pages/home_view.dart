import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:temp_mail_app/features/global/resources/app_localization.dart';
import 'package:temp_mail_app/features/inbox/presentation/pages/inbox_view.dart';

import '../../../global/const/heights_widths.dart';
import '../../../global/resources/resources.dart';
import '../../../global/widgets/drawer_widget.dart';

class HomeView extends StatefulWidget {
  static final String route = "/HomeView";

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController emailTC = TextEditingController();

  FocusNode emailFN = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.appColors.white,
      appBar: AppBar(
        surfaceTintColor: R.appColors.white,
        backgroundColor: R.appColors.lightGreyColor.withValues(alpha: .5),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage(R.appImages.userImg),
            radius: 25,
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Container(
            height: 32.h,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: R.textStyles.inter(
                          fontWeight: FontWeight.w900,
                          fontSize: 22.sp,
                          color: R.appColors.primaryColor,
                        ),
                        children: [
                          TextSpan(text: "temp_mail".L()),
                          TextSpan(
                            text: ".pw",
                            style: R.textStyles.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 22.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "get_your_instant_temp_mail_address".L(),
                      style: TextStyle(
                        color: R.appColors.subTitleGrey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                Card(color: Colors.white, child: emailField()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: R.appDecorations.buttonStyle(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.copy, color: Colors.white),
                          w2,
                          Text(
                            "copy".L(),
                            style: R.textStyles.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: R.appColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: R.appDecorations.buttonStyle(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.edit_note, size: 23, color: Colors.white),
                          w2,
                          Text(
                            "random_mail".L(),
                            style: R.textStyles.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: R.appColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: InboxView(titleCenter: false)),
        ],
      ),
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
