import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LabRequestRecord extends FirestoreRecord {
  LabRequestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "appointment" field.
  DocumentReference? _appointment;
  DocumentReference? get appointment => _appointment;
  bool hasAppointment() => _appointment != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "requests" field.
  List<String>? _requests;
  List<String> get requests => _requests ?? const [];
  bool hasRequests() => _requests != null;

  void _initializeFields() {
    _appointment = snapshotData['appointment'] as DocumentReference?;
    _patient = snapshotData['patient'] as DocumentReference?;
    _requests = getDataList(snapshotData['requests']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('labRequest');

  static Stream<LabRequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LabRequestRecord.fromSnapshot(s));

  static Future<LabRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LabRequestRecord.fromSnapshot(s));

  static LabRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LabRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LabRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LabRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LabRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LabRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLabRequestRecordData({
  DocumentReference? appointment,
  DocumentReference? patient,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appointment': appointment,
      'patient': patient,
    }.withoutNulls,
  );

  return firestoreData;
}

class LabRequestRecordDocumentEquality implements Equality<LabRequestRecord> {
  const LabRequestRecordDocumentEquality();

  @override
  bool equals(LabRequestRecord? e1, LabRequestRecord? e2) {
    const listEquality = ListEquality();
    return e1?.appointment == e2?.appointment &&
        e1?.patient == e2?.patient &&
        listEquality.equals(e1?.requests, e2?.requests);
  }

  @override
  int hash(LabRequestRecord? e) =>
      const ListEquality().hash([e?.appointment, e?.patient, e?.requests]);

  @override
  bool isValidKey(Object? o) => o is LabRequestRecord;
}
