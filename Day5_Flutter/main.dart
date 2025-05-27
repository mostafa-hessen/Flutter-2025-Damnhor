import 'classes.dart';


void main() {
  Car car1 = Car("2020", "Bmw", 200); // benzeen
  Car car3 = Car("2020", "Bmw", 200); // benzeen
  Car car4 = Car("2020", "Bmw", 200); // benzeen
  Car car5 = Car("2020", "Bmw", 200); // benzeen
  Car car7 = Car("2020", "Bmw", 200); // benzeen

  Gas_Car taxi = Gas_Car("2018", "Shahin", 120); // gas

  Electric_Car_Model_1 tesla1 =
      Electric_Car_Model_1("2024", "testla Model1", 500); //

  Electric_Car_Model_2 tesla2 =
      Electric_Car_Model_2("2024", "testla Model2", 500); //

  Electric_Car_Model_3 tesla3 =
      Electric_Car_Model_3("2024", "testla Model3", 500); //

 
 tesla1.charg();
 tesla2.charg();
 tesla3.charg();

 print(Car.count);
}

// model - brand - speed - addcar - accelrate - display

class Car {
  // properties
  String? model;
  String? brand;
  int? speed;

 static int count=0;

  Car(this.model, this.brand, this.speed) {
    Car.count++;

  }

  void display() {
    print("hello in our car compnay");
    print('Brand: $brand');
    print('Model: $model');
    print('Speed: $speed km/h');
  }

  move() {
    print("car is movving");
  }
}

//  gas - electric => model - brand -speed - display -move - [ fuel ]

class Gas_Car extends Car {
  Gas_Car(super.model, super.brand, super.speed);

  fuel() {
    print("banzeen");
  }

  @override
  move() {
    print("car is movving by Gas");
  }
}

//    electric => model - brand -speed - display -move -[ charge ]
// model 2 1000kh - model3 1500kw - model4 1000kw

abstract class Charge { 
  void charg();
}

class Electric_Car_Model_1 extends Car implements  Charge {
  Electric_Car_Model_1(super.model, super.brand, super.speed);
  
  
  @override
  move() {
    print("car is movving by Electric");
  }
  
  @override
  void charg() {
   print("1000kw");
  }
}

class Electric_Car_Model_2 extends Car  implements Charge {
  Electric_Car_Model_2(super.model, super.brand, super.speed);
 

  @override
  move() {
    print("car is movving by Electric");
  }
  
  @override
  void charg() {
   print("1500kw");
  }
}

class Electric_Car_Model_3 extends Car implements Charge {
  Electric_Car_Model_3(super.model, super.brand, super.speed);
  

  @override
  move() {
    print("car is movving by Electric");
  }
  
  @override
  void charg() {
    print("2000kw");
  }
}





// Massage x = Massage() 
// x.hello()

abstract class Hello{

hello(); // abstract function

move(){
  print("djbshg");
}


}

class Massage  implements Hello{

}