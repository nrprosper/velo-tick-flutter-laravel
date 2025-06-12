import 'package:flutter/material.dart';
import 'package:mobile/data/responses/single_schedule_response.dart';

class SeatLayout extends StatefulWidget {
  final List<SeatAvailability> availabilities;
  const SeatLayout({Key? key, required this.availabilities}) : super(key: key);

  @override
  _SeatLayoutState createState() => _SeatLayoutState();
}

class _SeatLayoutState extends State<SeatLayout> {
  String? _selectedSeat;

  @override
  Widget build(BuildContext context) {
    // Group by row letter (e.g. "A", "B", …)
    final Map<String, List<SeatAvailability>> rows = {};
    for (var seat in widget.availabilities) {
      final row = seat.seatNumber.replaceAll(RegExp(r'\d'), '');
      rows.putIfAbsent(row, () => []).add(seat);
    }

    final sortedRowKeys = rows.keys.toList()..sort();

    return Column(
      children: sortedRowKeys.map((rowLetter) {
        final seats = rows[rowLetter]!..sort((a, b) {
          final ai = int.parse(a.seatNumber.replaceAll(RegExp(r'[A-Za-z]'), ''));
          final bi = int.parse(b.seatNumber.replaceAll(RegExp(r'[A-Za-z]'), ''));
          return ai.compareTo(bi);
        });

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              SizedBox(width: 24, child: Text(rowLetter)),
              const SizedBox(width: 8),
              ...seats.map((seat) {
                final isSelected = seat.seatNumber == _selectedSeat;
                final color = seat.isBooked
                    ? Colors.grey.shade400
                    : (isSelected ? Colors.blue : Colors.green);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: seat.isBooked
                        ? null
                        : () => setState(() => _selectedSeat = seat.seatNumber),
                    child: Container(
                      width: 32,
                      height: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        seat.seatNumber.replaceAll(rowLetter, ''),
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        );
      }).toList(),
    );
  }
}
