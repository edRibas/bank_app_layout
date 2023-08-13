import 'package:bank_layout/components/sections/account_actions.dart';
import 'package:bank_layout/components/sections/account_points.dart';
import 'package:bank_layout/components/sections/header.dart';
import 'package:bank_layout/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPoints(),
          ],
        ),
      ),
    );
  }
}
