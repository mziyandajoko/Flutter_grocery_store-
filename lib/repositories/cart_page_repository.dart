// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartRepository {
  late String _data;

  Future<void> fetchData() async {
    await Future.delayed(const Duration(milliseconds: 3));
    _data = 'cart page';
  }

  String get data => _data;
}
