import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final double balance;
  final iconImagePath;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCards({
    super.key,
    required this.balance,
    required this.iconImagePath,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset(
                  iconImagePath,
                  height: 50,
                )
              ],
            ),
            Text(
              '\$$balance',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  '$expiryMonth/$expiryYear',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
