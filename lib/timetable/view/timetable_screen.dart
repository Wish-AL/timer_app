import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_app/data/timer_repository.dart';

import '../../timer_page/view/timer_page.dart';
import '../cubit/timetable_cubit.dart';
import 'editing_screen.dart';

class TimetablePageManagement extends StatelessWidget {
  const TimetablePageManagement({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TimetableCubit>(
      create: (BuildContext context) => TimetableCubit(
        id: id,
        timerRepository: context.read<TimerRepository>(),
      ),
      child: const TimetableScreen(),
    );
  }
}

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final timetableData = BlocProvider.of<TimetableCubit>(context);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        border: const Border(bottom: BorderSide.none),
        backgroundColor: const Color(0xFFFEFEFE).withOpacity(1),
        automaticallyImplyLeading: true,
        // leading: IconButton(
        //   //iconSize: 24,
        //   icon: const Icon(CupertinoIcons.bars),
        //   onPressed: () {},
        // ),
        middle: SizedBox(
          width: double.infinity,
          child: Text(
            timetableData.state.name!,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Color(0xFF191E44),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              //height: 0.07,
              letterSpacing: 0.15,
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              iconSize: 24,
              color: Colors.red.shade500,
              icon: const Icon(CupertinoIcons.delete),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 24,
              color: Colors.green.shade700,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Color(0xFFE5E5E5)),
              ),
            ),
            child: SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '6.30',
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                        letterSpacing: 0.25,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                      height: 22,
                      child: Center(
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFCCCCCC),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      '5 intervals',
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                        letterSpacing: 0.25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  TimetableItem(
                    name: 'Pre-start preparation',
                    value: timetableData.state.preparation!,
                    isTime: true,
                  ),
                  TimetableItem(
                    name: timetableData.state.workName!,
                    value: timetableData.state.work!,
                    isTime: true,
                    description: timetableData.state.workDescription,
                  ),
                  TimetableItem(
                    name: timetableData.state.restName!,
                    value: timetableData.state.rest!,
                    isTime: true,
                    description: timetableData.state.restDescription,
                  ),
                  TimetableItem(
                    name: 'Cycles',
                    value: timetableData.state.cycles!,
                    isTime: false,
                    description: 'Work and rest',
                  ),
                  TimetableItem(
                    name: 'Sets',
                    value: timetableData.state.sets!,
                    isTime: false,
                    description: 'Repeat everything',
                  ),
                  TimetableItem(
                    name: 'Rest between sets',
                    value: timetableData.state.restBetweenSets!,
                    isTime: true,
                  ),
                  TimetableItem(
                    name: 'Calm down',
                    value: timetableData.state.calmDown!,
                    isTime: true,
                    //description: 'calm down',
                  ),
                ],
              ),
            ),
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 2, color: Color(0xFFE5E5E5)),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 107,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 31,
                ),
                child: CupertinoButton(
                  color: const Color(0xFF8089FF),
                  borderRadius: BorderRadius.circular(10),
                  onPressed: () {
                    timetableData.setTimerCount();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TimerPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'START',
                    style: TextStyle(
                      color: Color(0xFFFEFEFE),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimetableItem extends StatelessWidget {
  const TimetableItem({
    super.key,
    required this.name,
    required this.value,
    required this.isTime,
    this.description,
  });

  final String name;
  final int value;
  final String? description;
  final bool isTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onDoubleTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EditingScreen(
                name: name,
                value: value,
                description: description,
                isTime: isTime,
              ),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 96,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          decoration: ShapeDecoration(
            color: const Color(0xFFF7F9FF),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFCCD0FF)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                //fit: FlexFit.tight,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 180,
                    height: 48,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            name,
                            style: const TextStyle(
                              color: Color(0xFF191919),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              //height: 1,
                              letterSpacing: 0.02,
                            ),
                          ),
                        ),
                        description != null
                            ? Expanded(
                                child: Text(
                                  description!,
                                  style: const TextStyle(
                                    color: Color(0xFF3366FF),
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    //height: 1,
                                    letterSpacing: 0.04,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: 48,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      isTime ? '00:05:00' : '$value',
                      style: const TextStyle(
                        color: Color(0xFF191E44),
                        fontSize: 34,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1,
                        letterSpacing: 0.09,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
