import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key, required this.duration});
  final int duration;
  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> with SingleTickerProviderStateMixin {
  // late CustomTimerController _controller = CustomTimerController(
  //     vsync: this,
  //     begin: Duration(seconds: widget.duration),
  //     end: Duration(),
  //     initialState: CustomTimerState.reset,
  //     interval: CustomTimerInterval.seconds
  // );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "00:",
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
          widget.duration.toString().padLeft(2, '0'),
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
    );
  }
}
