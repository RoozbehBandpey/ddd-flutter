import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failures.freezed.dart';


@freezed
class AuthFailure with _$AuthFailure{
  const factory AuthFailure.canceledByUser() = CanceledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidCombination() = InvalidCombination;
}