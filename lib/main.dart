import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project3/cubit/counter_cubit.dart';
import 'package:my_project3/cubit/counter_state.dart';
import 'package:my_project3/widgets/a_team_column.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: const Text('points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 400,
                    child: TeamColumn(teamName: 'B'),
                  ),
                  SizedBox(
                    height: 400,
                    child: VerticalDivider(),
                  ),
                  SizedBox(
                    height: 400,
                    child: TeamColumn(teamName: 'A'),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                      .teamsCounter(team: 'reset', buttonNumber: 0);
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
