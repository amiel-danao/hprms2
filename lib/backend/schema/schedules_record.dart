import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchedulesRecord extends FirestoreRecord {
  SchedulesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "availability" field.
  List<String>? _availability;
  List<String> get availability => _availability ?? const [];
  bool hasAvailability() => _availability != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _availability = getDataList(snapshotData['availability']);
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schedules');

  static Stream<SchedulesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SchedulesRecord.fromSnapshot(s));

  static Future<SchedulesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SchedulesRecord.fromSnapshot(s));

  static SchedulesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SchedulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SchedulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SchedulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SchedulesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SchedulesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSchedulesRecordData({
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class SchedulesRecordDocumentEquality implements Equality<SchedulesRecord> {
  const SchedulesRecordDocumentEquality();

  @override
  bool equals(SchedulesRecord? e1, SchedulesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.availability, e2?.availability) &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(SchedulesRecord? e) =>
      const ListEquality().hash([e?.availability, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is SchedulesRecord;
}
