part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotEvent with _$NewAndHotEvent {
  const factory NewAndHotEvent.comingSoonLoaded() = ComingSoonLoaded;
  const factory NewAndHotEvent.everyOnesWatchingLoaded() = EveryOnesWatchingLoaded;
}