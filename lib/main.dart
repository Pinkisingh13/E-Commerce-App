import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:t_store/data/repositories/authentication/authentication_repo.dart';
import 'firebase_options.dart';

void main() async {
  // Widget Binding
  final WidgetsBinding widgetBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // GetX Local Storage
  await GetStorage.init();

//  -- Await Splash until items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  // Initialized firebase & Authentication
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (FirebaseApp value) => Get.put(
      AuthenticationRepository(),
    ),
  );

  runApp(
    const App(),
  );
}
