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

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(
      String brand, String model, int year, int capacity, this.batteryLife)
      : super(brand, model, year, capacity);
}

void main() {
  // Instantiate an ElectricCar object
  ElectricCar myElectricCar = ElectricCar('Tesla', 'Model S', 2022, 6, 300);

  // Print the properties of the ElectricCar object
  print('Brand: ${myElectricCar.brand}');
  print('Model: ${myElectricCar.model}');
  print('Year: ${myElectricCar.year}');
  print(myElectricCar.brand);
  print(myElectricCar.model);
  print(myElectricCar.year);
  print(myElectricCar.capacity);
  print(myElectricCar.batteryLife);

  // Call the drive method
  myElectricCar.sound();
}
