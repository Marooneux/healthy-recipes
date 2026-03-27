import 'package:flutter/material.dart';
import 'package:mini_projet_equipe_7/widgets/radio.dart';
import 'package:mini_projet_equipe_7/themes/radius.dart';
import 'package:mini_projet_equipe_7/themes/spacing.dart';

class SelectWidget extends StatefulWidget {
  final List<String> options;
  final String titre;

  const SelectWidget({super.key, required this.options, required this.titre});

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () => setState(() => _isOpen = !_isOpen),
          child: Container(
            padding: const EdgeInsets.all(Spacing.spacing150),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(AppRadius.radius12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.titre),
                Icon(_isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        if (_isOpen)
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Spacing.spacing125,
                vertical: Spacing.spacing100),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(AppRadius.radius8),
            ),
            child: RadioWidget(options: widget.options),
          ),
      ],
      ),
      ),
    );
  }
}
