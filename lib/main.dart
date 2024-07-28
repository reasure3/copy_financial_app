import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'colors/colors.dart';
import 'widgets/button.dart';
import 'widgets/currency_card.dart';

//https://dribbble.com/shots/19858341
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int cardOrder = 0;
    return MaterialApp(
      title: 'Financial Mobile IOS App',
      home: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: AppColors.white70,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              const Text(
                'Total balance',
                style: TextStyle(
                  color: AppColors.white70,
                  fontSize: 22,
                ),
              ),
              const Text(
                '\$5 194 382',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Button(
                    text: 'Transfer',
                    bgColor: AppColors.amber,
                    textColor: AppColors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Button(
                    text: 'Request',
                    bgColor: AppColors.blackAccent,
                    textColor: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: AppColors.white70,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CurrencyCard(
                        name: 'Euro',
                        amount: '6 428',
                        currencyCode: 'EUR',
                        icon: Symbols.euro_symbol_sharp,
                        order: cardOrder++,
                      ),
                      CurrencyCard(
                        name: 'Dollar',
                        amount: '55 622',
                        currencyCode: 'USD',
                        icon: Symbols.paid_sharp,
                        isInverted: true,
                        order: cardOrder++,
                      ),
                      CurrencyCard(
                        name: 'Rupee',
                        amount: '28 981',
                        currencyCode: 'INR',
                        icon: Symbols.currency_rupee_sharp,
                        order: cardOrder++,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
