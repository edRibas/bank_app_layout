import 'package:bank_layout/components/boxcard.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              'Account Actions',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.account_balance_wallet_sharp),
                    text: ('Deposit'),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.cached_sharp),
                    text: ('Transfer'),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: const BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.center_focus_strong_sharp),
                    text: ('QR Code'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContent({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
