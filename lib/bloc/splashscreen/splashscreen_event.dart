part of 'splashscreen_bloc.dart';

@immutable
abstract class SplashscreenEvent {}

class CheckUser extends SplashscreenEvent {
  final String token;
  final BuildContext context;
  CheckUser({required this.token, required this.context});
}
