import 'package:flutter/material.dart';

class KreedyLogin extends StatefulWidget {
  const KreedyLogin({super.key});

  @override
  State<KreedyLogin> createState() => _KreedyLoginState();
}

class _KreedyLoginState extends State<KreedyLogin> {
  bool _isObscure = true;
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
              Color.fromARGB(255, 132, 126, 126),
              Colors.grey.shade900
            ])),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350, top: 10),
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
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 120,
                width: 120,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Kreedy Partner App',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 70.0, right: 20, left: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Enter your email/mobile no.',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: _isObscure,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 235),
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color.fromARGB(255, 120, 19, 18),
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 163, 52, 18),
                    Color.fromARGB(255, 248, 149, 119)
                  ])),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
