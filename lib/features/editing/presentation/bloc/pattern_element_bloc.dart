import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/domain/entities/pattern_entity.dart';

part 'pattern_element_event.dart';
part 'pattern_element_state.dart';
part 'pattern_element_bloc.freezed.dart';

@lazySingleton
class PatternElementBloc
    extends Bloc<PatternElementEvent, PatternElementState> {
  List<PatternEntity> patternList = [];
  List<ElementEntity> elementList = [];

  PatternElementBloc() : super(_Initial()) {
    on<_ChangeToPatternView>((event, emit) {
      emit(_PatternView(imageUrl: event.imageUrl));
    });
    on<_ChangeToElementView>((event, emit) {
      emit(_ElementView(imageUrl: event.imageUrl));
    });
  }
}
