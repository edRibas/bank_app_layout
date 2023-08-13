import 'package:bank_layout/components/boxcard.dart';
import 'package:bank_layout/components/color_dot.dart';
import 'package:bank_layout/components/content_division.dart';
import 'package:bank_layout/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(
        boxContent: _RecentActivityContent(),
      ),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['spent'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Expenses'),
                    Text(
                      '\$ 3429.60',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['income'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Income'),
                    Text(
                      '\$ 5229.60',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 14.0, bottom: 8.0),
          child: Text('Spending limit \$ 1895.00'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const LinearProgressIndicator(
            value: 0.7,
            minHeight: 5,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 14.0, bottom: 14.0),
          child: ContentDivision(),
        ),
        const Text('This month you spent \$ 720 on games.'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Need help with your savings?',
            style: TextStyle(fontSize: 12, color: ThemeColors.iconColor),
          ),
        ),
      ],
    );
  }
}
