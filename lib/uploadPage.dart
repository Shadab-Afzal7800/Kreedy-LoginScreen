import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromARGB(255, 205, 195, 195),
              Color.fromARGB(255, 63, 63, 63)
            ])),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 350),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
                iconSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                height: 180,
                margin: EdgeInsets.only(left: 100, right: 100),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/uploadIcon.png'),
                        fit: BoxFit.fill)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Center(
                child: Text(
                  'Upload your documents',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 163, 52, 18),
                    Color.fromARGB(255, 248, 149, 119)
                  ])),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'SELECT',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
