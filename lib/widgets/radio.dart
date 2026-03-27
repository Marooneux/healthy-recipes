import 'package:flutter/material.dart';
import 'package:mini_projet_equipe_7/themes/colors.dart';
import 'package:mini_projet_equipe_7/themes/typography.dart';

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
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? AppColors.neutral900 : AppColors.neutral300,
                      width: 1.5,
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.neutral900,
                            ),
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: 8),
                Text(option, style: AppTypography.preset9.copyWith(color: AppColors.neutral900)),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
