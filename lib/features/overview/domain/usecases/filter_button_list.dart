mixin FilterButtonList {
  static List<bool> filterButtons = [false, false, false];

  static List<bool> changeFilterButton(int index) {
    filterButtons = [false, false, false];
    filterButtons[index] = true;
    print(filterButtons);
    return filterButtons;
  }
}
