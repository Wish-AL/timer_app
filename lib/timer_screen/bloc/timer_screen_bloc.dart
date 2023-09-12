import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:timer_app/data/timer_repository.dart';
import '../timer_element.dart';

part 'timer_screen_event.dart';

part 'timer_screen_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc({
    required Ticker ticker,
    required TimerRepository repository,
  })  : _ticker = ticker,
        _repository = repository,
        super(const TimerInitial(_duration, 0)) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<_TimerTicked>(_onTicked);
  }

  final TimerRepository _repository;
  final Ticker _ticker;
  static const int _duration = 60;
  final int iterationNumber =
      14; //TODO replace 14 on = _repository.timeList.length;
  int iterationCounter = 0;
  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(event.duration, event.actionStatus));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTicked(
              duration: duration,
              actionStatus: event.actionStatus,
            )));
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause();
      emit(TimerRunPause(state.duration, state.actionStatus));
    }
  }

  void _onResumed(TimerResumed resume, Emitter<TimerState> emit) {
    if (state is TimerRunPause) {
      _tickerSubscription?.resume();
      emit(TimerRunInProgress(state.duration, state.actionStatus));
    }
  }

  void _onReset(TimerReset event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(const TimerInitial(_duration, 0));
  }

  void _onTicked(_TimerTicked event, Emitter<TimerState> emit) {
    if (iterationCounter <= iterationNumber) {
      if (event.duration > 0) {
        emit(TimerRunInProgress(event.duration, event.actionStatus));
      } else {
        ++iterationCounter;
        emit(TimerInitial(_repository.time[iterationCounter], iterationCounter));
      }
    } else {
      emit(const TimerRunComplete());
    }
  }
}
