import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobile/atoms/home_search.dart';
import 'package:mobile/atoms/recent_activity.dart';
import 'package:mobile/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: DColors.primary1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SizedBox(
          width: 170,
          child: Text(
            'Where do you want to go?',
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              // fontSize:
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 12),
            // padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: DColors.neutral2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {},
              highlightColor: Colors.transparent,
              icon: Icon(Iconsax.notification),
              tooltip: 'Notifications',
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              HomeSearch(),
              SizedBox(height: 30),
              RecentActivity(),
            ],
          ),
        ),
      ),
    );
  }
}
