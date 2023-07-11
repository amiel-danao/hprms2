import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HematologyRecord extends FirestoreRecord {
  HematologyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hemId" field.
  int? _hemId;
  int get hemId => _hemId ?? 0;
  bool hasHemId() => _hemId != null;

  // "hemoglobin" field.
  String? _hemoglobin;
  String get hemoglobin => _hemoglobin ?? '';
  bool hasHemoglobin() => _hemoglobin != null;

  // "hematocrit" field.
  String? _hematocrit;
  String get hematocrit => _hematocrit ?? '';
  bool hasHematocrit() => _hematocrit != null;

  // "rbcCount" field.
  String? _rbcCount;
  String get rbcCount => _rbcCount ?? '';
  bool hasRbcCount() => _rbcCount != null;

  // "wbcCount" field.
  String? _wbcCount;
  String get wbcCount => _wbcCount ?? '';
  bool hasWbcCount() => _wbcCount != null;

  // "platelet" field.
  String? _platelet;
  String get platelet => _platelet ?? '';
  bool hasPlatelet() => _platelet != null;

  // "bleedingTime" field.
  String? _bleedingTime;
  String get bleedingTime => _bleedingTime ?? '';
  bool hasBleedingTime() => _bleedingTime != null;

  // "clottingTime" field.
  String? _clottingTime;
  String get clottingTime => _clottingTime ?? '';
  bool hasClottingTime() => _clottingTime != null;

  // "neutrophil" field.
  String? _neutrophil;
  String get neutrophil => _neutrophil ?? '';
  bool hasNeutrophil() => _neutrophil != null;

  // "segmenters" field.
  String? _segmenters;
  String get segmenters => _segmenters ?? '';
  bool hasSegmenters() => _segmenters != null;

  // "stabs" field.
  String? _stabs;
  String get stabs => _stabs ?? '';
  bool hasStabs() => _stabs != null;

  // "lymphocytes" field.
  String? _lymphocytes;
  String get lymphocytes => _lymphocytes ?? '';
  bool hasLymphocytes() => _lymphocytes != null;

  // "monocyte" field.
  String? _monocyte;
  String get monocyte => _monocyte ?? '';
  bool hasMonocyte() => _monocyte != null;

  // "eosinophil" field.
  String? _eosinophil;
  String get eosinophil => _eosinophil ?? '';
  bool hasEosinophil() => _eosinophil != null;

  // "basophil" field.
  String? _basophil;
  String get basophil => _basophil ?? '';
  bool hasBasophil() => _basophil != null;

  // "total" field.
  String? _total;
  String get total => _total ?? '';
  bool hasTotal() => _total != null;

  // "aboGroup" field.
  String? _aboGroup;
  String get aboGroup => _aboGroup ?? '';
  bool hasAboGroup() => _aboGroup != null;

  // "rhGroup" field.
  String? _rhGroup;
  String get rhGroup => _rhGroup ?? '';
  bool hasRhGroup() => _rhGroup != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  // "pathologist" field.
  String? _pathologist;
  String get pathologist => _pathologist ?? '';
  bool hasPathologist() => _pathologist != null;

  // "medicalTechnologist" field.
  String? _medicalTechnologist;
  String get medicalTechnologist => _medicalTechnologist ?? '';
  bool hasMedicalTechnologist() => _medicalTechnologist != null;

  // "doctorHematology" field.
  String? _doctorHematology;
  String get doctorHematology => _doctorHematology ?? '';
  bool hasDoctorHematology() => _doctorHematology != null;

  void _initializeFields() {
    _hemId = castToType<int>(snapshotData['hemId']);
    _hemoglobin = snapshotData['hemoglobin'] as String?;
    _hematocrit = snapshotData['hematocrit'] as String?;
    _rbcCount = snapshotData['rbcCount'] as String?;
    _wbcCount = snapshotData['wbcCount'] as String?;
    _platelet = snapshotData['platelet'] as String?;
    _bleedingTime = snapshotData['bleedingTime'] as String?;
    _clottingTime = snapshotData['clottingTime'] as String?;
    _neutrophil = snapshotData['neutrophil'] as String?;
    _segmenters = snapshotData['segmenters'] as String?;
    _stabs = snapshotData['stabs'] as String?;
    _lymphocytes = snapshotData['lymphocytes'] as String?;
    _monocyte = snapshotData['monocyte'] as String?;
    _eosinophil = snapshotData['eosinophil'] as String?;
    _basophil = snapshotData['basophil'] as String?;
    _total = snapshotData['total'] as String?;
    _aboGroup = snapshotData['aboGroup'] as String?;
    _rhGroup = snapshotData['rhGroup'] as String?;
    _remarks = snapshotData['remarks'] as String?;
    _pathologist = snapshotData['pathologist'] as String?;
    _medicalTechnologist = snapshotData['medicalTechnologist'] as String?;
    _doctorHematology = snapshotData['doctorHematology'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hematology');

  static Stream<HematologyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HematologyRecord.fromSnapshot(s));

  static Future<HematologyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HematologyRecord.fromSnapshot(s));

  static HematologyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HematologyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HematologyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HematologyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HematologyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HematologyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHematologyRecordData({
  int? hemId,
  String? hemoglobin,
  String? hematocrit,
  String? rbcCount,
  String? wbcCount,
  String? platelet,
  String? bleedingTime,
  String? clottingTime,
  String? neutrophil,
  String? segmenters,
  String? stabs,
  String? lymphocytes,
  String? monocyte,
  String? eosinophil,
  String? basophil,
  String? total,
  String? aboGroup,
  String? rhGroup,
  String? remarks,
  String? pathologist,
  String? medicalTechnologist,
  String? doctorHematology,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hemId': hemId,
      'hemoglobin': hemoglobin,
      'hematocrit': hematocrit,
      'rbcCount': rbcCount,
      'wbcCount': wbcCount,
      'platelet': platelet,
      'bleedingTime': bleedingTime,
      'clottingTime': clottingTime,
      'neutrophil': neutrophil,
      'segmenters': segmenters,
      'stabs': stabs,
      'lymphocytes': lymphocytes,
      'monocyte': monocyte,
      'eosinophil': eosinophil,
      'basophil': basophil,
      'total': total,
      'aboGroup': aboGroup,
      'rhGroup': rhGroup,
      'remarks': remarks,
      'pathologist': pathologist,
      'medicalTechnologist': medicalTechnologist,
      'doctorHematology': doctorHematology,
    }.withoutNulls,
  );

  return firestoreData;
}

class HematologyRecordDocumentEquality implements Equality<HematologyRecord> {
  const HematologyRecordDocumentEquality();

  @override
  bool equals(HematologyRecord? e1, HematologyRecord? e2) {
    return e1?.hemId == e2?.hemId &&
        e1?.hemoglobin == e2?.hemoglobin &&
        e1?.hematocrit == e2?.hematocrit &&
        e1?.rbcCount == e2?.rbcCount &&
        e1?.wbcCount == e2?.wbcCount &&
        e1?.platelet == e2?.platelet &&
        e1?.bleedingTime == e2?.bleedingTime &&
        e1?.clottingTime == e2?.clottingTime &&
        e1?.neutrophil == e2?.neutrophil &&
        e1?.segmenters == e2?.segmenters &&
        e1?.stabs == e2?.stabs &&
        e1?.lymphocytes == e2?.lymphocytes &&
        e1?.monocyte == e2?.monocyte &&
        e1?.eosinophil == e2?.eosinophil &&
        e1?.basophil == e2?.basophil &&
        e1?.total == e2?.total &&
        e1?.aboGroup == e2?.aboGroup &&
        e1?.rhGroup == e2?.rhGroup &&
        e1?.remarks == e2?.remarks &&
        e1?.pathologist == e2?.pathologist &&
        e1?.medicalTechnologist == e2?.medicalTechnologist &&
        e1?.doctorHematology == e2?.doctorHematology;
  }

  @override
  int hash(HematologyRecord? e) => const ListEquality().hash([
        e?.hemId,
        e?.hemoglobin,
        e?.hematocrit,
        e?.rbcCount,
        e?.wbcCount,
        e?.platelet,
        e?.bleedingTime,
        e?.clottingTime,
        e?.neutrophil,
        e?.segmenters,
        e?.stabs,
        e?.lymphocytes,
        e?.monocyte,
        e?.eosinophil,
        e?.basophil,
        e?.total,
        e?.aboGroup,
        e?.rhGroup,
        e?.remarks,
        e?.pathologist,
        e?.medicalTechnologist,
        e?.doctorHematology
      ]);

  @override
  bool isValidKey(Object? o) => o is HematologyRecord;
}
