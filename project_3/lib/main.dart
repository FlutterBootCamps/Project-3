import 'package:flutter/material.dart';
import 'package:project_2/Bottom_Nav.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_2/utils/get_it_a.dart';

// Main function to start the Flutter application.
void main() async {
  // Ensuring that Flutter is initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Setting up dependencies using the setup function.
  await setup();

  // Initializing GetStorage for persistent storage.
  await GetStorage.init();

  // Running the Flutter application.
  runApp(const MyApp());
}

// MyApp class, the root widget of the application.
class MyApp extends StatelessWidget {
  // Constructor for MyApp widget.
  const MyApp({super.key});

  // Build method to define the structure of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disabling the debug banner in the top-right corner.
      debugShowCheckedModeBanner: false,
      
      // Setting the home screen to be HomeWrapper.
      home: HomeWrapper(),
    );
  }
}

