// bloc/home_section_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_app/api_service/api_service.dart';
import 'home_section_event.dart';
import 'home_section_state.dart';

class HomeSectionBloc extends Bloc<HomeSectionEvent, HomeSectionState> {
  HomeSectionBloc() : super(HomeSectionInitial()) {
    on<FetchHomeSections>(_onFetchHomeSections);
  }

  Future<void> _onFetchHomeSections(
    FetchHomeSections event,
    Emitter<HomeSectionState> emit,
  ) async {
    emit(HomeSectionLoading());
    try {
      // Fetch data from the API
      final homeSections = await ApiService.fetchHomeSections();
      print("200");
      emit(HomeSectionLoaded(homeSections));
    } catch (e) {
      emit(HomeSectionError(e.toString()));
    }
  }
}
