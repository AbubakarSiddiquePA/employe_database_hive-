import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key, required this.title});

  final String title;

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: topAppbar,
    );
  }
}

final topAppbar = AppBar(
  // elevation: 0.1,
  backgroundColor: Colors.blueGrey,
  title: const Text("Employe", style: TextStyle(color: Colors.white)),
  actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.list))],
);

final bottomnav = Container(
  height: 55.0,
  child: BottomAppBar(
    color: Colors.blueGrey,
    child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_box),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
    ),
  ),
);
