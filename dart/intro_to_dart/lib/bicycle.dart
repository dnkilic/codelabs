class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear); // constructor

// Equivalent constructor
//  Bicycle(int cadence, int speed, int gear) {
//    this.cadence = cadence;
//    this.speed = speed;
//    this.gear = gear;
//  }

@override
  String toString() => 'Bicycle: $_speed mph';

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }


}