import 'package:bakery_app_cassiel_mariana/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Wallet",
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
              child: Row(
                children: [
                  Image.asset(
                    "images/wallet.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 40.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your wallet",
                        style: AppWidget.lightTextFeildStyle(),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "\$" + "100",
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Add money",
                style: AppWidget.semiBoldTextFeildStyle(),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "\$" + "100",
                    style: AppWidget.boldTextFeildStyle(),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "\$" + "500",
                style: AppWidget.boldTextFeildStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "\$" + "1000",
                style: AppWidget.boldTextFeildStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "\$" + "2000",
                style: AppWidget.boldTextFeildStyle(),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              padding: EdgeInsets.symmetric(vertical: 12.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF008080),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Add Money",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
