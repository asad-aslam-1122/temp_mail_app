import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:temp_mail_app/features/global/resources/app_localization.dart';

import '../../../global/resources/resources.dart';

class InboxView extends StatefulWidget {
  final bool titleCenter;

  const InboxView({super.key, required this.titleCenter});

  @override
  State<InboxView> createState() => _InboxViewState();
}

class _InboxViewState extends State<InboxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.appColors.white,
      appBar: AppBar(
        backgroundColor: R.appColors.white,
        surfaceTintColor: R.appColors.white,
        title: Text(
          "inbox".L(),
          style: R.textStyles.inter(
            fontWeight: FontWeight.w800,
            fontSize: 19.sp,
            color: R.appColors.black,
          ),
        ),
        centerTitle: widget.titleCenter,
        actions: [
          IconButton(
            onPressed: () {},
            style: R.appDecorations.iconButtonStyle(
              background: R.appColors.primaryColor,
            ),
            icon: Icon(Icons.refresh, color: R.appColors.white),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
        itemBuilder: (context, index) => Card(
          color: R.appColors.white,
          elevation: 0.5,
          shadowColor: R.appColors.primaryColor,
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: R.appColors.primaryColor,
              child: Center(
                child: Text(
                  "A",
                  style: R.textStyles.urbanist(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: R.appColors.white,
                  ),
                ),
              ),
            ),
            title: Text(
              "Asad",
              style: R.textStyles.inter(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: R.appColors.black,
              ),
            ),
            subtitle: Text(
              "hey, how are you.",
              style: R.textStyles.inter(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                color: R.appColors.subTitleGrey,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ),
      ),
    );
  }
}
