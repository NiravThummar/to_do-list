import 'package:hive/hive.dart';

class todoDatabase {
  List todoList = [];
  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  void updateDatabse() {
    _mybox.put("TODOLIST", todoList);
  }
}
