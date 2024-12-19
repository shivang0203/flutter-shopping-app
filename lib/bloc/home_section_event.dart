// bloc/home_section_event.dart

import 'package:equatable/equatable.dart';

abstract class HomeSectionEvent extends Equatable {
  const HomeSectionEvent();

  @override
  List<Object?> get props => [];
}

class FetchHomeSections extends HomeSectionEvent {
  const FetchHomeSections();
}
