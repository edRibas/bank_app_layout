import 'package:bank_layout/components/boxcard.dart';
import 'package:bank_layout/components/color_dot.dart';
import 'package:bank_layout/components/content_division.dart';
import 'package:bank_layout/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Account Points',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const BoxCard(
            boxContent: _AccountPointsContent(),
          ),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Text(
                '12.550 pts',
                style: TextStyle(
                    color: ThemeColors.pointsColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: ContentDivision(),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Rewards',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: ColorDot(
                color: ThemeColors.recentActivity['reward_1'],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('iPad Air: 64.000 pts')],
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: ColorDot(
                color: ThemeColors.recentActivity['reward_2'],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Amazon free shipping: 16.000 pts')],
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: ColorDot(
                color: ThemeColors.recentActivity['reward_3'],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('1 month Netflix: 8.000 pts')],
            )
          ],
        ),
      ],
    );
  }
}
