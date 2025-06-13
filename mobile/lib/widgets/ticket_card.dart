import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile/data/responses/schedules_response.dart';
import 'package:mobile/screens/schedule_details_screen.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/routeline_with_arrow.dart';

class TicketCard extends StatelessWidget {
  final Schedule schedule;

  const TicketCard({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    final departureTime = DateFormat('h:mm a').format(schedule.departureTime);
    final arrivalTime = DateFormat('h:mm a').format(schedule.arrivalTime);
    final duration = schedule.arrivalTime.difference(schedule.departureTime);
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    final durationText = '$hours h $minutes m';

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScheduleDetailsScreen(scheduleId: schedule.id),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: DColors.primary6,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.confirmation_num, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          schedule.bus,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        schedule.price,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${schedule.availableSeats} seats left',
                        style: TextStyle(color: DColors.success6, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Route Details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(schedule.origin, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(departureTime, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Text(
                            durationText,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const RouteLineWithArrow(),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(schedule.destination, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(arrivalTime, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}