import 'package:flutter/material.dart';

class AddEmployeeDetails extends StatefulWidget {
  const AddEmployeeDetails({super.key});

  @override
  State<AddEmployeeDetails> createState() => _AddEmployeeDetailsState();
}

class _AddEmployeeDetailsState extends State<AddEmployeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Employee Name"),
            SizedBox(
              height: 5,
            ),
            TextField(
              cursorWidth: 5,
              decoration: InputDecoration(
                  hintText: "name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
            SizedBox(
              height: 5,
            ),
            Text("Employee Age"),
            SizedBox(
              height: 5,
            ),
            TextField(
              cursorWidth: 5,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "age",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Add Employee",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
