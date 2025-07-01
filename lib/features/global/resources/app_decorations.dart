import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:temp_mail_app/features/global/resources/app_localization.dart';
import 'package:temp_mail_app/features/global/resources/resources.dart';

class AppDecorations {
  InputDecoration inputDecorationWithHint({
    required String hintText,
    TextStyle? hintTextStyle,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Color? filledColor,
    double? borderRadius,
    double? contentPadding,
    Color? grey,
    bool isReadOnly = false,
    bool isLocalized = true,
    bool? showBorder,
    Color? hintColor,
  }) {
    return InputDecoration(
      contentPadding: EdgeInsets.all(contentPadding ?? 12),
      fillColor: filledColor ?? R.appColors.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: (showBorder ?? false)
            ? BorderSide(color: R.appColors.borderColor, width: 1.2)
            : BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: BorderSide(color: R.appColors.red, width: 1.2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: BorderSide(
          color: isReadOnly
              ? grey ?? R.appColors.transparent
              : R.appColors.borderColor,
          width: 1.2,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: BorderSide(color: R.appColors.red, width: 1.2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        borderSide: BorderSide(
          color: grey ?? R.appColors.borderColor,
          width: 1.2,
        ),
      ),
      errorMaxLines: 2,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      hintText: isLocalized ? hintText.L() : hintText,
      isDense: true,
      errorStyle: R.textStyles.poppins(fontSize: 11.px, color: R.appColors.red),
      hintStyle:
          hintTextStyle ??
          R.textStyles.poppins().copyWith(
            color: hintColor ?? R.appColors.black.withValues(alpha: .5),
            fontSize: 14.px,
          ),
    );
  }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(R.appColors.primaryColor),
      shape: WidgetStatePropertyAll(
        ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  BoxDecoration generalDec({double? radius}) {
    return BoxDecoration(
      color: R.appColors.primaryColor,
      borderRadius: BorderRadius.circular(radius ?? 6),
    );
  }

  BoxDecoration bottomRadiusDec({
    double? radiusX,
    double? radiusY,
    bool fromBottom = true,
    required Color backgroundColor,
  }) {
    return BoxDecoration(
      color: backgroundColor,
      borderRadius: fromBottom
          ? BorderRadius.vertical(
              bottom: Radius.elliptical(radiusX ?? 250, radiusY ?? 70),
            )
          : BorderRadius.vertical(
              top: Radius.elliptical(radiusX ?? 16, radiusY ?? 16),
            ),
    );
  }

  ButtonStyle iconButtonStyle({required Color background}) {
    return ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(background),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
      ),
    );
  }

  BoxDecoration imageDecoration({required String imagePath}) {
    return BoxDecoration(
      image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
    );
  }
}
