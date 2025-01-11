import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project3/cubit/counter_cubit.dart';
import 'package:my_project3/widgets/custom_button.dart';

class TeamColumn extends StatelessWidget {
  const TeamColumn({super.key, required this.teamName});
  final String teamName;

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    final teamPoints =
        teamName == 'A' ? counterCubit.teamAPoints : counterCubit.teamBPoints;
    return Column(
      children: [
        Text(
          'Team $teamName',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          '$teamPoints',
          style: const TextStyle(
            fontSize: 100,
          ),
        ),
        CustomButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .teamsCounter(team: teamName, buttonNumber: 1);
            },
            pointNumber: '1'),
        const SizedBox(
          height: 15,
        ),
        CustomButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .teamsCounter(team: teamName, buttonNumber: 2);
            },
            pointNumber: '2'),
        const SizedBox(
          height: 15,
        ),
        CustomButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .teamsCounter(team: teamName, buttonNumber: 3);
            },
            pointNumber: '3'),
      ],
    );
  }
}
