import 'package:cloud_firestore/cloud_firestore.dart';

class TodoService {
  // Todo Collection Referance
  final CollectionReference<Map<String, dynamic>> _todoRef =
      FirebaseFirestore.instance.collection('todos');

  // Create a new todo
  Future<DocumentReference<Map<String, dynamic>>> addTodo(String title) {
    return _todoRef.add({'title': title, 'isDone': false});
  }

  // Read all todos as stream
  Stream<QuerySnapshot<Map<String, dynamic>>> get todoStream =>
      _todoRef.snapshots();

  // update todo
  Future<void> updateTodo(String id, bool isDone) {
    return _todoRef.doc(id).update({'isDone': isDone});
  }

  // delete todo
  Future<void> deleteTodo(String id) {
    return _todoRef.doc(id).delete();
  }
}
