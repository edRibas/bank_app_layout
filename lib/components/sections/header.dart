import 'package:bank_layout/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(18),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(18.0, 68.0, 18.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    text: '\$',
                    style: TextStyle(color: ThemeColors.iconColor),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1800.00',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: ThemeColors.textColor),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Amount available',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: ThemeColors.textColor2),
                ),
                Icon(
                  Icons.remove_red_eye,
                  size: 12,
                )
              ],
            ),
            Icon(
              Icons.account_balance_sharp,
              size: 44,
              color: ThemeColors.iconBlack,
            )
          ],
        ),
      ),
    );
  }
}
