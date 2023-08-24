import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<double>> matrix1 =
      List.generate(3, (i) => List.generate(3, (j) => 0.0));
  List<List<double>> matrix2 =
      List.generate(3, (i) => List.generate(3, (j) => 0.0));
  List<List<double>> resultMatrix =
      List.generate(3, (i) => List.generate(3, (j) => 0.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Matrix Calculator"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Matrix A",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                for (int i = 0; i < 3; i++)
                  Row(
                    children: [
                      for (int j = 0; j < 3; j++)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: TextField(
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  onChanged: (value) {
                                    matrix1[i][j] =
                                        double.tryParse(value) ?? 0.0;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  )),
                            ),
                          ),
                        )
                    ],
                  )
              ],
            ),
          ),
        ));
  }
}
