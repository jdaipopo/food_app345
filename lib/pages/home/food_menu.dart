import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/pages/home/food_item.dart';
import 'package:food_app/pages/home/food_list_page.dart';
import 'package:http/http.dart' as http;

class food_menu extends StatefulWidget {
  const food_menu({Key? key}) : super(key: key);

  @override
  _food_menuState createState() => _food_menuState();
}

class _food_menuState extends State<food_menu> {
  var now_chick = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //??
      floatingActionButton: FloatingActionButton(
        onPressed: _test,
        child: Icon(Icons.add),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: now_chick == 0? FoodListPages(): SizedBox.shrink()
                /*child: Text(
                  now_chick == 0 ? "Food Menu" : "Your order",
                  style: TextStyle(fontSize: 80.0),
                ),*/

            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        now_chick = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.menu_book,
                          color: now_chick == 0 ? Colors.orange : Colors.grey,
                        ),
                        Text(
                          "Menu",
                          style: TextStyle(
                              color:
                                  now_chick == 0 ? Colors.orange : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        now_chick = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: now_chick == 1 ? Colors.orange : Colors.grey,
                        ),
                        Text(
                          "Your Order",
                          style: TextStyle(
                            color: now_chick == 1 ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),


    );
  }
  
  //เพิ่มมา
  Future<void> _test() async {
    var url = Uri.parse('https://cpsu-test-api.herokuapp.com/foods')  ;
    var response = await http.get(url);

    if(response.statusCode == 200){
      //ดึงค่า response.body ออกมา
      //json จะแปลงเป็น map dart
      Map<String, dynamic> jsonBody = json.decode(response.body);
      String status = jsonBody['status'];
      String? message = jsonBody['message'];
      List<dynamic> data = jsonBody['data'];

      print('STATUS: $status');
      print('MESSAGE: $message');

      var fooList = data.map((element) => FoodItem(
        id: element['id'],
        name: element['name'],
        price: element['price'],
        image: element['image'],
      ));


      /*data.forEach((element) {
        FoodItem(
          id: element['id'],
          name: element['name'],
          price: element['price'],
          image: element['image'],id: element['id'],
          name: element['name'],
          price: element['price'],
          image: element['image'],
        );
      });*/

    }
  }
}




    /*futureResponse.then((response) {
      if (response.statusCode == 200) {
        print(response.body);
      }
    });

    print('123');*/
