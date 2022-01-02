part of 'search_data_bloc.dart';

@freezed
class SearchDataEvent with _$SearchDataEvent {
  const factory SearchDataEvent.started() = _Started;
  const factory SearchDataEvent.searchData({required String searchText}) = _SearchData;
}