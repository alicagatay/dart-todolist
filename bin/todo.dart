class Todo {
  //Creating a new list to store our todo items
  List list = new List();

  //Adding an item to our list
  void addItem(String item) {
    list.add(item);
  }

  //Removing an item from our list
  void removeItem(String item) {
    list.remove(item);
  }

  //Showing all of our items in our list
  void showAll(List list) {
    for (int i = 0; i < list.length; i++) {
      print(list[i]);
    }
  }
}
