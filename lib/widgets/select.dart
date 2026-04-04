import 'package:flutter/material.dart';
import 'package:mini_projet_equipe_7/widgets/radio.dart';
import 'package:mini_projet_equipe_7/themes/radius.dart';
import 'package:mini_projet_equipe_7/themes/spacing.dart';
import 'package:mini_projet_equipe_7/themes/typography.dart';

class SelectWidget extends StatefulWidget {
  final List<String> options;
  final String titre;
  final ValueChanged<int?>? onChanged;

  const SelectWidget({super.key, required this.options, required this.titre, this.onChanged});

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  bool _isOpen = false;
  String? _selectedLabel;  // affiché dans le bouton (null = aucun filtre actif)
  String? _radioSelected;  // valeur cochée dans la liste radio

  void _handleRadioChange(String? value) {
    final isNeutral = value == null || value == "Any";
    setState(() {
      _radioSelected = value;
      _selectedLabel = isNeutral ? null : value;
    });
    widget.onChanged?.call(isNeutral ? null : int.tryParse(value!.split(' ')[0]));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.spacing200, vertical: AppSpacing.spacing100),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () => setState(() => _isOpen = !_isOpen),
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.spacing150),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(AppRadius.radius12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _selectedLabel != null ? '${widget.titre}: $_selectedLabel' : widget.titre,
                      style: AppTypography.preset9,
                    ),
                    Icon(_isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            if (_isOpen)
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.spacing125,
                    vertical: AppSpacing.spacing100),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(AppRadius.radius8),
                ),
                child: RadioWidget(
                  options: widget.options,
                  onChanged: _handleRadioChange,
                  selectedValue: _radioSelected,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
