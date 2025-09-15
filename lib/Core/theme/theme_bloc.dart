import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
//enum
enum ThemeOption {
  light,
  dark,
  system,
}

//Event

abstract class ThemeEvent extends Equatable{ //Extends the equatable
  const ThemeEvent();
  @override
  List<Object> get props => [];
}

class LoadTheme extends ThemeEvent{} //event that tells the bloc to load the theme preference from the storage

class ChangeTheme extends ThemeEvent{ //
  final ThemeOption option; //enum

  //constructor
  const ChangeTheme(this.option);
  @override
  List<Object> get props => [option];
}

class systemThemeChanged extends ThemeEvent{}

//State
class ThemeState extends Equatable { //Represents the current state of the applications theme
  final ThemeOption themeOption;
  final bool isDark;
  final ThemeMode themeMode;

  const ThemeState({
    required this.themeOption, 
    required this.isDark, 
    required this.themeMode
  });

  //Default starting theme state
  factory ThemeState.initial() {
    return const ThemeState(
      themeOption: ThemeOption.system, 
      isDark: false, 
      themeMode: ThemeMode.system
    );
  }

  ThemeState copyWith({ThemeOption? themeOption, bool? isDark, ThemeMode? themeMode}) {
    return ThemeState(
      themeOption: themeOption ?? this.themeOption, 
      isDark: isDark ?? this.isDark, 
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override 
  List<Object> get props => [themeOption, isDark, themeMode];
}

//Bloc
