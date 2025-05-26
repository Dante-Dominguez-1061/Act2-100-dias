
import 'constants.dart';
import 'game.dart';
import 'package:flutter/material.dart';
import 'card_list.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen(this.car, {super.key});
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // for image
          Image.network(
            "https://raw.githubusercontent.com/Dante-Dominguez-1061/Videojuegos_imagenes_app_flutter/refs/heads/main/map.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          // for back button ,name and menu icon
          carDetailAppbar(context),
          Positioned(
            left: 10,
            right: 10,
            bottom: 25,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  margin: const EdgeInsets.only(top: 45),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //
                  child: Column(
                    children: [
                      cardInformation(),
                      // for whtite line,
                      const Divider(
                        height: 15,
                        color: Colors.white70,
                      ),
                      Row(
                        children: [
                          // for driver image
                          Image.network(
                            "https://raw.githubusercontent.com/Dante-Dominguez-1061/Videojuegos_imagenes_app_flutter/refs/heads/main/juego3.jpg",
                            height: 150,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              // for driver name address and more
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jesica Smith",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "LIcense: NWR 369852",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
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
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "Ride",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 16),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 16),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 16),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 16),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 16)
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              // for call and book now button,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: cardColor,
                                    ),
                                    child: const Text(
                                      "Call",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: cardColor,
                                    ),
                                    child: const Text(
                                      "Book Now",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))
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
                    child: Image.network(
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        const Text(
          "price/hr",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GameItems(name: "Brand", value: car.brand, textColor: Colors.black),
            GameItems(
                name: "Model No", value: car.model, textColor: Colors.black),
            GameItems(name: "CO2", value: car.co2, textColor: Colors.black),
            GameItems(
                name: "Fule Cons",
                value: car.fuelCons,
                textColor: Colors.black),
          ],
        ),
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
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        const Text(
          "Game Detail",
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
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
