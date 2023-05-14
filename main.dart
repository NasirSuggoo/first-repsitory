import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isRelay1On = false;
  bool _isRelay2On = false;
  bool _isRelay3On = false;
  bool _isRelay4On = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Smart Distribution Box'),
          backgroundColor: Colors.blue, // Updated background color to blue
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const ListTile(
                title: Text(
                  'About US',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 76, 138),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                subtitle: Text(
                  'This is our mobile application to control the Smart Distribution. By using this we can control the Load and source.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 50),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 5.0,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Manual Control',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 76, 138),
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isRelay1On = !_isRelay1On;
                              });
                            },
                            child: const Text('Switch 1'),
                          ),
                          const SizedBox(width: 50),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _isRelay1On ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isRelay2On = !_isRelay2On;
                              });
                            },
                            child: const Text('Switch 2'),
                          ),
                          const SizedBox(width: 50),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _isRelay2On ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isRelay3On = !_isRelay3On;
                              });
                            },
                            child: const Text('Switch 3'),
                          ),
                          const SizedBox(width: 50),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _isRelay3On ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isRelay4On = !_isRelay4On;
                              });
                            },
                            child: const Text('Switch 4'),
                          ),
                          const SizedBox(width: 50),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _isRelay4On ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
