import 'package:bakery_app_cassiel_mariana/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool cookie = false, brownie = false, cinnamon = false, cupcake = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello C & M',
                  style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Delicious Food',
              style: AppWidget.headlineTextFeildStyle(),
            ),
            Text(
              'Discover and Get Great Food',
              style: AppWidget.lightTextFeildStyle(),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: showItem(),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFoodItem("images/salad2.png", "Veggie Taco Hash", "Fresh and Healthy", "\$25"),
                  SizedBox(width: 15.0),
                  buildFoodItem("images/salad2.png", "Mix Veg Salad", "Spicy with onion", "\$28"),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(right:20.0 ),
              child: Material(
                elevation:  5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5) ,
                  child: Row(children: [
                    Image.asset("images/salad2.png", height: 120,width: 120, fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("Mediterrian Chiclpea Salad", style: AppWidget.semiBoldTextFeildStyle())),
                        SizedBox(height: 5.0,),
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("Honey goat cheese", style: AppWidget.lightTextFeildStyle())),
                        Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("\$28", style: AppWidget.semiBoldTextFeildStyle()))
                    ],)
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildItem("images/burger.png", cookie, () {
          setState(() {
            cookie = true;
            cinnamon = brownie = cupcake = false;
          });
        }),
        buildItem("images/pizza.png", cinnamon, () {
          setState(() {
            cinnamon = true;
            cookie = brownie = cupcake = false;
          });
        }),
        buildItem("images/ice-cream.png", brownie, () {
          setState(() {
            brownie = true;
            cookie = cinnamon = cupcake = false;
          });
        }),
        buildItem("images/salad.png", cupcake, () {
          setState(() {
            cupcake = true;
            cookie = cinnamon = brownie = false;
          });
        }),
      ],
    );
  }

  Widget buildItem(String imagePath, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(8),
          child: Image.asset(
            imagePath,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildFoodItem(String imagePath, String title, String description, String price) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath, height: 150, width: 150, fit: BoxFit.cover),
              Text(title, style: AppWidget.semiBoldTextFeildStyle()),
              SizedBox(height: 5.0),
              Text(description, style: AppWidget.lightTextFeildStyle()),
              SizedBox(height: 5.0),
              Text(price, style: AppWidget.semiBoldTextFeildStyle()),
            ],
          ),
        ),
      ),
    );
  }
}


