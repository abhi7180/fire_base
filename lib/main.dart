// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:fire_base/ads.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// import 'package:google_sign_in/google_sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

// Ideal time to initialize
//   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
//..
//   await Firebase.initializeApp();
  runApp(MaterialApp(
    home: first(),
  ));
}
class first extends StatefulWidget {


  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  // TextEditingController t1 = TextEditingController();
  // TextEditingController t2 = TextEditingController();
  //
  // String? vid;
  // FirebaseAuth auth = FirebaseAuth.instance;
  //

  //
  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //
  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //
  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }
  //
  //
  //
  //
  // Future<UserCredential> signInWithFacebook() async {
  //   // Trigger the sign-in flow
  //   final LoginResult loginResult = await FacebookAuth.instance.login();
  //
  //   // Create a credential from the access token
  //   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
  //
  //   // Once signed in, return the UserCredential
  //   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  //
  //
  //
  //
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ads.bannerad();
    setState(() {
      ads.myBanner!.load();
    });
    // ads.myBanner!.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body : Container(
        // width: ads.myBanner!.size.width.toDouble(),
        // height: ads.myBanner!.size.height.toDouble(),
        alignment: Alignment.center,
        child: AdWidget(ad: ads.myBanner!,),
      ),
    );
  }
}

