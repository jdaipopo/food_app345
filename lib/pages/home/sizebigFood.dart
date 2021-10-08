import 'package:flutter/material.dart';
import 'package:food_app/pages/home/food_item.dart';

class sizebigFood extends StatefulWidget {
  static const routename = '/sizebigFood';
  const sizebigFood({Key? key}) : super(key: key);

  @override
  _sizebigFoodState createState() => _sizebigFoodState();
}

class _sizebigFoodState extends State<sizebigFood> {
  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(item.name),
      ),
      body: Container(
        child: Column(
          children: [
            FittedBox(
              child: Image.asset('assets/images/${item.image}'),
              fit: BoxFit.fill,
            ),
            Text('ชื่อเมนู : ${item.name}'),
            Text('ราคา : ${item.price} บาท'),
          ],
        ),
      ),
    );
  }
}
