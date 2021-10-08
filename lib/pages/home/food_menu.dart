import 'package:flutter/material.dart';
import 'package:food_app/pages/home/food_list_page.dart';

class food_menu extends StatefulWidget {
  const food_menu({Key? key}) : super(key: key);

  @override
  _food_menuState createState() => _food_menuState();
}

class _food_menuState extends State<food_menu> {
  var now_chick = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
}
