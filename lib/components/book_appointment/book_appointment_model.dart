import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookAppointmentModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  List<UsersRecord> doctorList = [];
  void addToDoctorList(UsersRecord item) => doctorList.add(item);
  void removeFromDoctorList(UsersRecord item) => doctorList.remove(item);
  void removeAtIndexFromDoctorList(int index) => doctorList.removeAt(index);
  void updateDoctorListAtIndex(int index, Function(UsersRecord) updateFn) =>
      doctorList[index] = updateFn(doctorList[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for personsName widget.
  TextEditingController? personsNameController;
  String? Function(BuildContext, String?)? personsNameControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - getFilteredDoctorList] action in Container widget.
  List<UsersRecord>? doctoListOutput2;
  // State field(s) for specializationDropdown widget.
  String? specializationDropdownValue;
  FormFieldController<String>? specializationDropdownValueController;
  // Stores action output result for [Custom Action - getFilteredDoctorList] action in specializationDropdown widget.
  List<UsersRecord>? doctoListOutput;
  // State field(s) for doctorDropdown widget.
  String? doctorDropdownValue;
  FormFieldController<String>? doctorDropdownValueController;
  // State field(s) for problemDescription widget.
  TextEditingController? problemDescriptionController;
  String? Function(BuildContext, String?)?
      problemDescriptionControllerValidator;
  String? _problemDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - getDoctorRefByName] action in Button widget.
  DocumentReference? selectedDoctorRef;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    problemDescriptionControllerValidator =
        _problemDescriptionControllerValidator;
  }

  void dispose() {
    personsNameController?.dispose();
    problemDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
