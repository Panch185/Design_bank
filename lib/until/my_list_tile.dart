import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final iconButtonPath;
  final String buttontext;
  final String buttontext2;
  const MyListTile({
    super.key,
    required this.buttontext,
    required this.buttontext2,
    required this.iconButtonPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              height: 70,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    child: Image.asset(iconButtonPath),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        buttontext,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        buttontext2,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.arrow_forward),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
