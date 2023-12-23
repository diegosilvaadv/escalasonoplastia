import 'package:flutter/material.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentReference? _users = FirebaseFirestore.instance.doc('/users/ref');
  DocumentReference? get users => _users;
  set users(DocumentReference? value) {
    _users = value;
  }

  int _userCondicao = 0;
  int get userCondicao => _userCondicao;
  set userCondicao(int value) {
    _userCondicao = value;
  }

  int _selectUser = 0;
  int get selectUser => _selectUser;
  set selectUser(int value) {
    _selectUser = value;
  }

  DocumentReference? _escalaTrocaRef =
      FirebaseFirestore.instance.doc('/escala/ref');
  DocumentReference? get escalaTrocaRef => _escalaTrocaRef;
  set escalaTrocaRef(DocumentReference? value) {
    _escalaTrocaRef = value;
  }

  DateTime? _diadeTroca = DateTime.fromMillisecondsSinceEpoch(1703263560000);
  DateTime? get diadeTroca => _diadeTroca;
  set diadeTroca(DateTime? value) {
    _diadeTroca = value;
  }

  String _sonoplastaNome = '';
  String get sonoplastaNome => _sonoplastaNome;
  set sonoplastaNome(String value) {
    _sonoplastaNome = value;
  }

  List<String> _menuItems = ['Home', 'Search', 'Directory', 'Book', 'Profile'];
  List<String> get menuItems => _menuItems;
  set menuItems(List<String> value) {
    _menuItems = value;
  }

  void addToMenuItems(String value) {
    _menuItems.add(value);
  }

  void removeFromMenuItems(String value) {
    _menuItems.remove(value);
  }

  void removeAtIndexFromMenuItems(int index) {
    _menuItems.removeAt(index);
  }

  void updateMenuItemsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _menuItems[index] = updateFn(_menuItems[index]);
  }

  void insertAtIndexInMenuItems(int index, String value) {
    _menuItems.insert(index, value);
  }

  String _menuActiveItem = 'Home';
  String get menuActiveItem => _menuActiveItem;
  set menuActiveItem(String value) {
    _menuActiveItem = value;
  }

  List<Color> _menuItemColors = [
    const Color(0xff4b39ef),
    const Color(0xff39d2c0),
    const Color(0xffee8b60),
    const Color(0xffff5963),
    const Color(0xff8f11d4)
  ];
  List<Color> get menuItemColors => _menuItemColors;
  set menuItemColors(List<Color> value) {
    _menuItemColors = value;
  }

  void addToMenuItemColors(Color value) {
    _menuItemColors.add(value);
  }

  void removeFromMenuItemColors(Color value) {
    _menuItemColors.remove(value);
  }

  void removeAtIndexFromMenuItemColors(int index) {
    _menuItemColors.removeAt(index);
  }

  void updateMenuItemColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    _menuItemColors[index] = updateFn(_menuItemColors[index]);
  }

  void insertAtIndexInMenuItemColors(int index, Color value) {
    _menuItemColors.insert(index, value);
  }

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool value) {
    _drawer = value;
  }

  String _version = '';
  String get version => _version;
  set version(String value) {
    _version = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
