import 'AppAction.dart';
import 'AppState.dart';

enum Actions {newvalue}

AppState reducer(AppState state, dynamic action) {
  if (action is UpdateValueAction) {
    return state.copyWith(value: action.value);
  } else if (action is UpdateUserAction) {
    return state.copyWith(userName: action.userName);
  } else if (action is UpdateNameAction) {
    return state.copyWith(name: action.name);
  } else if (action is UpdateEmailAction) {
    return state.copyWith(email: action.email);
  } else {
    return state;
  }
}

