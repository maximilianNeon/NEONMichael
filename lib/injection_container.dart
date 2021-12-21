// ignore: always_use_package_imports
import 'injection_container.config.dart';
// ignore: directives_ordering
import 'package:get_it/get_it.dart';
// ignore: directives_ordering
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);
