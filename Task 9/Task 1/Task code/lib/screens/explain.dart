import 'package:flutter/material.dart';

import 'package:flutter_application_7/cubit/counter_state.dart';
import 'package:flutter_application_7/widgets/button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

// ignore: must_be_immutable
class Explain extends StatelessWidget {
  int teamApoints = 0;
  int teamBpoints = 0;

  Explain({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 55, 190, 213),
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).temAPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        myButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamAIncrement(team: 'A', buttonNum: 1);
                            },
                            text: "Add 1 points"),
                        myButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamAIncrement(team: 'A', buttonNum: 2);
                            },
                            text: "Add 2 points"),
                        myButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamAIncrement(team: 'A', buttonNum: 3);
                            },
                            text: "Add 3 points"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 10,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).temBPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        myButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamAIncrement(team: 'B', buttonNum: 1);
                            },
                            text: "Add 1 points"),
                        myButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamAIncrement(team: 'B', buttonNum: 2);
                            },
                            text: "Add 2 points"),
                        myButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamAIncrement(team: 'B', buttonNum: 3);
                            },
                            text: "Add 3 points"),
                      ],
                    ),
                  ),
                ],
              ),
              myButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).reset();
                  },
                  text: "Reset"),
            ],
          ),
        );
      },
      listener: (context, state) {
        if (State is CounterAIncrement) {
          teamApoints = BlocProvider.of<CounterCubit>(context).temAPoints;
        } else {
          teamBpoints = BlocProvider.of<CounterCubit>(context).temBPoints;
        }
      },
    );
  }
}
