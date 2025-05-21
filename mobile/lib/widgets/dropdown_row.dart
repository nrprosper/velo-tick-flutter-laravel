import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/utils/theme.dart';

class DropdownRow extends StatelessWidget {
  final String label;
  final String? value;
  final ValueChanged<String?> onChanged;
  final List<String> items;

  const DropdownRow({
    super.key,
    required this.label,
    this.value,
    required this.onChanged,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Iconsax.location, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Expanded(
            child: Theme(
              data: Theme.of(
                context,
              ).copyWith(inputDecorationTheme: const InputDecorationTheme()),
              child: DropdownButtonFormField<String>(
                value: value,
                hint: Text(
                  'Select ${label.toLowerCase()}',
                  style: DTheme.hintTextStyle,
                ),
                decoration: DTheme.dropdownInputDecoration.copyWith(
                  labelText: label,
                ),
                items:
                    items.map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item, style: DTheme.dropdownItemTextStyle),
                      );
                    }).toList(),
                onChanged: onChanged,
                validator:
                    (val) => val == null ? 'Please select a $label' : null,
                dropdownColor: Colors.white,
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down, color: DColors.neutral5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
