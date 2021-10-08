import 'package:flutter/material.dart';
import 'package:food_app/pages/home/food_item.dart';
import 'package:food_app/pages/home/sizebigFood.dart';

class FoodListPages extends StatefulWidget {
  const FoodListPages({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPages> {
  //final items = List<String>.generate(1000, (index) => 'Item $index');
  var items = [
    FoodItem(
        id: 1,
        name: 'ข้าวไข่เจียว',
        price: 25,
        image: 'kao_kai_jeaw.jpg',
    ),
    FoodItem(
        id: 2,
        name: 'ข้าวหมูแดง',
        price: 35,
        image: 'kao_moo_dang.jpg',
    ),FoodItem(
        id: 3,
        name: 'ข้าวมันไก่',
        price: 35,
        image: 'kao_mun_kai.jpg',
    ),FoodItem(
        id: 4,
        name: 'ข้าวหน้าเป็ด',
        price: 35,
        image: 'kao_na_ped.jpg',
    ),FoodItem(
        id: 5,
        name: 'ข้าวผัด',
        price: 35,
        image: 'kao_pad.jpg',
    ),FoodItem(
        id: 6,
        name: 'ผัดซีอิ้ว',
        price: 35,
        image: 'pad_sie_eew.jpg',
    ),FoodItem(
        id: 7,
        name: 'ผัดไทย',
        price: 35,
        image: 'pad_thai.jpg',
    ),FoodItem(
        id: 8,
        name: 'ราดหน้า',
        price: 40,
        image: 'rad_na.jpg',
    ),FoodItem(
        id: 9,
        name: 'ส้มตำไก่ย่าง',
        price: 50,
        image: 'som_tum_kai_yang.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          var item = items[index];
          return Card(
            margin: const EdgeInsets.all(
                8.0), // const for once create in first time of 1000 loops
            child: InkWell(
              onTap: () {
                print(item);
                Navigator.pushNamed(
                  context,
                  sizebigFood.routename,
                arguments: item,
                );

              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/${item.image}',
                        width: 60.0, height: 60.0),
                    SizedBox(width: 8.0),
                    Text(
                      item.name as String,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      item.price.toString(),
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
