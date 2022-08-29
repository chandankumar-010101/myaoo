extension ReturnShuffle on List {
  shuffleReturn() {
    List<dynamic> copyList = toList();
    copyList.shuffle();
    return copyList;
  }
}
