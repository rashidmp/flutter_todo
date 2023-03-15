import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, i) {
        return CheckboxListTile(
          title: const Text('title'),
          onChanged: (isDone) => {},
          value: false,
          secondary: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                        title: const Text('Are you sure?'),
                        content: const Text('Do yo want to delete this todo'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      ));
            },
            icon: const Icon(Icons.delete),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          checkboxShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
