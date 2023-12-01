import 'package:employe_database_hive/pages/add_emply.dart';
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
      appBar: AppBar(
        // elevation: 0.1,
        backgroundColor: Colors.blueGrey,
        title: const Text("Employe", style: TextStyle(color: Colors.white)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.list))],
      ),
      bottomNavigationBar: SizedBox(
        height: 55.0,
        child: BottomAppBar(
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(),
                  leading: Container(
                    padding: const EdgeInsets.only(right: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1),
                      ),
                    ),
                    child: const Icon(Icons.person),
                  ),
                  title: const Text("Person 1"),
                  subtitle: const Row(
                    children: [
                      Icon(Icons.safety_check),
                      Text("manager"),
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete))),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  color: Colors.blueGrey,
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddEmployeeDetails(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
