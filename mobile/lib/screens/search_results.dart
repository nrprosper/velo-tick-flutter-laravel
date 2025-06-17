import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/widgets/shimmers/ticket_card_shimmer.dart';
import 'package:mobile/widgets/ticket_card.dart';

class SearchResults extends ConsumerWidget {
  final String from;
  final String to;
  final DateTime date;

  const SearchResults({
    required this.from,
    required this.to,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedulesState = ref.watch(schedulesNotifierProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (schedulesState.isInit) {
        ref.read(schedulesNotifierProvider.notifier).fetchSchedules(
          origin: from,
          destination: to,
          date: date
        );
      }
    });

    return Scaffold(
      appBar: AppBar(centerTitle: true, title:  Text('$from - $to')),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(schedulesNotifierProvider.notifier).fetchSchedules(
            origin: from,
            destination: to,
            date: date,
          );
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            spacing: 20.0,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: () {
                  if (schedulesState.isInit || schedulesState.isLoading) {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                      itemBuilder: (context, index) =>
                      const TicketCardShimmer(),
                    );
                  } else if (schedulesState.isSuccess) {
                    final data = schedulesState.data!;
                    if (data.data.isNotEmpty) {
                      return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: data.data.length,
                        separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          final schedule = data.data[index];
                          return TicketCard(schedule: schedule);
                        },
                      );
                    } else {
                      return Center(
                        child: Text("No Schedules | Buses found!"),
                      );
                    }
                  } else if (schedulesState.isError) {
                    return Center(
                      child: Text("No Schedules | Buses found!"));
                  }
                  return const SizedBox.shrink();
                }(),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
