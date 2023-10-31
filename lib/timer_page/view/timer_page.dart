import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../data/timer_data_local_db_controller.dart';
import '../../data/timer_repository.dart';
import '../bloc/timer_screen_bloc.dart';
import '../timer_element.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (BuildContext context) =>
          TimerRepository(dbController: LocalDbController()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<TimerBloc>(
            create: (BuildContext context) =>
                TimerBloc(
                  ticker: const Ticker(),
                  repository: context.read(), //need TimerRepository()
                  duration: RepositoryProvider
                      .of<TimerRepository>(context)
                      .time[0],
                ),
          )
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Timer(),
        ),
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
    final _scrollDirection = Axis.horizontal;
    final _controller = ItemScrollController();
    return Scaffold(
      appBar: CupertinoNavigationBar(
          border: const Border(bottom: BorderSide.none),
          backgroundColor: const Color(0xFFFEFEFE).withOpacity(1),
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
          Background(),
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
                  _controller.jumpTo(
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
                    scrollDirection: _scrollDirection,
                    itemScrollController: _controller,
                    itemCount: repository.nameOfActivity.length,
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
                            repository.nameOfActivity[index],
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
                child: Row(
                  children: [
                    const Text(
                      '00:',
                      style: TextStyle(
                        color: Color(0xFF12163A),
                        fontSize: 103,
                        fontFamily: 'Roboto Condensed',
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.47,
                      ),
                    ),
                    const Text(
                      '00:',
                      style: TextStyle(
                        color: Color(0xFF12163A),
                        fontSize: 103,
                        fontFamily: 'Roboto Condensed',
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.47,
                      ),
                    ),
                    Text(
                      duration.toString().padLeft(2, '0'),
                      style: const TextStyle(
                        color: Color(0xFF12163A),
                        fontSize: 103,
                        fontFamily: 'Roboto Condensed',
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.47,
                      ),
                    ),
                  ],
                ),
              ),
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

class Background extends StatefulWidget {
  const Background({
    super.key,
  });

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: duration),
    vsync: this,
  )
    ..stop(canceled: false);

  late int duration;
  late int action;

  @override
  void didChangeDependencies() {
    duration = BlocProvider.of<TimerBloc>(context).state.duration;
    action = BlocProvider.of<TimerBloc>(context).state.actionStatus;
    BlocProvider.of<TimerBloc>(context).stream.listen((state) {
      if (state is TimerRunPause ||
          state is TimerRunComplete ||
          state is TimerInitial) {
        _controller.stop(canceled: false);
      } else if (state is TimerRunInProgress) {
        _controller.forward();
      }
      if (state.actionStatus != action) {
        duration = BlocProvider.of<TimerBloc>(context).state.duration;
        action = BlocProvider.of<TimerBloc>(context).state.actionStatus;
        _controller.reset(); //controller did not change duration
        setState(() {});
      }
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;
        return Stack(
          children: <Widget>[
            RelativePositionedTransition(
              size: biggest,
              rect: RectTween(
                begin: Rect.fromLTWH(0, 0, biggest.width, biggest.height),
                end: Rect.fromLTWH(
                  0,
                  biggest.height - 50,
                  biggest.width,
                  50,
                ),
              ).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Curves.linear,
                ),
              ),
              child: Lottie.asset(
                'assets/animation_lnkfhuit.json',
                height: 700,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                fit: BoxFit.fill,
              ),
            ),
          ],
        );
      },
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
          TimerInitial() =>
              TimerButton(
                name: 'Start',
                onPressed: () =>
                    context.read<TimerBloc>().add(
                      TimerStarted(
                          duration: state.duration,
                          actionStatus: state.actionStatus),
                    ),
              ),
          TimerRunInProgress() =>
              TimerButton(
                name: 'Stop/Pause',
                onPressed: () =>
                    context.read<TimerBloc>().add(
                      const TimerPaused(),
                    ),
              ),
          TimerRunPause() =>
              TimerButton(
                name: 'Run',
                onPressed: () =>
                    context.read<TimerBloc>().add(
                      const TimerResumed(),
                    ),
              ),
          TimerRunComplete() =>
              TimerButton(
                name: 'Start',
                onPressed: () =>
                    context.read<TimerBloc>().add(
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
