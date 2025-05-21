import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/date_picker.dart';
import 'package:mobile/widgets/dropdown_row.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  final _formKey = GlobalKey<FormState>();
  String? _from;
  String? _to;

  final List<String> _cities = ['Kigali', 'Huye', 'Musanze', 'Rusizi'];

  void _swap() {
    setState(() {
      final tmp = _from;
      _from = _to;
      _to = tmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.0,
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: DColors.neutral2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                          items: _cities,
                        ),
                        Divider(color: DColors.neutral2, height: 1),
                        DropdownRow(
                          label: 'To',
                          value: _to,
                          onChanged: (val) => setState(() => _to = val),
                          items: _cities,
                        ),
                        const SizedBox(height: 12),
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
                        child: Icon(Icons.swap_vert, size: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        DatePicker(
          hint: "Date",
          onDateSelected: (date) => print(date)
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                DColors.primary6,
              ),
            ),
            child: Text("Search"),
          ),
        )
      ],
    );
  }
}
