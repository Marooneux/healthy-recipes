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
            padding: const EdgeInsets.symmetric(vertical: Spacing.spacing050),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: Spacing.spacing250,
                  height: Spacing.spacing250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? AppColors.neutral900 : AppColors.neutral300,
                      width: Spacing.spacing025,
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: Spacing.spacing150,
                            height: Spacing.spacing150,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.neutral900,
                            ),
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: Spacing.spacing100),
                Text(option, style: AppTypography.preset9.copyWith(color: Colors.black)),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
