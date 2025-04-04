import 'package:bakery_app_cassiel_mariana/admin/add_food.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future addUserDetail(Map<String,dynamic>userInfoMap,String id)async{
    return await FirebaseFirestore.instance.collection("users").doc(id).set(userInfoMap);
  }

  UpdateUserwallet(String id, String amount)async{
return await FirebaseFirestore.instance.collection("users").doc(id).update({"Wallet": amount});
  }

  Future addFoodItem(Map<String,dynamic>userInfoMap,String name)async{
    return await FirebaseFirestore.instance.collection("users").doc(name).set(userInfoMap);
  }

Future<Stream<QuerySnapshot>>getFoodItem(String name)async{
    return await FirebaseFirestore.instance.collection(name).snapshots();
  }

  Future addFoodToCart(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance.collection("users").doc(id).collection("cart").add(userInfoMap);
    }

    Future<Stream<QuerySnapshot>>getFoodCart(String id)async{
    return await FirebaseFirestore.instance.collection("users").doc(id).collection("Cart").snapshots();
  }
}