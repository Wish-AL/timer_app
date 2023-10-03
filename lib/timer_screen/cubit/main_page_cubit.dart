import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_app/data/timer_repository.dart';

import '../../data/timer_data.dart';

part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit({required TimerRepository timerRepository})
      : _repository = timerRepository,
        super(const MainPageState());

  final TimerRepository _repository;
}
