class Bicycle {
  int cadence;
  int speed;
  int gear;

  Bicycle(int cadence, int speed, int gear) {
    this.cadence = cadence;
    this.speed = speed;
    this.gear = gear;
  }

  @override
  String toString() => 'Bicycle: $speed mph';
}

void main() {
  var bike = Bicycle(2, 3, 1);
  print(bike);
  print("1213123123");
}
