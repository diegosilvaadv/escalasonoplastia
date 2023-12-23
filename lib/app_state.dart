import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
  set users(DocumentReference? _value) {
    _users = _value;
  }

  int _userCondicao = 0;
  int get userCondicao => _userCondicao;
  set userCondicao(int _value) {
    _userCondicao = _value;
  }

  int _selectUser = 0;
  int get selectUser => _selectUser;
  set selectUser(int _value) {
    _selectUser = _value;
  }

  DocumentReference? _escalaTrocaRef =
      FirebaseFirestore.instance.doc('/escala/ref');
  DocumentReference? get escalaTrocaRef => _escalaTrocaRef;
  set escalaTrocaRef(DocumentReference? _value) {
    _escalaTrocaRef = _value;
  }

  DateTime? _diadeTroca = DateTime.fromMillisecondsSinceEpoch(1703263560000);
  DateTime? get diadeTroca => _diadeTroca;
  set diadeTroca(DateTime? _value) {
    _diadeTroca = _value;
  }

  String _sonoplastaNome = '';
  String get sonoplastaNome => _sonoplastaNome;
  set sonoplastaNome(String _value) {
    _sonoplastaNome = _value;
  }

  List<String> _menuItems = ['Home', 'Search', 'Directory', 'Book', 'Profile'];
  List<String> get menuItems => _menuItems;
  set menuItems(List<String> _value) {
    _menuItems = _value;
  }

  void addToMenuItems(String _value) {
    _menuItems.add(_value);
  }

  void removeFromMenuItems(String _value) {
    _menuItems.remove(_value);
  }

  void removeAtIndexFromMenuItems(int _index) {
    _menuItems.removeAt(_index);
  }

  void updateMenuItemsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _menuItems[_index] = updateFn(_menuItems[_index]);
  }

  void insertAtIndexInMenuItems(int _index, String _value) {
    _menuItems.insert(_index, _value);
  }

  String _menuActiveItem = 'Home';
  String get menuActiveItem => _menuActiveItem;
  set menuActiveItem(String _value) {
    _menuActiveItem = _value;
  }

  List<Color> _menuItemColors = [
    Color(4283120111),
    Color(4281979584),
    Color(4293823328),
    Color(4294924643),
    Color(4287566292)
  ];
  List<Color> get menuItemColors => _menuItemColors;
  set menuItemColors(List<Color> _value) {
    _menuItemColors = _value;
  }

  void addToMenuItemColors(Color _value) {
    _menuItemColors.add(_value);
  }

  void removeFromMenuItemColors(Color _value) {
    _menuItemColors.remove(_value);
  }

  void removeAtIndexFromMenuItemColors(int _index) {
    _menuItemColors.removeAt(_index);
  }

  void updateMenuItemColorsAtIndex(
    int _index,
    Color Function(Color) updateFn,
  ) {
    _menuItemColors[_index] = updateFn(_menuItemColors[_index]);
  }

  void insertAtIndexInMenuItemColors(int _index, Color _value) {
    _menuItemColors.insert(_index, _value);
  }

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool _value) {
    _drawer = _value;
  }

  String _version = '';
  String get version => _version;
  set version(String _value) {
    _version = _value;
  }

  final _userCacheManager = StreamRequestManager<List<UsersRecord>>();
  Stream<List<UsersRecord>> userCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<UsersRecord>> Function() requestFn,
  }) =>
      _userCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserCacheCache() => _userCacheManager.clear();
  void clearUserCacheCacheKey(String? uniqueKey) =>
      _userCacheManager.clearRequest(uniqueKey);

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
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
