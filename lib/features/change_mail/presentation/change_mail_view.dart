import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:temp_mail_app/features/global/const/heights_widths.dart';
import 'package:temp_mail_app/features/global/resources/app_localization.dart';
import 'package:temp_mail_app/features/global/resources/app_validator.dart';

import '../../global/resources/resources.dart';
import '../../global/widgets/drop_down_widget.dart';

class ChangeMailView extends StatefulWidget {
  static final String route = "/ChangeMailView";

  const ChangeMailView({super.key});

  @override
  State<ChangeMailView> createState() => _ChangeMailViewState();
}

class _ChangeMailViewState extends State<ChangeMailView> {
  TextEditingController userNameTC = TextEditingController();
  FocusNode userNameFN = FocusNode();

  List<String> dropDownList = ["tahir.com", "asad.com"];

  String? selectedDomain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.appColors.white,
      appBar: AppBar(
        backgroundColor: R.appColors.primaryColor,
        surfaceTintColor: R.appColors.primaryColor,
        iconTheme: IconThemeData(color: R.appColors.white),
        title: Text(
          "change_mail".L(),
          style: R.textStyles.inter(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
            color: R.appColors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            userNameField(),
            h1P5,
            DropdownWidget(
              validator: AppValidator.validateDropdown,
              selectedValue: selectedDomain,
              hintText: 'select_domain',
              onChanged: (String? value) {},
              list: dropDownList,
            ),
            h3,
            customSmallButton(onPressed: () {}, title: "save_changes".L()),
            h3,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "On this page, Temp Mail PW allows you to change or recover temporary email addresses by "
                  "entering the desired email address and selecting the domain name.",
                  style: R.textStyles.poppins(
                    fontSize: 14.sp,
                    color: R.appColors.subTitleGrey,
                  ),
                ),
                h1,

                Text(
                  "Create New Custom Email ID:",
                  style: R.textStyles.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: R.appColors.black,
                  ),
                ),
                h0P1,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\t\t• Select Domain from the drop-down menu.",
                      style: R.textStyles.poppins(
                        fontSize: 14.sp,
                        color: R.appColors.subTitleGrey,
                      ),
                    ),
                    Text(
                      "\t\t• Click Save Changes.",
                      style: R.textStyles.poppins(
                        fontSize: 14.sp,
                        color: R.appColors.subTitleGrey,
                      ),
                    ),
                    Text(
                      "\t\t• Write your username in the field.",
                      style: R.textStyles.poppins(
                        fontSize: 14.sp,
                        color: R.appColors.subTitleGrey,
                      ),
                    ),
                  ],
                ),
                h1,

                Text(
                  "How To Recover Temp Mail:",
                  style: R.textStyles.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: R.appColors.black,
                  ),
                ),
                h0P1,

                Text(
                  "To recover your deleted temporary mail, you need to remember your old temporary mail.",
                  style: R.textStyles.poppins(
                    fontSize: 14.sp,
                    color: R.appColors.subTitleGrey,
                  ),
                ),
                h0P1,

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\t\t• In Username, write your old Temp Mail username.",
                      style: R.textStyles.poppins(
                        fontSize: 14.sp,
                        color: R.appColors.subTitleGrey,
                      ),
                    ),
                    Text(
                      "\t\t• Select your old temporary mail domain name from the drop-down menu.",
                      style: R.textStyles.poppins(
                        fontSize: 14.sp,
                        color: R.appColors.subTitleGrey,
                      ),
                    ),
                    Text(
                      "\t\t• Click Save Changes.",
                      style: R.textStyles.poppins(
                        fontSize: 14.sp,
                        color: R.appColors.subTitleGrey,
                      ),
                    ),
                  ],
                ),
                h1,
                Text(
                  "Wow, your temp mail recovered, so now you can use it again.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customSmallButton({
    required String title,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: R.appDecorations.generalDec(),
        child: Center(
          child: Text(
            title,
            style: R.textStyles.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: R.appColors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget userNameField() {
    return TextFormField(
      controller: userNameTC,
      focusNode: userNameFN,
      maxLength: 15,
      autofillHints: [AutofillHints.name],
      keyboardType: TextInputType.text,

      decoration: R.appDecorations.inputDecorationWithHint(
        hintText: "user_name",
        filledColor: R.appColors.fillColor,
        contentPadding: 16,
        borderRadius: 12,
        prefixIcon: Icon(
          Icons.person,
          color: R.appColors.subTitleGrey,
          size: 25,
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: AppValidator.validateName,
    );
  }
}
