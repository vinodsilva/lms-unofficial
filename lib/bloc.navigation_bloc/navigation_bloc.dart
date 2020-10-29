import 'package:bloc/bloc.dart';
import 'package:sidebar_animation/pages/morepage.dart';
import '../pages/coursecontentpage.dart';
import '../pages/eventspage.dart';
import '../pages/aboutpage.dart';
import '../pages/studentspage.dart';
import '../pages/morepage.dart';



enum NavigationEvents {
  AboutUsEvent,
  CourseContentEvent,
  EventsClickedEvent,
  StudentsClickedEvent,
  MoreClickedEvent,

}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState =>AboutPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.AboutUsEvent:
        yield AboutPage();
        break;
      case NavigationEvents.CourseContentEvent:
        yield CourseContentPage();
        break;
      case NavigationEvents.EventsClickedEvent:
        yield EventsPage();
        break;
      case NavigationEvents.StudentsClickedEvent:
        yield MorePage();
        break;
      case NavigationEvents.MoreClickedEvent:
        yield MorePage();
        break;

    }
  }
}
