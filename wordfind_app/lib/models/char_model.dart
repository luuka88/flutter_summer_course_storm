class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;
  CharModel(
      {this.correctValue,
      this.currentIndex,
      this.currentValue,
      this.hintShow = false});
  getCurrentValue() {
    if (correctValue != null) {
      return currentValue;
    } else {
      return correctValue;
    }
  }

  clearValue() {
    currentIndex = null;
    currentValue = null;
  }
}
