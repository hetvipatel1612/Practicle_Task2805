Strings strings = Strings();

final title = "Strings";

class Strings {
  static final Strings _strings = Strings._i();

  factory Strings() {
    return _strings;
  }

  Strings._i();

  final String app_name = 'Flutter Api Calling Example';
  final String home_title = 'Api call using Dio';
  final String special = 'Special';
  final String products = 'Products';
}
