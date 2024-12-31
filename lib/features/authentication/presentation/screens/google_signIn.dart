// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthServices {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<UserCredential?> loginWithGoogle() async {
//     try {
//       // Sign in with Google
//       final googleUser = await GoogleSignIn().signIn();
//       if (googleUser == null) {
//         // User canceled the sign-in
//         return null;
//       }

//       // Obtain Google authentication details
//       final googleAuth = await googleUser.authentication;

//       // Create a credential
//       final credential = GoogleAuthProvider.credential(
//         idToken: googleAuth.idToken,
//         accessToken: googleAuth.accessToken,
//       );

//       // Sign in to Firebase
//       return await _auth.signInWithCredential(credential);
//     } catch (e) {
//       log("Error during Google sign-in: $e");
//     }
//     return null;
//   }
// }


// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   final AuthServices _auth = AuthServices();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text("Google Sign In"),
//           onPressed: () async {
//             await _auth.loginWithGoogle();
//           },
//         ),
//       ),
//     );
//   }
// }
