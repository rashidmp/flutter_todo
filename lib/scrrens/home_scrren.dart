import 'package:flutter/material.dart';
import 'package:flutter_todo/scrrens/todo_screen.dart';

import 'widgets/add_todo_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todoist'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 256,
            color: Theme.of(context).primaryColor,
            child: Image.network(
              'https://api.dicebear.com/5.x/initials/png?seed=SAM&backgroundColor=b6e3f4&radius=50&size=128',
              width: 100,
              height: 100,
            ),
          ),
          const Expanded(
            child: TodoScreen(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: ((context) => AddTodoBottomSheet()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
