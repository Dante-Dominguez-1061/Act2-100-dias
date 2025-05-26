
class Car {
  String image;
  int price;
  String brand;
  String model;
  String co2;
  String fuelCons;

  Car(
    this.image,
    this.price,
    this.brand,
    this.model,
    this.co2,
    this.fuelCons,
  );
}

List<Car> carList = [
  Car(
    'https://raw.githubusercontent.com/Dante-Dominguez-1061/Videojuegos_imagenes_app_flutter/refs/heads/main/juego5.jpg',
    120,
    'Nintendo',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'https://raw.githubusercontent.com/Dante-Dominguez-1061/Videojuegos_imagenes_app_flutter/refs/heads/main/juego6.jpg',
    185,
    'Microsoft',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'https://raw.githubusercontent.com/Dante-Dominguez-1061/Videojuegos_imagenes_app_flutter/refs/heads/main/juego7.jpeg',
    100,
    'Nintendo',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'https://raw.githubusercontent.com/Dante-Dominguez-1061/Videojuegos_imagenes_app_flutter/refs/heads/main/juego8.jpg',
    90,
    'Nintendo',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
];
