import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FecalysisRecord extends FirestoreRecord {
  FecalysisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dateOfRequest" field.
  DateTime? _dateOfRequest;
  DateTime? get dateOfRequest => _dateOfRequest;
  bool hasDateOfRequest() => _dateOfRequest != null;

  // "requestedBy" field.
  String? _requestedBy;
  String get requestedBy => _requestedBy ?? '';
  bool hasRequestedBy() => _requestedBy != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "consistency" field.
  String? _consistency;
  String get consistency => _consistency ?? '';
  bool hasConsistency() => _consistency != null;

  // "pusCells" field.
  String? _pusCells;
  String get pusCells => _pusCells ?? '';
  bool hasPusCells() => _pusCells != null;

  // "fatGlobules" field.
  String? _fatGlobules;
  String get fatGlobules => _fatGlobules ?? '';
  bool hasFatGlobules() => _fatGlobules != null;

  // "occultBlood" field.
  String? _occultBlood;
  String get occultBlood => _occultBlood ?? '';
  bool hasOccultBlood() => _occultBlood != null;

  // "othersChem" field.
  String? _othersChem;
  String get othersChem => _othersChem ?? '';
  bool hasOthersChem() => _othersChem != null;

  // "ova" field.
  String? _ova;
  String get ova => _ova ?? '';
  bool hasOva() => _ova != null;

  // "larva" field.
  String? _larva;
  String get larva => _larva ?? '';
  bool hasLarva() => _larva != null;

  // "adultForms" field.
  String? _adultForms;
  String get adultForms => _adultForms ?? '';
  bool hasAdultForms() => _adultForms != null;

  // "cyst" field.
  String? _cyst;
  String get cyst => _cyst ?? '';
  bool hasCyst() => _cyst != null;

  // "trophozoites" field.
  String? _trophozoites;
  String get trophozoites => _trophozoites ?? '';
  bool hasTrophozoites() => _trophozoites != null;

  // "othersPro" field.
  String? _othersPro;
  String get othersPro => _othersPro ?? '';
  bool hasOthersPro() => _othersPro != null;

  // "dateReported" field.
  DateTime? _dateReported;
  DateTime? get dateReported => _dateReported;
  bool hasDateReported() => _dateReported != null;

  // "pathologist" field.
  String? _pathologist;
  String get pathologist => _pathologist ?? '';
  bool hasPathologist() => _pathologist != null;

  // "medicalTechnologist" field.
  String? _medicalTechnologist;
  String get medicalTechnologist => _medicalTechnologist ?? '';
  bool hasMedicalTechnologist() => _medicalTechnologist != null;

  // "itrNo" field.
  String? _itrNo;
  String get itrNo => _itrNo ?? '';
  bool hasItrNo() => _itrNo != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  bool hasUserId() => _userId != null;

  // "month" field.
  int? _month;
  int get month => _month ?? 0;
  bool hasMonth() => _month != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "appointment" field.
  DocumentReference? _appointment;
  DocumentReference? get appointment => _appointment;
  bool hasAppointment() => _appointment != null;

  // "rbc" field.
  String? _rbc;
  String get rbc => _rbc ?? '';
  bool hasRbc() => _rbc != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  void _initializeFields() {
    _dateOfRequest = snapshotData['dateOfRequest'] as DateTime?;
    _requestedBy = snapshotData['requestedBy'] as String?;
    _color = snapshotData['color'] as String?;
    _consistency = snapshotData['consistency'] as String?;
    _pusCells = snapshotData['pusCells'] as String?;
    _fatGlobules = snapshotData['fatGlobules'] as String?;
    _occultBlood = snapshotData['occultBlood'] as String?;
    _othersChem = snapshotData['othersChem'] as String?;
    _ova = snapshotData['ova'] as String?;
    _larva = snapshotData['larva'] as String?;
    _adultForms = snapshotData['adultForms'] as String?;
    _cyst = snapshotData['cyst'] as String?;
    _trophozoites = snapshotData['trophozoites'] as String?;
    _othersPro = snapshotData['othersPro'] as String?;
    _dateReported = snapshotData['dateReported'] as DateTime?;
    _pathologist = snapshotData['pathologist'] as String?;
    _medicalTechnologist = snapshotData['medicalTechnologist'] as String?;
    _itrNo = snapshotData['itrNo'] as String?;
    _userId = castToType<int>(snapshotData['userId']);
    _month = castToType<int>(snapshotData['month']);
    _year = castToType<int>(snapshotData['year']);
    _appointment = snapshotData['appointment'] as DocumentReference?;
    _rbc = snapshotData['rbc'] as String?;
    _remarks = snapshotData['remarks'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fecalysis');

  static Stream<FecalysisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FecalysisRecord.fromSnapshot(s));

  static Future<FecalysisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FecalysisRecord.fromSnapshot(s));

  static FecalysisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FecalysisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FecalysisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FecalysisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FecalysisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FecalysisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFecalysisRecordData({
  DateTime? dateOfRequest,
  String? requestedBy,
  String? color,
  String? consistency,
  String? pusCells,
  String? fatGlobules,
  String? occultBlood,
  String? othersChem,
  String? ova,
  String? larva,
  String? adultForms,
  String? cyst,
  String? trophozoites,
  String? othersPro,
  DateTime? dateReported,
  String? pathologist,
  String? medicalTechnologist,
  String? itrNo,
  int? userId,
  int? month,
  int? year,
  DocumentReference? appointment,
  String? rbc,
  String? remarks,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dateOfRequest': dateOfRequest,
      'requestedBy': requestedBy,
      'color': color,
      'consistency': consistency,
      'pusCells': pusCells,
      'fatGlobules': fatGlobules,
      'occultBlood': occultBlood,
      'othersChem': othersChem,
      'ova': ova,
      'larva': larva,
      'adultForms': adultForms,
      'cyst': cyst,
      'trophozoites': trophozoites,
      'othersPro': othersPro,
      'dateReported': dateReported,
      'pathologist': pathologist,
      'medicalTechnologist': medicalTechnologist,
      'itrNo': itrNo,
      'userId': userId,
      'month': month,
      'year': year,
      'appointment': appointment,
      'rbc': rbc,
      'remarks': remarks,
    }.withoutNulls,
  );

  return firestoreData;
}

class FecalysisRecordDocumentEquality implements Equality<FecalysisRecord> {
  const FecalysisRecordDocumentEquality();

  @override
  bool equals(FecalysisRecord? e1, FecalysisRecord? e2) {
    return e1?.dateOfRequest == e2?.dateOfRequest &&
        e1?.requestedBy == e2?.requestedBy &&
        e1?.color == e2?.color &&
        e1?.consistency == e2?.consistency &&
        e1?.pusCells == e2?.pusCells &&
        e1?.fatGlobules == e2?.fatGlobules &&
        e1?.occultBlood == e2?.occultBlood &&
        e1?.othersChem == e2?.othersChem &&
        e1?.ova == e2?.ova &&
        e1?.larva == e2?.larva &&
        e1?.adultForms == e2?.adultForms &&
        e1?.cyst == e2?.cyst &&
        e1?.trophozoites == e2?.trophozoites &&
        e1?.othersPro == e2?.othersPro &&
        e1?.dateReported == e2?.dateReported &&
        e1?.pathologist == e2?.pathologist &&
        e1?.medicalTechnologist == e2?.medicalTechnologist &&
        e1?.itrNo == e2?.itrNo &&
        e1?.userId == e2?.userId &&
        e1?.month == e2?.month &&
        e1?.year == e2?.year &&
        e1?.appointment == e2?.appointment &&
        e1?.rbc == e2?.rbc &&
        e1?.remarks == e2?.remarks;
  }

  @override
  int hash(FecalysisRecord? e) => const ListEquality().hash([
        e?.dateOfRequest,
        e?.requestedBy,
        e?.color,
        e?.consistency,
        e?.pusCells,
        e?.fatGlobules,
        e?.occultBlood,
        e?.othersChem,
        e?.ova,
        e?.larva,
        e?.adultForms,
        e?.cyst,
        e?.trophozoites,
        e?.othersPro,
        e?.dateReported,
        e?.pathologist,
        e?.medicalTechnologist,
        e?.itrNo,
        e?.userId,
        e?.month,
        e?.year,
        e?.appointment,
        e?.rbc,
        e?.remarks
      ]);

  @override
  bool isValidKey(Object? o) => o is FecalysisRecord;
}
