import 'package:flutter/material.dart';
import '../themes/colors.dart';
import '../themes/spacing.dart';
import '../themes/typography.dart';

class StepWidget extends StatelessWidget {
  final String text;

  const StepWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSpacing.spacing200),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.arrow_circle_right_outlined,
          size: 20.0,
          color: AppColors.primary,
        ),
        const SizedBox(width: AppSpacing.spacing150),
        Expanded(
          child: Text(
            text,
            style: (AppTypography.preset9).copyWith(
              color: AppColors.neutral600,
            ),
          ),
        ),
      ],
    ),
    );
  }
}
