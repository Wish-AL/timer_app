import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/timer_data_local_db_controller.dart';
import '../../data/timer_repository.dart';
import '../bloc/timer_screen_bloc.dart';
import '../timer_element.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (BuildContext context) => TimerRepository(dbController: LocalDbController()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<TimerBloc>(
            create: (BuildContext context) => TimerBloc(
              ticker: const Ticker(),
              repository: context.read(), //need TimerRepository()
              duration: RepositoryProvider.of<TimerRepository>(context).time[0],
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
    final activity = context.select((TimerBloc bloc) => bloc.state.actionStatus);
    // final dataBloc = BlocProvider.of<TimerBloc>(context);
    final repository = RepositoryProvider.of<TimerRepository>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              duration.toString().padLeft(2, '0'),
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 40,
            ),
            Text('$activity'),
            const SizedBox(
              height: 10,
            ),
            const TimerButton(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'start',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TimerButton extends StatelessWidget {
  const TimerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return switch (state) {
          TimerInitial() => CupertinoButton.filled(
              child: const Text(''),
              onPressed: () => context.read<TimerBloc>().add(
                    TimerStarted(
                        duration: state.duration,
                        actionStatus: state.actionStatus),
                  ),
            ),
          TimerRunInProgress() => CupertinoButton.filled(
              child: const Text(''),
              onPressed: () => context.read<TimerBloc>().add(
                    const TimerPaused(),
                  ),
            ),
          TimerRunPause() => CupertinoButton.filled(
              child: const Text(''),
              onPressed: () => context.read<TimerBloc>().add(
                    const TimerResumed(),
                  ),
            ),
          TimerRunComplete() => CupertinoButton.filled(
              child: const Text(''),
              onPressed: () => context.read<TimerBloc>().add(
                    const TimerReset(),
                  ),
            ),
        };
      },
    );
  }
}
