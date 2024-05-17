import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  final _box = Hive.box("Mybox");
  List toDoList = [];

  //create initial todo list
  void createInitialData() {
    toDoList = [
      ["Code", false],
      ["Learn Hive", false]
    ];
  }

  //load todo list
  void loadData() {
    toDoList = _box.get("ToDoList");
  }

  //update todo list
  void updateData() {
    _box.put('ToDoList', toDoList);
  }

  //delete todo list
  void deleteData(index) {
    _box.deleteAt(index);
  }
}
