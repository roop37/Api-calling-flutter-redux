class AppState {
  final int value;
  final String userName;
  final String name;
  final String email;

  AppState({
    this.value = 0,
    this.userName = '',
    this.name = '',
    this.email = '',
  });

  AppState copyWith({
    int? value,
    String? userName,
    String? name,
    String? email,
  }) {
    return AppState(
      value: value ?? this.value,
      userName: userName ?? this.userName,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }
}
