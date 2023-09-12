part of 'timer_screen_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState(this.duration, this.actionStatus);
  final int duration;
  final int actionStatus;

  @override
  List<Object> get props => [duration, actionStatus];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration, super.actionStatus);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration, super.actionStatus);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration, super.actionStatus);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0, 0);
}
