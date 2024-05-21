import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../structure/class/activityData.dart';
import '../../widget/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final activityData;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeContent()
            ],
        )
    );
  }
}