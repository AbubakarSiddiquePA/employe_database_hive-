import 'package:flutter/material.dart';

class AddEmployeeDetails extends StatefulWidget {
  const AddEmployeeDetails({super.key});

  @override
  State<AddEmployeeDetails> createState() => _AddEmployeeDetailsState();
}

class _AddEmployeeDetailsState extends State<AddEmployeeDetails> {
  final _formkey = GlobalKey<FormState>();
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
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Employee Name"),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter employee name";
                  }
                  return null;
                },
                cursorWidth: 5,
                decoration: InputDecoration(
                    hintText: "name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Employee Age"),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter employee age";
                  }
                  return null;
                },
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
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("processing")));
                  }
                },
                child: const Text(
                  "Add Employee",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
