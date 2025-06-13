import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/screens/my_ticket_card.dart';

class MyTickets extends ConsumerWidget {
  const MyTickets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myTicketsState = ref.watch(myTicketsNotifierProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (myTicketsState.isInit) {
        ref.read(myTicketsNotifierProvider.notifier).fetchMyTickets();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(myTicketsNotifierProvider.notifier).fetchMyTickets();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Builder(
            builder: (context) {

              if (myTicketsState.isLoading || myTicketsState.isInit) {
                return const Center(child: CircularProgressIndicator());
              }

              else if (myTicketsState.isSuccess) {
                final data = myTicketsState.data!;
                // Check if there are no tickets
                if (data.data.isEmpty) {
                  return SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 100,
                      child: const Center(child: Text("No tickets found.")),
                    ),
                  );
                }

                else {
                  return ListView.builder(
                    itemCount: data.data.length,
                    itemBuilder: (context, index) => MyTicketCard(ticket: data.data[index]),
                  );
                }
              }

              else if (myTicketsState.isError) {
                final exception = myTicketsState.error!;
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 100,
                    child: Center(child: Text("Error: ${exception.toString()}")),
                  ),
                );
              }

              else {
                return const Center(child: Text("Unexpected state"));
              }
            },
          ),
        ),
      ),
    );
  }
}
