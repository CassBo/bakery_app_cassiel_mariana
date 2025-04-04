import 'package:bakery_app_cassiel_mariana/pages/details.dart';
import 'package:bakery_app_cassiel_mariana/service/database.dart';
import 'package:bakery_app_cassiel_mariana/widget/widget_support.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

Stream? fooditemStream;
ontheload()async{
fooditemStream = await DatabaseMethods().getFoodItem("Pizza");
setState(() {
  
});
}

@override
  void initState(){
    ontheload();
    super.initState();
  }

Widget allItems(){
  return StreamBuilder(stream:fooditemStream, builder: (context, AsyncSnapshot snapshot){
  return snapshot.hasData? ListView.builder(
    padding: EdgeInsets.zero,
    itemCount: snapshot.data.docs.length,
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index){
    DocumentSnapshot ds = snapshot.data.docs[index];
    return GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "images/salad2.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Veggie Taco Hash",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Fresh and Healthy",
                                style: AppWidget.lightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "\$25",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
  }):CircularProgressIndicator();
  });
}

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
                )
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
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: showItem(),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad2.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Veggie Taco Hash",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Fresh and Healthy",
                                style: AppWidget.lightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "\$25",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Mix Veg Salad",
                              style: AppWidget.semiBoldTextFeildStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Spicy with Onion",
                              style: AppWidget.lightTextFeildStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "\$28",
                              style: AppWidget.semiBoldTextFeildStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Mediterranean Chickpea Salad",
                              style: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Honey goat cheese",
                              style: AppWidget.lightTextFeildStyle(),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "\$28",
                              style: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = true;
              pizza = false;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = true;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = true;
              burger = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = false;
              burger = true;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}