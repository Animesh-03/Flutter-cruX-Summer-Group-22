import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Row(children: [
          Expanded(
            child: Container(
              color: const Color(0xFF15202D),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: DefaultTextStyle(
                style: TextStyle(fontSize: 19, color: Colors.white70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Settings", style: TextStyle(fontSize: 32)),
                    const SizedBox(height: 13),
                    Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 13),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade700,
                          borderRadius: BorderRadius.circular(8),
                        ),
//                     height: 50,
                        width: 300,
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text("Account"),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade700,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 50,
                      width: 300,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade700,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 50,
                      width: 300,
//                     child:
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade700,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 50,
                      width: 300,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    ),
  );
}
