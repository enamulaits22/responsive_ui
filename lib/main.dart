import 'package:flutter/material.dart';
import 'package:responsive_test/tips_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TipsDetailsPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.green,
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.purple,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TipsDetailsPage(),
                  ));
                },
                child: const Text('Tips Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
