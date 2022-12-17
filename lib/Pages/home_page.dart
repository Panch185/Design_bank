import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/until/my_buttons.dart';
import 'package:wallet/until/my_list_tile.dart';

import '../until/my_cards.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: GNav(
            backgroundColor: Colors.grey.shade100,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade400,
            padding: const EdgeInsets.all(18),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                iconSize: 25,
                text: 'Home',
              ),
              GButton(
                icon: Icons.monetization_on,
                iconSize: 25,
                text: 'Monetization',
              ),
              GButton(
                icon: Icons.settings,
                iconSize: 25,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  // plus icon
                  Container(
                    height: 38,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          size: 20,
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
            //cards
            Container(
              height: 180,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCards(
                    iconImagePath: 'lib/icons/mastercard.png',
                    balance: 7643.89,
                    cardNumber: 23463472,
                    expiryMonth: 11,
                    expiryYear: 25,
                    color: Colors.blue[500],
                  ),
                  MyCards(
                    iconImagePath: 'lib/icons/visa.png',
                    balance: 1938.54,
                    cardNumber: 34589830,
                    expiryMonth: 12,
                    expiryYear: 26,
                    color: Colors.red[400],
                  ),
                  MyCards(
                    iconImagePath: 'lib/icons/paypal.png',
                    balance: 345.28,
                    cardNumber: 65469530,
                    expiryMonth: 11,
                    expiryYear: 25,
                    color: Colors.yellow[700],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 13,
                dotWidth: 13,
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            const SizedBox(height: 35),

            //3 buttons -> send + pay + bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  //send button
                  MyButton(
                    iconImagePath: 'lib/icons/wallet.png',
                    buttonText: 'Send',
                  ),
                  //pay button
                  MyButton(
                    iconImagePath: 'lib/icons/credit-card.png',
                    buttonText: 'Pay',
                  ),
                  // bill button
                  MyButton(
                    iconImagePath: 'lib/icons/bill.png',
                    buttonText: 'Bill',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            //column -> stats + transactions
            Column(
              children: const [
                MyListTile(
                  buttontext: 'Statistics',
                  buttontext2: 'Payments and Icome',
                  iconButtonPath: 'lib/icons/graph.png',
                ),
                MyListTile(
                  buttontext: 'Transactions',
                  buttontext2: 'Transaction and History',
                  iconButtonPath: 'lib/icons/cash.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
