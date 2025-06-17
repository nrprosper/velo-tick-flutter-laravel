import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/screens/search_results.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/date_picker.dart';
import 'package:mobile/widgets/date_time_picker.dart';
import 'package:mobile/widgets/dropdown_row.dart';

class HomeSearch extends ConsumerStatefulWidget {
  const HomeSearch({super.key});

  @override
  ConsumerState<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends ConsumerState<HomeSearch> {
  final _formKey = GlobalKey<FormState>();
  String? _from;
  String? _to;
  DateTime? _date;

  void _swap() {
    setState(() {
      final tmp = _from;
      _from = _to;
      _to = tmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    final originsState = ref.watch(originsNotifierProvider);
    final destinationsState = ref.watch(destinationsNotifierProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (originsState.isInit || destinationsState.isInit) {
        ref.read(originsNotifierProvider.notifier).fetchOrigins();
        ref.read(destinationsNotifierProvider.notifier).fetchDestinations();
      }
    });

    final loadingOrInit = (originsState.isLoading || originsState.isInit)
        || (destinationsState.isLoading || destinationsState.isInit);

    final isError = (originsState.isError || destinationsState.isError);

    if (isError) {
      return Center(
        child: Text('Error: ${originsState.error.toString()}', style: const TextStyle(color: Colors.red)),
      );
    }

    if (loadingOrInit) {
      return const Center(child: CircularProgressIndicator());
    }

    final origins = originsState.data ?? [];
    final destinations = destinationsState.data ?? [];

    return Column(
      spacing: 10.0,
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 12),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        DropdownRow(
                          label: 'From',
                          value: _from,
                          onChanged: (val) => setState(() => _from = val),
                          items: origins,
                        ),
                        Divider(color: DColors.neutral2, height: 1),
                        DropdownRow(
                          label: 'To',
                          value: _to,
                          onChanged: (val) => setState(() => _to = val),
                          items: destinations,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 48,
                    right: 0,
                    child: InkWell(
                      onTap: _swap,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: DColors.primary6,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                            Icons.swap_vert, size: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        DateTimePicker(
          hint: "Date",
          onDateTimeSelected: (dateTime) {
            setState(() => _date = dateTime);
          },
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate() && _from != null && _to != null && _date != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchResults(
                      from: _from!,
                      to: _to!,
                      date: _date!,
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please select origin, destination, and date')),
                );
              }
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(DColors.primary6),
            ),
            child: const Text("Search Buses"),
          ),
        )
      ],
    );
  }
}
