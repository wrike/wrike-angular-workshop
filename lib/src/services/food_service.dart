class FoodService {
  static const portionSize = 2;
  static int initialFood = 100;

  int _foodLeft = initialFood;

  int get foodLeft => _foodLeft;

  int askForFood() {
    _foodLeft -= portionSize;

    return portionSize;
  }
}
