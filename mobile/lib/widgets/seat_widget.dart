import 'package:flutter/material.dart';
import 'package:mobile/data/responses/single_schedule_response.dart';
import 'package:mobile/utils/colors.dart';

class SeatWidget extends StatelessWidget {
  final SeatAvailability seat;
  final bool isSelected;
  final VoidCallback? onTap;

  const SeatWidget({
    super.key,
    required this.seat,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = seat.isBooked
        ? DColors.neutral5
        : isSelected
        ? DColors.warning5
        : DColors.success5;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: DColors.neutral3),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.event_seat,
              size: 30,
              color: color,
            ),
            Positioned(
              bottom: 5,
              child: Text(
                seat.seatNumber,
                style: const TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
