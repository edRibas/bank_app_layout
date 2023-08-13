import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;

  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[2],
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).cardColor,
      ),
      child: boxContent,
    );
  }
}
