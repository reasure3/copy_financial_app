import 'package:flutter/material.dart';

import '../colors/colors.dart';

class CurrencyCard extends StatelessWidget {
  final String name, currencyCode, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.currencyCode,
    required this.amount,
    required this.icon,
    this.order = 0,
  }) : isInverted = order % 2 == 1;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * order.toDouble()),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? AppColors.white : AppColors.blackAccent,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color:
                          isInverted ? AppColors.blackAccent : AppColors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted
                              ? AppColors.blackAccent
                              : AppColors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        currencyCode,
                        style: TextStyle(
                          color: isInverted
                              ? AppColors.blackAccent70
                              : AppColors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.4,
                child: Transform.translate(
                  offset: const Offset(0, 18),
                  child: Icon(
                    icon,
                    color: isInverted ? AppColors.blackAccent : AppColors.white,
                    size: 88,
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
