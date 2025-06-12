import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/seat_widget.dart';

class ScheduleDetailsScreen extends ConsumerStatefulWidget {
  final int scheduleId;

  const ScheduleDetailsScreen({super.key, required this.scheduleId});

  @override
  ConsumerState<ScheduleDetailsScreen> createState() =>
      _ScheduleDetailsScreenState();
}

class _ScheduleDetailsScreenState extends ConsumerState<ScheduleDetailsScreen> {
  int? selectedSeatId;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(scheduleDetailNotifierProvider(widget.scheduleId));
    final buyTicketState = ref.watch(buyTicketNotifierProvider);
    
    ref.listen(buyTicketNotifierProvider, (prev, curr) {
      if(curr.isSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Seat booked successfully!')),
        );
        ref.read(scheduleDetailNotifierProvider(widget.scheduleId).notifier).fetchSchedule();
        ref.read(schedulesNotifierProvider.notifier).fetchSchedules();

        setState(() {
          selectedSeatId = null;
        });

      } else if (curr.isError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Booking failed: ${curr.error.toString()}')),
        );
      }
    });


    return Scaffold(
      appBar: AppBar(title: const Text("Schedule Details")),
      body: SafeArea(
        top: false,
        child: RefreshIndicator(
          onRefresh: () async {
            await ref
                .read(
                  scheduleDetailNotifierProvider(widget.scheduleId).notifier,
                )
                .fetchSchedule();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: () {
              if (state.isInit || state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.isSuccess) {
                final schedule = state.data!;

                final seatsByColumn = {
                  'A':
                      schedule.availabilities
                          .where((seat) => seat.seatNumber.startsWith('A'))
                          .toList(),
                  'B':
                      schedule.availabilities
                          .where((seat) => seat.seatNumber.startsWith('B'))
                          .toList(),
                  'C':
                      schedule.availabilities
                          .where((seat) => seat.seatNumber.startsWith('C'))
                          .toList(),
                  'D':
                      schedule.availabilities
                          .where((seat) => seat.seatNumber.startsWith('D'))
                          .toList(),
                  'E':
                      schedule.availabilities
                          .where((seat) => seat.seatNumber.startsWith('E'))
                          .toList(),
                };

                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildLegend(DColors.warning5, 'Selected'),
                          const SizedBox(width: 20),
                          _buildLegend(DColors.neutral5, 'Booked'),
                          const SizedBox(width: 20),
                          _buildLegend(DColors.success5, 'Available'),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var col in ['A', 'B', 'C', 'D', 'E'])
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children:
                                  seatsByColumn[col]!.map((seat) {
                                    return SeatWidget(
                                      seat: seat,
                                      isSelected:
                                      selectedSeatId == seat.seatId,
                                      onTap:
                                      seat.isBooked
                                          ? null
                                          : () {
                                        setState(() {
                                          selectedSeatId =
                                              seat.seatId;
                                        });
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: DColors.primary6),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                style: TextStyle(color: Colors.white),
                                "Book Seat",
                              ),
                              IconButton(
                                onPressed: selectedSeatId == null || buyTicketState.isLoading
                                    ? null
                                    : () {
                                  ref
                                      .read(buyTicketNotifierProvider.notifier)
                                      .buyTicket(widget.scheduleId, selectedSeatId!);
                                },
                                icon: buyTicketState.isLoading
                                    ? const CircularProgressIndicator(color: Colors.white)
                                    : const Icon(Icons.arrow_forward, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              } else if (state.isError) {
                return Center(child: Text('Error: ${state.error.toString()}'));
              }
              return const SizedBox.shrink();
            }(),
          ),
        ),
      ),
    );
  }
}

Widget _buildLegend(Color color, String text) {
  return Row(
    children: [
      Icon(Icons.event_seat, color: color, size: 24),
      const SizedBox(width: 5),
      Text(text),
    ],
  );
}
