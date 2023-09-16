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
    required int duration,
  })  : _ticker = ticker,
        _repository = repository,
        //
        super(TimerInitial(duration, 0)) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<_TimerTicked>(_onTicked);
  }

  final TimerRepository _repository;
  final Ticker _ticker;
  final int _duration = 10; //how to assign _repository.time[0];
  final int iterationNumber =
      3; //TODO replace 2 on = _repository.timeList.length;
  int iterationCounter = 0;
  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _runTicker(int duration, int actionStatus) {
    _tickerSubscription?.cancel();
    _tickerSubscription =
        _ticker.tick(ticks: duration).listen((duration) => add(_TimerTicked(
              duration: duration,
              actionStatus: actionStatus,
            )));
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(event.duration, event.actionStatus));
    _runTicker(event.duration, event.actionStatus);
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
    emit(TimerInitial(_duration, 0));
    iterationCounter = 0;
  }

  void _onTicked(_TimerTicked event, Emitter<TimerState> emit) {
    if (event.duration >= 0) {
      emit(TimerRunInProgress(event.duration, event.actionStatus));
    } else {
      ++iterationCounter;
      if (iterationCounter < iterationNumber) {
        emit(TimerRunInProgress(
            _repository.time[iterationCounter], iterationCounter));
        _runTicker(_repository.time[iterationCounter], iterationCounter);
      } else {
        emit(const TimerRunComplete());
      }
    }
  }
}
