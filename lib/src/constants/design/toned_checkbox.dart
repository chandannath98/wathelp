part of 'package:jobpilot/src/services/theme/light/light_theme.dart';

final tonedCheckboxTheme = CheckboxThemeData(
  side: const BorderSide(
    color: _extraColor,
  ),
  visualDensity: VisualDensity.compact,
  fillColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.disabled)) {
      return _extraColor;
    }
    if (states.contains(MaterialState.selected)) {
      return _primaryColor;
    }
    if (states.contains(MaterialState.focused)) {
      return _extraColor.withOpacity(0.1);
    }
    if (states.contains(MaterialState.hovered)) {
      return _primaryAccent.withOpacity(0.1);
    }
    return null;
  }),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  ),
);
