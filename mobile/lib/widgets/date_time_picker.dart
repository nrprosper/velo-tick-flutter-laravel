import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DateTimePicker extends StatefulWidget {
  final String hint;
  final ValueChanged<DateTime> onDateTimeSelected;

  const DateTimePicker({
    super.key,
    required this.hint,
    required this.onDateTimeSelected,
  });

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? _selectedDateTime;


  Future<void> _pickDateTime(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 1)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (date == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time == null) return;

    final dateTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );

    setState(() => _selectedDateTime = dateTime);
    widget.onDateTimeSelected(dateTime);
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _pickDateTime(context),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                _selectedDateTime == null
                    ? widget.hint
                    : "${_selectedDateTime!.toLocal()}".split('.').first,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            Icon(Iconsax.calendar, size: 20, color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
