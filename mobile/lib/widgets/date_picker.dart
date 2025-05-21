import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:mobile/utils/colors.dart';

class DatePicker extends StatefulWidget {
  final String hint;
  final DateTime? initialDate;
  final void Function(DateTime?) onDateSelected;

  const DatePicker({
    super.key,
    required this.hint,
    this.initialDate,
    required this.onDateSelected,
  });

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final TextEditingController _controller = TextEditingController();
  DateTime? _selectedDate;

  @override
  void initState() {
    _selectedDate = widget.initialDate;
    if (_selectedDate != null) {
      _controller.text = DateFormat.yMMMd().format(_selectedDate!);
    }
    super.initState();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: DateTime(now.year, now.month, now.day),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _controller.text = DateFormat.yMMMd().format(picked);
      });
      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      readOnly: true,
      onTap: _pickDate,
      decoration: InputDecoration(
        hintText: widget.hint,
        suffixIcon: Icon(Iconsax.calendar, color: DColors.neutral5),
      ),
      validator: (value) =>
      value == null || value.isEmpty ? 'Please select a ${widget.hint.toLowerCase()}' : value,
    );
  }
}
