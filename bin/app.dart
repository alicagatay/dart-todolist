import 'dart:io';
import 'todo.dart';

main() {
  Todo mytodo = Todo();

  //Choosing an action to do in the start of our
  //CLI application
  stdout.writeln("Enter your action: ");
  String choice = stdin.readLineSync();
  print("");

  /*
    While the choice is not exit, continue to do the
    specified actions in the Todo class.
  */
  while (choice != "exit") {
    //If the choice is add, add the item to the list.
    if (choice == "add") {
      stdout.writeln("Enter your todo: ");
      String item = stdin.readLineSync();
      print("");
      mytodo.addItem(item);

      //If the choice is remove, remove the item from the list.
    } else if (choice == "remove") {
      stdout.writeln("Enter the todo you want to remove: ");
      String item = stdin.readLineSync();
      print("");
      mytodo.removeItem(item);
      //If the choice display, display all the items from the list.
    } else if (choice == "display") {
      mytodo.showAll(mytodo.list);
      print("");
    }
    //After the job is done, enter another action to
    //continue w,thin the loop.
    stdout.writeln("Enter your action: ");
    choice = stdin.readLineSync();
    print("");
  }
}
