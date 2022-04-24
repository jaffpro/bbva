import 'package:bbva/home.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: const MyHomePage(title: 'Flutter Demo Home Page'),
        image: Image.asset(
          "assets/BBVA_2019.png",
          width: 168,
        ),
        photoSize: 168,
        backgroundColor: const Color(0xff004481),
        useLoader: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;

  String _password = "";

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: Container()),
            Center(child: Image.asset("assets/BBVA_2019b.png")),
            Expanded(child: Container()),
            const Padding(
              padding: EdgeInsets.only(left: 36.0),
              child: Text("Hello, Mustafa",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff004481),
                      fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 36.0),
              child: Text("How was your day today?",
                  style: TextStyle(color: Color(0xff889fb4))),
            ),
            Expanded(child: Container()),
            const Padding(
              padding: EdgeInsets.only(left: 36.0),
              child: Text("Password",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff004481),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        if (value.length == 6) {
                          Navigator.of(context).push(_createRoute());
                        }
                      },
                      style: const TextStyle(
                          color: Color(0xff004481),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      decoration: const InputDecoration(
                          focusColor: Color(0xff004481),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff004481),
                            width: 3,
                          )),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff004481),
                            width: 3,
                          ))),
                      obscureText: _obscureText,
                    ),
                    IconButton(
                      onPressed: _toggle,
                      icon: Icon(_obscureText
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined),
                      color: const Color(0xff004481),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            const Center(
                child: Text("I forgot my password",
                    style: TextStyle(color: Color(0xff004481), fontSize: 15))),
            const SizedBox(
              height: 92,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Column(
                children: [
                  Row(children: [
                    Image.asset("assets/surface1.png"),
                    const SizedBox(
                      width: 21,
                    ),
                    const Text("mobile token",
                        style:
                            TextStyle(color: Color(0xff004481), fontSize: 15)),
                  ]),
                  const SizedBox(
                    height: 51,
                  ),
                  Row(children: [
                    Image.asset("assets/qr-code (4).png"),
                    const SizedBox(
                      width: 21,
                    ),
                    const Text("Operation\nQR + Code",
                        style:
                            TextStyle(color: Color(0xff004481), fontSize: 15)),
                  ]),
                  const SizedBox(
                    height: 51,
                  ),
                  Row(children: [
                    Image.asset("assets/phone-call (1).png"),
                    const SizedBox(
                      width: 21,
                    ),
                    const Text("BBVA Line",
                        style:
                            TextStyle(color: Color(0xff004481), fontSize: 15)),
                  ]),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: 9,
              width: double.infinity,
              color: const Color(0xff004481),
            )
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
