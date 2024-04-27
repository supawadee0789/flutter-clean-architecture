import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285226058),
      surfaceTint: Color(4285226058),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294501324),
      onPrimaryContainer: Color(4283844663),
      secondary: Color(4278190080),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280690214),
      onSecondaryContainer: Color(4289835441),
      tertiary: Color(4284767574),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294438371),
      onTertiaryContainer: Color(4283715143),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294899957),
      onBackground: Color(4280097562),
      surface: Color(4294899957),
      onSurface: Color(4280097562),
      surfaceVariant: Color(4293714134),
      onSurfaceVariant: Color(4283254334),
      outline: Color(4286477933),
      outlineVariant: Color(4291872186),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281479214),
      inverseOnSurface: Color(4294308076),
      inversePrimary: Color(4292330413),
      primaryFixed: Color(4294238152),
      onPrimaryFixed: Color(4280556044),
      primaryFixedDim: Color(4292330413),
      onPrimaryFixedVariant: Color(4283581492),
      secondaryFixed: Color(4293059298),
      onSecondaryFixed: Color(4279966491),
      secondaryFixedDim: Color(4291217094),
      onSecondaryFixedVariant: Color(4282861383),
      tertiaryFixed: Color(4293648855),
      onTertiaryFixed: Color(4280228629),
      tertiaryFixedDim: Color(4291741116),
      onTertiaryFixedVariant: Color(4283188799),
      surfaceDim: Color(4292794838),
      surfaceBright: Color(4294899957),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294505199),
      surfaceContainer: Color(4294176234),
      surfaceContainerHigh: Color(4293781476),
      surfaceContainerHighest: Color(4293386718),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4283318576),
      surfaceTint: Color(4285226058),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286739039),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278190080),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280690214),
      onSecondaryContainer: Color(4292664540),
      tertiary: Color(4282925627),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286215019),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294899957),
      onBackground: Color(4280097562),
      surface: Color(4294899957),
      onSurface: Color(4280097562),
      surfaceVariant: Color(4293714134),
      onSurfaceVariant: Color(4282991162),
      outline: Color(4284898901),
      outlineVariant: Color(4286740848),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281479214),
      inverseOnSurface: Color(4294308076),
      inversePrimary: Color(4292330413),
      primaryFixed: Color(4286739039),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4285028936),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285822068),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284243036),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286215019),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4284570451),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794838),
      surfaceBright: Color(4294899957),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294505199),
      surfaceContainer: Color(4294176234),
      surfaceContainerHigh: Color(4293781476),
      surfaceContainerHighest: Color(4293386718),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281016338),
      surfaceTint: Color(4285226058),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283318576),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278190080),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280690214),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280689179),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282925627),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294899957),
      onBackground: Color(4280097562),
      surface: Color(4294899957),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4293714134),
      onSurfaceVariant: Color(4280886044),
      outline: Color(4282991162),
      outlineVariant: Color(4282991162),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281479214),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294896081),
      primaryFixed: Color(4283318576),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281740059),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282598211),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281150765),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282925627),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281412645),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794838),
      surfaceBright: Color(4294899957),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294505199),
      surfaceContainer: Color(4294176234),
      surfaceContainerHigh: Color(4293781476),
      surfaceContainerHighest: Color(4293386718),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294967295),
      surfaceTint: Color(4292330413),
      onPrimary: Color(4282002975),
      primaryContainer: Color(4293317051),
      onPrimaryContainer: Color(4283055405),
      secondary: Color(4291217094),
      onSecondary: Color(4281348144),
      secondaryContainer: Color(4278190080),
      onSecondaryContainer: Color(4288059030),
      tertiary: Color(4294967295),
      onTertiary: Color(4281675817),
      tertiaryContainer: Color(4292662217),
      onTertiaryContainer: Color(4282662456),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279571218),
      onBackground: Color(4293386718),
      surface: Color(4279571218),
      onSurface: Color(4293386718),
      surfaceVariant: Color(4283254334),
      onSurfaceVariant: Color(4291872186),
      outline: Color(4288253830),
      outlineVariant: Color(4283254334),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293386718),
      inverseOnSurface: Color(4281479214),
      inversePrimary: Color(4285226058),
      primaryFixed: Color(4294238152),
      onPrimaryFixed: Color(4280556044),
      primaryFixedDim: Color(4292330413),
      onPrimaryFixedVariant: Color(4283581492),
      secondaryFixed: Color(4293059298),
      onSecondaryFixed: Color(4279966491),
      secondaryFixedDim: Color(4291217094),
      onSecondaryFixedVariant: Color(4282861383),
      tertiaryFixed: Color(4293648855),
      onTertiaryFixed: Color(4280228629),
      tertiaryFixedDim: Color(4291741116),
      onTertiaryFixedVariant: Color(4283188799),
      surfaceDim: Color(4279571218),
      surfaceBright: Color(4282071351),
      surfaceContainerLowest: Color(4279176716),
      surfaceContainerLow: Color(4280097562),
      surfaceContainer: Color(4280360734),
      surfaceContainerHigh: Color(4281084456),
      surfaceContainerHighest: Color(4281807922),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294967295),
      surfaceTint: Color(4292330413),
      onPrimary: Color(4282002975),
      primaryContainer: Color(4293317051),
      onPrimaryContainer: Color(4280819215),
      secondary: Color(4291546059),
      onSecondary: Color(4279637526),
      secondaryContainer: Color(4287730065),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294967295),
      onTertiary: Color(4281675817),
      tertiaryContainer: Color(4292662217),
      onTertiaryContainer: Color(4280491801),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279571218),
      onBackground: Color(4293386718),
      surface: Color(4279571218),
      onSurface: Color(4294966007),
      surfaceVariant: Color(4283254334),
      onSurfaceVariant: Color(4292135358),
      outline: Color(4289438103),
      outlineVariant: Color(4287332984),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293386718),
      inverseOnSurface: Color(4281084456),
      inversePrimary: Color(4283647541),
      primaryFixed: Color(4294238152),
      onPrimaryFixed: Color(4279832324),
      primaryFixedDim: Color(4292330413),
      onPrimaryFixedVariant: Color(4282463268),
      secondaryFixed: Color(4293059298),
      onSecondaryFixed: Color(4279308561),
      secondaryFixedDim: Color(4291217094),
      onSecondaryFixedVariant: Color(4281742902),
      tertiaryFixed: Color(4293648855),
      onTertiaryFixed: Color(4279505163),
      tertiaryFixedDim: Color(4291741116),
      onTertiaryFixedVariant: Color(4282070319),
      surfaceDim: Color(4279571218),
      surfaceBright: Color(4282071351),
      surfaceContainerLowest: Color(4279176716),
      surfaceContainerLow: Color(4280097562),
      surfaceContainer: Color(4280360734),
      surfaceContainerHigh: Color(4281084456),
      surfaceContainerHighest: Color(4281807922),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294967295),
      surfaceTint: Color(4292330413),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4293317051),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294704123),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291546059),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294967295),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292662217),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279571218),
      onBackground: Color(4293386718),
      surface: Color(4279571218),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283254334),
      onSurfaceVariant: Color(4294966007),
      outline: Color(4292135358),
      outlineVariant: Color(4292135358),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293386718),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4281608217),
      primaryFixed: Color(4294566860),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4292659377),
      onPrimaryFixedVariant: Color(4280161287),
      secondaryFixed: Color(4293388263),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291546059),
      onSecondaryFixedVariant: Color(4279637526),
      tertiaryFixed: Color(4293912027),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292004288),
      onTertiaryFixedVariant: Color(4279899664),
      surfaceDim: Color(4279571218),
      surfaceBright: Color(4282071351),
      surfaceContainerLowest: Color(4279176716),
      surfaceContainerLow: Color(4280097562),
      surfaceContainer: Color(4280360734),
      surfaceContainerHigh: Color(4281084456),
      surfaceContainerHighest: Color(4281807922),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
