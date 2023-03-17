import 'package:di_mixing_app/dummy_data.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setUp()
{
  locator.registerLazySingleton<DummyData>(() => DummyData());

}
