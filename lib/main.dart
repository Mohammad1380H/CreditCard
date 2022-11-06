import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ExpandablePanel(
                    theme: const ExpandableThemeData(
                      tapBodyToCollapse: true,
                    ),
                    header: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(213, 192, 9, 152)),
                      child: const Center(child: Text("باز کن")),
                    ),
                    collapsed: Stack(children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Image.asset("assets/Images/1.png")),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Image.asset("assets/Images/2.png")),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Image.asset("assets/Images/3.png")),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Image.asset("assets/Images/4.png")),
                    ]),
                    expanded: Column(
                      children: [
                        Image.asset("assets/Images/1.png"),
                        Image.asset("assets/Images/2.png"),
                        Image.asset("assets/Images/3.png"),
                        Image.asset("assets/Images/4.png"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
