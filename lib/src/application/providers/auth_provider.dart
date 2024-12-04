import 'package:flutter_riverpod/flutter_riverpod.dart';

// État de l'utilisateur
class AuthState {
  final bool isAuthenticated;
  final String? email;
  final String? errorMessage;

  AuthState({
    required this.isAuthenticated,
    this.email,
    this.errorMessage,
  });

  AuthState.unauthenticated()
      : isAuthenticated = false,
        email = null,
        errorMessage = null;
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState.unauthenticated());

  Future<void> login(String username, String password) async {
    // Logique d'authentification fictive pour l'exemple
    if (username == 'admin@admin.com' && password == '1234') {
      state = AuthState(isAuthenticated: true, email: username);
    } else {
      state = AuthState(
        isAuthenticated: false,
        errorMessage: 'Nom d’utilisateur ou mot de passe incorrect.',
      );
    }
  }

  void logout() {
    state = AuthState.unauthenticated();
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(),
);
