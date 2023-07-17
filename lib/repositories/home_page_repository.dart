import 'dart:math';

class HomeRepository {
  late int _data;

  Future<void> fetchData() async {
    await Future.delayed(const Duration(milliseconds: 600));

    // save or store data

    _data = Random().nextInt(1000);
  }

  int get data => _data;
}
