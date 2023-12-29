import 'package:first_proj/components/chosen_part/card_part.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageInitial()) {
    on<ChangeWinePageEvent>((event, emit) {
      emit(PageWineChanged());
      // TODO: implement event handler
    });

    on<ChangeCheesePageEvent>((event, emit) {
      emit(PageCheeseChanged());
    });
  }
}
