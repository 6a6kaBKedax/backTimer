part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object> get props => [duration];

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

class TimerInitial extends TimerState {
  const TimerInitial(super.duration);
}

class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);
}

class TimerInProgress extends TimerState {
  const TimerInProgress(super.duration);
}

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
