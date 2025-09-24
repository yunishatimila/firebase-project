import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/todo/provider/todoprovider.dart';
import 'package:provider/provider.dart';

class Todopage extends StatefulWidget {
  const Todopage({super.key});

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {
  final TextEditingController _idcontroller = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<Todoprovider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "id"),
                  controller: _idcontroller,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Title"),
                  controller: _titleController,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Title"),
                  controller: _contentController,
                ),
                SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    String? id = _idcontroller.text.trim();
                    String? title = _titleController.text.trim();
                    String? content = _contentController.text.trim();
                    provider.addTodo(id, title, content);
                  },
                  child: Text("Add todo"),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
