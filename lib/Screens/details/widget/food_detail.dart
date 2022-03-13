import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/Screens/details/widget/food_quantity.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food? food;
  FoodDetail({this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        color: kBackground,
        child: Column(
          children: [
            Text(
              food!.name!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconText(
                  Icons.access_time_outlined,
                  Colors.blue,
                  food!.waitTIme!,
                ),
                _buildIconText(
                  Icons.star_outlined,
                  Colors.amber,
                  food!.score!.toString(),
                ),
                _buildIconText(
                  Icons.local_fire_department_outlined,
                  Colors.red,
                  food!.cal!,
                ),
              ],
            ),
            SizedBox(
              height: 39,
            ),
            FoodQuantity(food: food),
            SizedBox(
              height: 39,
            ),
            Row(
              children: [
                Text(
                  'Ingredienta',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            Image.asset(food!.ingredients![index].values.first,
                                width: 52),
                            Text(food!.ingredients![index].keys.first),
                          ],
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        width: 15,
                      ),
                  itemCount: food!.ingredients!.length),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'About',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              food!.about!,
              style: TextStyle(fontSize: 16, wordSpacing: 1.2, height: 1.5),
            ),
            SizedBox(height: 20),
          ],
        ));
  }

  _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
