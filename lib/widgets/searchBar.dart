import 'package:flutter/material.dart';
import 'package:mini_projet_equipe_7/themes/radius.dart';
import 'package:mini_projet_equipe_7/themes/spacing.dart';
import 'package:mini_projet_equipe_7/themes/typography.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String hintText;

  const SearchBarWidget({super.key, this.onChanged, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.spacing200, vertical: AppSpacing.spacing100),
      child: TextField(
        onChanged: onChanged,
        style: AppTypography.preset9,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: hintText,
          hintStyle: AppTypography.preset9,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(AppSpacing.spacing150),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(AppRadius.radius12),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(AppRadius.radius12),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(AppRadius.radius12),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
        ),
      ),
    );
  }
}
