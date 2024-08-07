import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static AuthServices authServices = AuthServices._();

  AuthServices._();

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> createAcc(String mail, String pass) async {
    UserCredential userCredential =
    await auth.createUserWithEmailAndPassword(email: mail, password: pass);
    print(userCredential.user!.email);
    }
}