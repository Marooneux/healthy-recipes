import 'package:flutter/material.dart';
import 'package:mini_projet_equipe_7/themes/radius.dart';
import 'package:mini_projet_equipe_7/themes/spacing.dart';
import 'package:mini_projet_equipe_7/themes/typography.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.spacing200, vertical: AppSpacing.spacing100),
        child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              backgroundColor: const WidgetStatePropertyAll(Colors.white),
              shadowColor: const WidgetStatePropertyAll(Colors.transparent),
              elevation: const WidgetStatePropertyAll(0),
              controller: controller,
              shape: const WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(AppRadius.radius12),
                  side: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              leading: const Icon(Icons.search),
              hintText: "Search by name or ingredient...",
              hintStyle: const WidgetStatePropertyAll(AppTypography.preset9),
            );
          },
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return [];
          },
        ),
      ),
    );
  }
}
