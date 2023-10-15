import 'package:flutter/material.dart';

// ignore: camel_case_types
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<first> {
  int counter = 63;
  int counter2 = 160;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(115, 15, 4, 70),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Center(
            child: Text(
          "BMI Calculator App",
          style: TextStyle(fontSize: 25),
        )),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(left: 15),
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(color: Colors.white30, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$counter",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "KG",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                counter--;
                              });
                            },
                            backgroundColor: Colors.white30,
                            mini: true,
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(width: 10),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            backgroundColor: Colors.white30,
                            mini: true,
                            child: const Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 300,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(color: Colors.white30, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$counter2",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "CM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  counter2--;
                                });
                              },
                              backgroundColor: Colors.white30,
                              mini: true,
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(width: 10),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  counter2++;
                                });
                              },
                              backgroundColor: Colors.white30,
                              mini: true,
                              child: const Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 57, 90),
              fixedSize: const Size(370, 60),
            ),
            onPressed: () {
              setState(() {
                result =((counter / (counter2 * counter2)) * 10000);
                
              });
            },
            child: const Text(
              "Calculate",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Text(
            "Result : ${result.toStringAsFixed(2)}",
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          if (result <= 16)
            const Text(
              "Severe Thinness",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          if (result > 16 && result <= 17)
            const Text("Moderate Thinness",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (result > 17 && result <= 18.5)
            const Text("Mild Thinness",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (result > 18.5 && result <= 25)
            const Text("Normal",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (result > 25 && result <= 30)
            const Text("Overweight",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (result > 30 && result <= 35)
            const Text("Obese Class I",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (result > 35 && result <= 40)
            const Text("Obese Class II",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (result > 40)
            const Text("Obese Class III",
                style: TextStyle(color: Colors.green, fontSize: 30)),
        ],
      )),
    ));
  }
}
