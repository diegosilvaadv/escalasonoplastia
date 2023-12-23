import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EscalaRecord extends FirestoreRecord {
  EscalaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  bool hasDia() => _dia != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "converterData" field.
  String? _converterData;
  String get converterData => _converterData ?? '';
  bool hasConverterData() => _converterData != null;

  // "dataUpdate" field.
  DateTime? _dataUpdate;
  DateTime? get dataUpdate => _dataUpdate;
  bool hasDataUpdate() => _dataUpdate != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _dia = snapshotData['dia'] as DateTime?;
    _createTime = snapshotData['createTime'] as DateTime?;
    _converterData = snapshotData['converterData'] as String?;
    _dataUpdate = snapshotData['dataUpdate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('escala');

  static Stream<EscalaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EscalaRecord.fromSnapshot(s));

  static Future<EscalaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EscalaRecord.fromSnapshot(s));

  static EscalaRecord fromSnapshot(DocumentSnapshot snapshot) => EscalaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EscalaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EscalaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EscalaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EscalaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEscalaRecordData({
  DocumentReference? userRef,
  DateTime? dia,
  DateTime? createTime,
  String? converterData,
  DateTime? dataUpdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'dia': dia,
      'createTime': createTime,
      'converterData': converterData,
      'dataUpdate': dataUpdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class EscalaRecordDocumentEquality implements Equality<EscalaRecord> {
  const EscalaRecordDocumentEquality();

  @override
  bool equals(EscalaRecord? e1, EscalaRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.dia == e2?.dia &&
        e1?.createTime == e2?.createTime &&
        e1?.converterData == e2?.converterData &&
        e1?.dataUpdate == e2?.dataUpdate;
  }

  @override
  int hash(EscalaRecord? e) => const ListEquality().hash(
      [e?.userRef, e?.dia, e?.createTime, e?.converterData, e?.dataUpdate]);

  @override
  bool isValidKey(Object? o) => o is EscalaRecord;
}
