import 'package:flutter/material.dart';
import 'package:mini_projet_equipe_7/themes/colors.dart';
import 'package:mini_projet_equipe_7/themes/typography.dart';
import 'package:mini_projet_equipe_7/themes/spacing.dart';

class RadioWidget extends StatefulWidget {
  final List<String> options;

  const RadioWidget({super.key, required this.options});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.options.map((option) {
        bool isSelected = _selected == option;
        return GestureDetector(
          onTap: () => setState(() => _selected = option),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.spacing050),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: AppSpacing.spacing250,
                  height: AppSpacing.spacing250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? AppColors.primary : AppColors.neutral300,
                      width: AppSpacing.spacing025,
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: AppSpacing.spacing150,
                            height: AppSpacing.spacing150,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primary,
                            ),
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: AppSpacing.spacing100),
                Text(option, style: AppTypography.preset9.copyWith(color: Colors.black)),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
