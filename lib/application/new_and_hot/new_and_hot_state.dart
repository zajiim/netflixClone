part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<NewHotResults> comingSoonList,
    required List<NewHotResults> everyOnesWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory NewAndHotState.initial() => const NewAndHotState(
        comingSoonList: [],
        everyOnesWatchingList: [],
        isLoading: false,
        isError: false,
      );
}
