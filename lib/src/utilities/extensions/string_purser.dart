final _reg = RegExp(r'<[^>]*>|&[^;]+;', multiLine: true, caseSensitive: true);

extension StripHtmlFromString on String {
  String get withoutHtml => replaceAll(_reg, " ");
}
