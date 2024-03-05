class Car {
  String brand;
  String model;
  int year;
  int capacity;

  Car(this.brand, this.model, this.year, this.capacity);

  void sound() {
    print('Vroom Vroom');
  }
}

void main() {
  // Instantiate a Car object
  Car myCar = Car('Suzuki', 'Dezire', 2019, 5);

  // Print the properties of the Car object
  print(myCar.brand);
  print(myCar.model);
  print(myCar.year);
  print(myCar.capacity);

  myCar.sound();
}
