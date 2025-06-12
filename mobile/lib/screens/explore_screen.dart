import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/atoms/explore_search.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/widgets/shimmers/ticket_card_shimmer.dart';
import 'package:mobile/widgets/ticket_card.dart';

class ExploreScreen extends ConsumerWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedulesState = ref.watch(schedulesNotifierProvider);


    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (schedulesState.isInit) {
        ref.read(schedulesNotifierProvider.notifier).fetchSchedules();
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Search Buses'), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(schedulesNotifierProvider.notifier).fetchSchedules();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            spacing: 20.0,
            children: [
              const ExploreSearch(),
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
                  } else if (schedulesState.isError) {
                    return Center(
                      child: Text(
                          'Error: ${schedulesState.error.toString()}'),
                    );
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