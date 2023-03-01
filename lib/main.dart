// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(mainSite());

class mainSite extends StatefulWidget {
  const mainSite({super.key});

  @override
  State<mainSite> createState() => _mainSiteState();
}

class _mainSiteState extends State<mainSite> {
  TextEditingController _tec = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 167,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/85690802?v=4'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ".:! Make A Wish !:.",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 350,
                child: TextField(
                  style: TextStyle(color: Colors.grey),
                  controller: _tec,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: "Give me something",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.greenAccent),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
