import 'package:first_app/widgets/expensess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(158, 21, 67, 136),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (fn) => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,

        //Dark Theme Mode
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  kDarkColorScheme.primaryContainer,
              foregroundColor:
                  kDarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),
        //light Theme
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor:
                kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.all(8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor:
                    kColorScheme.primaryContainer),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 23, 12, 173),
                  fontSize: 17,
                ),
              ),
          // scaffoldBackgroundColor:
          //     Color.fromARGB(36, 107, 83, 6),
        ),
        themeMode: ThemeMode.system,
        home: const Expenses(),
      ),
    ),
  );
}
