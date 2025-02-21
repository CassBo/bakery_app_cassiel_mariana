import 'package:bakery_app_cassiel_mariana/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.only(top: 50.0, left:20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello C & M', 
                  style: AppWidget.boldTextFeildStyle()
                ),
                Container(
                padding: EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
            )
              ],
            ),
             SizedBox(height: 30.0,),
             Text(
                  'Delicious Food', 
                  style: AppWidget.headlineTextFeildStyle()
                ),
              Text(
                  'Discover and Get Great Food', 
                  style: AppWidget.lightTextFeildStyle()
                ),
          ],
        ),
      ),
    );
  }
}