import 'package:get_it/get_it.dart';
import 'package:navigationwithoutcontext/services/navigationService.dart';

GetIt locator = GetIt.instance;

void setLocator(){
  locator.registerLazySingleton(() => NavigationService());
}