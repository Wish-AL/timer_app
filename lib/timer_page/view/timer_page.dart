import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:timer_app/timer_page/view/timer_widget.dart';
import 'package:timer_app/timetable/cubit/timetable_cubit.dart';

import '../../data/timer_data_local_db_controller.dart';
import '../../data/timer_repository.dart';
import '../bloc/timer_screen_bloc.dart';
import '../timer_element.dart';
import 'background_animation.dart';

class TimerPage extends StatelessWidget {
  const TimerPage(
      {super.key, required this.countdownTimes, required this.namesOfActivity});

  final List<int> countdownTimes;
  final List<String> namesOfActivity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TimerBloc>(
      create: (BuildContext context) => TimerBloc(
        ticker: const Ticker(),
        countdownTimes: countdownTimes ?? [0],
        namesOfActivity: namesOfActivity ?? [''],
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Timer(),
      ),
    );
  }
}

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final activity =
        context.select((TimerBloc bloc) => bloc.state.actionStatus);
    final dataBloc = BlocProvider.of<TimerBloc>(context);
    final repository = RepositoryProvider.of<TimerRepository>(context);
    const scrollDirection = Axis.horizontal;
    final controller = ItemScrollController();
    return Scaffold(
      appBar: CupertinoNavigationBar(
          border: const Border(bottom: BorderSide.none),
          backgroundColor: const Color(0xFFFEFEFE).withOpacity(1),
          automaticallyImplyLeading: true,
          middle: const SizedBox(
            width: double.infinity,
            child: Text(
              'timer',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFF191E44),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                //height: 0.07,
                letterSpacing: 0.15,
              ),
            ),
          ),
          trailing: IconButton(
            iconSize: 24,
            color: Colors.green.shade700,
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.ellipsis_vertical,
            ),
          )),
      body: Stack(
        children: <Widget>[
          const BackgroundAnimation(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 110,
              ),
              BlocListener<TimerBloc, TimerState>(
                listenWhen: (prev, state) {
                  if (prev.actionStatus != state.actionStatus) {
                    return true;
                  } else {
                    return false;
                  }
                },
                listener: (context, state) {
                  controller.jumpTo(
                    index: state.actionStatus,
                    // duration: const Duration(microseconds: 250),
                    // curve: Curves.linear,
                  );
                },
                child: SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: ScrollablePositionedList.builder(
                    padding: const EdgeInsets.only(left: 12),
                    // clipBehavior: Clip.none,
                    scrollDirection: scrollDirection,
                    itemScrollController: controller,
                    itemCount: dataBloc.namesOfActivity.length,
                    itemBuilder: (BuildContext context, int index) {
                      final textStyle = index == activity
                          ? const TextStyle(
                              color: Color(0xFF191E44),
                              fontSize: 43,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            )
                          : const TextStyle(
                              color: Color(0xFFB2B2B2),
                              fontSize: 22,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1,
                            );
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            dataBloc.namesOfActivity[index],
                            style: textStyle,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                  width: 359,
                  height: 144,
                  child: TimerWidget(duration: duration)),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        child: TimerControlButton(),
      ),
    );
  }
}

class TimerControlButton extends StatelessWidget {
  const TimerControlButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return switch (state) {
          TimerInitial() => TimerButton(
              name: 'Start',
              onPressed: () => context.read<TimerBloc>().add(
                    TimerStarted(
                        duration: state.duration,
                        actionStatus: state.actionStatus),
                  ),
            ),
          TimerRunInProgress() => TimerButton(
              name: 'Stop/Pause',
              onPressed: () => context.read<TimerBloc>().add(
                    const TimerPaused(),
                  ),
            ),
          TimerRunPause() => TimerButton(
              name: 'Run',
              onPressed: () => context.read<TimerBloc>().add(
                    const TimerResumed(),
                  ),
            ),
          TimerRunComplete() => TimerButton(
              name: 'Start',
              onPressed: () => context.read<TimerBloc>().add(
                    const TimerReset(),
                  ),
            ),
        };
      },
    );
  }
}

class TimerButton extends StatelessWidget {
  const TimerButton({super.key, required this.name, required this.onPressed});

  final String name;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 361,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: ShapeDecoration(
          color: const Color(0xFF12163A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              color: Color(0xFFFEFEFE),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              //height: 1,
              letterSpacing: 0.15,
            ),
          ),
        ),
      ),
    );
  }
}
