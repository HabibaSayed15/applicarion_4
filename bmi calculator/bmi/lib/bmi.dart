import 'package:bmi/cubit.dart';
import 'package:bmi/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiView extends StatelessWidget {
  const BmiView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(BmiCounter()),
      child: BlocBuilder<CounterCubit, BmiCounter>(
        builder: (context, state) {
          return  SafeArea(
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
                           BlocProvider.of<CounterCubit>(context).counter.toString(),
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
                             BlocProvider.of<CounterCubit>(context).remove();
                            },
                            backgroundColor: Colors.white30,
                            mini: true,
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(width: 10),
                          FloatingActionButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).add();
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
                               BlocProvider.of<CounterCubit>(context).counter2.toString(),
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
                                BlocProvider.of<CounterCubit>(context).remove1();
                              },
                              backgroundColor: Colors.white30,
                              mini: true,
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(width: 10),
                            FloatingActionButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context).add1();
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
             BlocProvider.of<CounterCubit>(context).resultcal();
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
            BlocProvider.of<CounterCubit>(context).resultcal().toStringAsFixed(2),
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          if (BlocProvider.of<CounterCubit>(context).resultcal() <= 16)
            const Text(
              "Severe Thinness",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          if (BlocProvider.of<CounterCubit>(context).resultcal() > 16 && BlocProvider.of<CounterCubit>(context).resultcal() <= 17)
            const Text("Moderate Thinness",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (BlocProvider.of<CounterCubit>(context).resultcal() > 17 && BlocProvider.of<CounterCubit>(context).resultcal() <= 18.5)
            const Text("Mild Thinness",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (BlocProvider.of<CounterCubit>(context).resultcal() > 18.5 && BlocProvider.of<CounterCubit>(context).resultcal() <= 25)
            const Text("Normal",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (BlocProvider.of<CounterCubit>(context).resultcal() > 25 && BlocProvider.of<CounterCubit>(context).resultcal() <= 30)
            const Text("Overweight",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (BlocProvider.of<CounterCubit>(context).resultcal() > 30 && BlocProvider.of<CounterCubit>(context).resultcal() <= 35)
            const Text("Obese Class I",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (BlocProvider.of<CounterCubit>(context).resultcal() > 35 && BlocProvider.of<CounterCubit>(context).resultcal() <= 40)
            const Text("Obese Class II",
                style: TextStyle(color: Colors.green, fontSize: 30)),
          if (BlocProvider.of<CounterCubit>(context).resultcal() > 40)
            const Text("Obese Class III",
                style: TextStyle(color: Colors.green, fontSize: 30)),
        ],
      )),
            ),
          );
        },
      ),
    );
  }
}
