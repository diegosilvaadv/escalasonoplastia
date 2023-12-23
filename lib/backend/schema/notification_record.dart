import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "texto" field.
  String? _texto;
  String get texto => _texto ?? '';
  bool hasTexto() => _texto != null;

  // "ativa" field.
  bool? _ativa;
  bool get ativa => _ativa ?? false;
  bool hasAtiva() => _ativa != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "usersRef" field.
  List<String>? _usersRef;
  List<String> get usersRef => _usersRef ?? const [];
  bool hasUsersRef() => _usersRef != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _texto = snapshotData['texto'] as String?;
    _ativa = snapshotData['ativa'] as bool?;
    _data = snapshotData['data'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _usersRef = getDataList(snapshotData['usersRef']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  String? titulo,
  String? texto,
  bool? ativa,
  DateTime? data,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'texto': texto,
      'ativa': ativa,
      'data': data,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.texto == e2?.texto &&
        e1?.ativa == e2?.ativa &&
        e1?.data == e2?.data &&
        e1?.userRef == e2?.userRef &&
        listEquality.equals(e1?.usersRef, e2?.usersRef);
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.texto, e?.ativa, e?.data, e?.userRef, e?.usersRef]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
