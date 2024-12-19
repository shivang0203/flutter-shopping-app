// bloc/home_section_state.dart

import '../models/home_section.dart';

import 'package:equatable/equatable.dart';


abstract class HomeSectionState extends Equatable {
  const HomeSectionState();

  @override
  List<Object?> get props => [];
}

class HomeSectionInitial extends HomeSectionState {}

class HomeSectionLoading extends HomeSectionState {}

class HomeSectionLoaded extends HomeSectionState {
  final List<HomeSection> homeSections;

  const HomeSectionLoaded(this.homeSections);

  @override
  List<Object?> get props => [homeSections];
}

class HomeSectionError extends HomeSectionState {
  final String message;

  const HomeSectionError(this.message);

  @override
  List<Object?> get props => [message];
}
