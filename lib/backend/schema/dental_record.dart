import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DentalRecord extends FirestoreRecord {
  DentalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dentalNo" field.
  int? _dentalNo;
  int get dentalNo => _dentalNo ?? 0;
  bool hasDentalNo() => _dentalNo != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "dentist" field.
  String? _dentist;
  String get dentist => _dentist ?? '';
  bool hasDentist() => _dentist != null;

  // "tooth" field.
  String? _tooth;
  String get tooth => _tooth ?? '';
  bool hasTooth() => _tooth != null;

  // "appointment" field.
  DocumentReference? _appointment;
  DocumentReference? get appointment => _appointment;
  bool hasAppointment() => _appointment != null;

  void _initializeFields() {
    _dentalNo = castToType<int>(snapshotData['dentalNo']);
    _date = snapshotData['date'] as DateTime?;
    _dentist = snapshotData['dentist'] as String?;
    _tooth = snapshotData['tooth'] as String?;
    _appointment = snapshotData['appointment'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dental');

  static Stream<DentalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DentalRecord.fromSnapshot(s));

  static Future<DentalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DentalRecord.fromSnapshot(s));

  static DentalRecord fromSnapshot(DocumentSnapshot snapshot) => DentalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DentalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DentalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DentalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DentalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDentalRecordData({
  int? dentalNo,
  DateTime? date,
  String? dentist,
  String? tooth,
  DocumentReference? appointment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dentalNo': dentalNo,
      'date': date,
      'dentist': dentist,
      'tooth': tooth,
      'appointment': appointment,
    }.withoutNulls,
  );

  return firestoreData;
}

class DentalRecordDocumentEquality implements Equality<DentalRecord> {
  const DentalRecordDocumentEquality();

  @override
  bool equals(DentalRecord? e1, DentalRecord? e2) {
    return e1?.dentalNo == e2?.dentalNo &&
        e1?.date == e2?.date &&
        e1?.dentist == e2?.dentist &&
        e1?.tooth == e2?.tooth &&
        e1?.appointment == e2?.appointment;
  }

  @override
  int hash(DentalRecord? e) => const ListEquality()
      .hash([e?.dentalNo, e?.date, e?.dentist, e?.tooth, e?.appointment]);

  @override
  bool isValidKey(Object? o) => o is DentalRecord;
}
