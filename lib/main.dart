import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Press Me";
  int changingIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("WELCOME!!")),
        ),
        body: Center(
          child: SizedBox(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  // style: const ButtonStyle( backgroundColor: Colors.yellow),
                  onPressed: () {
                    setState(() {
                      buttonName = "Pressed";
                    });
                  },
                  child: Text(buttonName),
                ),
                 ElevatedButton(
                  // style: const ButtonStyle( backgroundColor: Colors.yellow),
                  onPressed: () {
                    setState(() {
                      buttonName = "Pressed";
                    });
                  },
                  child: Text(buttonName),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Color.fromARGB(255, 194, 26, 236),
                size: 30,
              ),
              label: "HOME",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  // color: Color.fromARGB(255, 240, 151, 181),
                  size: 30,
                ),
                label: "PROFILE")
          ],
          currentIndex: changingIndex,
          onTap: (int index) {
            setState(() {
              changingIndex = index;
            });
          },
        ),
      ),
    );
  }
}
