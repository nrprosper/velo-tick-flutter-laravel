import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class State<T> with _$State<T> {
  const State._();

  const factory State.init() = _Init<T>;
  const factory State.loading() = _Loading<T>;
  const factory State.success(final T data) = _Success<T>;
  const factory State.error(final Exception exception) = _Error<T>;

  bool get isInit => this is _Init<T>;
  bool get isLoading => this is _Loading<T>;
  bool get isSuccess => this is _Success<T>;
  bool get isError => this is _Error<T>;
  T? get data => (this as _Success<T>?)?.data;
  Exception? get error => (this as _Error<T>?)?.exception;

}