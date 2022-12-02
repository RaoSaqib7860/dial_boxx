import 'package:dialbox_seller/view/custom_widgets/persistant_bottom_sheet_screen.dart';
import 'package:dialbox_seller/view/Screens/home/home_screen/home_screen.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors =
    <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor as Constructor<Object>;
}

class ClassBuilder {
  static void registerClasses() {
    register<HomeScreen>(() => HomeScreen());
    // register<MainPage>(() => MainPage());
  }

  static dynamic fromString(String type) {
    if (_constructors[type] != null) return _constructors[type]!();
  }
}
