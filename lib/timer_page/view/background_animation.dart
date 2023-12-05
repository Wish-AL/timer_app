import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../bloc/timer_screen_bloc.dart';

class BackgroundAnimation extends StatefulWidget {
  const BackgroundAnimation({
    super.key,
  });

  @override
  State<BackgroundAnimation> createState() => _BackgroundAnimationState();
}

class _BackgroundAnimationState extends State<BackgroundAnimation> with TickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    duration: Duration(seconds: duration),
    vsync: this,
  )..stop(canceled: false);

  bool isAnimating = true;
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
        controller.stop(canceled: false);
        isAnimating = false;
      } else if (state is TimerRunInProgress) {
        controller.forward();
        isAnimating = true;
      }
      if (state.actionStatus != action) {
        duration = BlocProvider.of<TimerBloc>(context).state.duration;
        action = BlocProvider.of<TimerBloc>(context).state.actionStatus;
        controller.reset(); //controller did not change duration
        controller.duration = Duration(seconds: duration);
      }
    });
    super.didChangeDependencies();
  }
  @override
  void initState() {
    super.initState();
    duration = BlocProvider.of<TimerBloc>(context).state.duration;
    action = BlocProvider.of<TimerBloc>(context).state.actionStatus;


  }

  @override
  void dispose() {
    controller.dispose();
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
                  parent: controller,
                  curve: Curves.linear,
                ),
              ),
              child: Lottie.asset(
                'assets/animation_lnkfhuit.json',
                height: 700,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ],
        );
      },
    );
  }
}