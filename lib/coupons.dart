import 'package:flutter/material.dart';
import 'package:sample/fooddata.dart';
import 'package:sample/juice.dart';

class coupons extends StatefulWidget {
  coupons({Key? key}) : super(key: key);

  @override
  State<coupons> createState() => _couponsState();
}

class _couponsState extends State<coupons> {
  static List<String> foodname = ['biryani', 'egg', 'egg'];
  static List url = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzQAPd9R3CAv2jqezKdli5WXSA6XMquRQp-yGPxDBo9w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzQAPd9R3CAv2jqezKdli5WXSA6XMquRQp-yGPxDBo9w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzQAPd9R3CAv2jqezKdli5WXSA6XMquRQp-yGPxDBo9w&s'
  ];

  final List<fooddata> food = List.generate(
      foodname.length,
      (index) => fooddata('${foodname[index]}', '${url[index]}',
          '${foodname[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(food[index].name),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(food[index].ImageURL),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => juice(fooddata: food)));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
