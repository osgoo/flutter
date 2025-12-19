// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:my_first_app/routes.dart';
import 'package:my_first_app/tile_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final lastNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  GenderEnum gender = GenderEnum.male;
  bool isChecked = false;

  void onSubmit() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(lastNameController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: lastNameController,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Хоосон байж болохгүй";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text("Овог"),
                    hintText: "hello",
                  ),
                ),
                // dropdown
                DropdownButtonFormField(
                  validator: (value) {
                    if (value == "1") {
                      return "Dropdown 1 байж болохгүй";
                    }
                    return null;
                  },
                  items: [
                    DropdownMenuItem(
                      value: "1",
                      child: Text("Dropdown1"),
                    ),
                    DropdownMenuItem(
                      value: "2",
                      child: Text("Dropdown2"),
                    ),
                    DropdownMenuItem(
                      value: "3",
                      child: Text("Dropdown3"),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                //Radio
                Row(
                  children: [
                    Radio(
                      value: GenderEnum.male,
                      groupValue: gender,
                      onChanged: (value) {
                        if (value != null)
                          setState(() {
                            gender = value;
                          });
                      },
                    ),
                    Text("Male"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: GenderEnum.female,
                      groupValue: gender,
                      onChanged: (value) {
                        if (value != null)
                          setState(() {
                            gender = value;
                          });
                      },
                    ),
                    Text("Female"),
                  ],
                ),

                //Checkbox
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (val){
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                    ),
                    Text("Үйлчилгээний нөхцөл зөвшөөрч байна"),
                  ],
                ),

                ElevatedButton(
                  onPressed: onSubmit,
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum GenderEnum { male, female }
