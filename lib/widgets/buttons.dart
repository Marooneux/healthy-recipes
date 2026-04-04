import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/radius.dart';
import '../themes/spacing.dart';
import '../themes/typography.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const AppButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.spacing400, vertical: AppSpacing.spacing200),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(AppRadius.radius10))
      ),
      child: Text(
        label,
        style: AppTypography.preset5.copyWith(
          color: AppColors.white
        ),
      )
    );
  }
}