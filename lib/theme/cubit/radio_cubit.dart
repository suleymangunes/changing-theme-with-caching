import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:changing_theme_with_caching/theme/hive/theme_caching.dart';

class RadioCubit extends Cubit<String> {
  RadioCubit() : super(ThemeCaching.initialRadio());

  void changeValue(String radio) {
    emit(radio);
  }
}
