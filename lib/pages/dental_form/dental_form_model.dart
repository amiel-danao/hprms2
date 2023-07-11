import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DentalFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tooth widget.
  TextEditingController? toothController;
  String? Function(BuildContext, String?)? toothControllerValidator;
  String? _toothControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for clinicalImpression widget.
  TextEditingController? clinicalImpressionController;
  String? Function(BuildContext, String?)?
      clinicalImpressionControllerValidator;
  String? _clinicalImpressionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    toothControllerValidator = _toothControllerValidator;
    clinicalImpressionControllerValidator =
        _clinicalImpressionControllerValidator;
  }

  void dispose() {
    toothController?.dispose();
    clinicalImpressionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
