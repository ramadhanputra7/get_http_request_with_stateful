import 'package:flutter/material.dart';

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Container(
                height: 100,
                width: 100,
                child: Image.network(
                  "https://graph.facebook.com/4/picture?type=square",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            FittedBox(
              child: Text("ID : Belum ada data"),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text("Name : "),
            ),
            FittedBox(
              child: Text("Belum ada data"),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text("Email : "),
            ),
            FittedBox(
              child: Text("Belum ada data"),
            ),
            SizedBox(
              height: 60,
            ),
            OutlinedButton(onPressed: () {}, child: Text("GET DATA"))
          ],
        ),
      ),
    );
  }
}
