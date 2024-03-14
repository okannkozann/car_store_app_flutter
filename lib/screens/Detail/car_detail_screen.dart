import 'package:car_store_app_flutter/Common/card_list.dart';
import 'package:car_store_app_flutter/constants.dart';
import 'package:car_store_app_flutter/screens/model/car.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // for image
          Image.asset(
            "assets/images/map.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          // for backbutton
          carDetailAppbar(context),
          Positioned(
            left: 10,
            right: 10,
            bottom: 25,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 45),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      cardInformation(),
                      // for white long line
                      Divider(
                        height: 15,
                        color: Colors.white70,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/driver.png",
                            height: 150,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Okan",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "License: NWR 152321",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "369",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Rider",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                //for call and book
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: cardColor,
                                      ),
                                      child: Text(
                                        "Call",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: cardColor,
                                      ),
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // for car image
                Positioned(
                  right: 60,
                  child: Hero(
                    tag: car.image,
                    child: Image.asset(
                      car.image,
                      height: 115,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column cardInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "\$${car.price.toString()}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        Text(
          "price/hr",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CarItems(
              name: "Brand",
              value: car.brand,
              textColor: Colors.black,
            ),
            CarItems(
              name: "Model No",
              value: car.model,
              textColor: Colors.black,
            ),
            CarItems(
              name: "C02",
              value: car.co2,
              textColor: Colors.black,
            ),
            CarItems(
              name: "Fuel Cons",
              value: car.fuelCons,
              textColor: Colors.black,
            ),
          ],
        )
      ],
    );
  }

  SafeArea carDetailAppbar(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          Text(
            "Car Detail",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
