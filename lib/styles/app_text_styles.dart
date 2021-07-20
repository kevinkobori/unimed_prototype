import 'dart:ui';

import 'package:flutter/material.dart';

import 'app_sizes.dart';
import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle textFormFieldHintStyle = TextStyle(
    color: AppColors.hintText,
    fontSize: AppSizes.textFieldInput,
  );
  static final TextStyle labelStyle = TextStyle(
    color: AppColors.text,
    fontSize: AppSizes.textFieldLabel,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle titleLabelStyle = TextStyle(
    color: AppColors.text,
    fontSize: AppSizes.titleLabel,
    fontWeight: FontWeight.w600,
  );
}
