import 'package:eighty_three_task/constants/constants.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({String? message})
      : super(message: message ?? Strings.defaultErrorMessage);
}

class CacheFailure extends Failure {
  const CacheFailure({String? message})
      : super(message: message ?? Strings.defaultErrorMessage);
}
