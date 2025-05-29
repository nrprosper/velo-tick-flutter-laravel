import 'package:flutter/material.dart';
import 'package:mobile/widgets/custom_datepicker.dart';

class ExploreSearch extends StatefulWidget {
  const ExploreSearch({super.key});

  @override
  State<ExploreSearch> createState() => _ExploreSearchState();
}

class _ExploreSearchState extends State<ExploreSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDatepicker()
      ],
    );
  }
}
