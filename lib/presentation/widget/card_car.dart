import 'package:flutter/material.dart';
import 'package:rental_cars/data/models/car.dart';

class CardCar extends StatelessWidget {
  final Car car;
  const CardCar({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset('assets/images/car_image.png', height: 120,),
          Text(car.model, style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/gps.png'),
                      Text('${car.distance.toStringAsFixed(0)}km')
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/pump.png'),
                      Text('${car.fuelCapacity.toStringAsFixed(0)}L')
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}