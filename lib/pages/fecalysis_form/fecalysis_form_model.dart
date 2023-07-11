import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FecalysisFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for requestedBy widget.
  TextEditingController? requestedByController;
  String? Function(BuildContext, String?)? requestedByControllerValidator;
  String? _requestedByControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for dateOfRequest widget.
  TextEditingController? dateOfRequestController;
  String? Function(BuildContext, String?)? dateOfRequestControllerValidator;
  DateTime? datePicked;
  // State field(s) for color widget.
  TextEditingController? colorController;
  String? Function(BuildContext, String?)? colorControllerValidator;
  String? _colorControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for consistency widget.
  TextEditingController? consistencyController;
  String? Function(BuildContext, String?)? consistencyControllerValidator;
  String? _consistencyControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for occultBlood widget.
  TextEditingController? occultBloodController;
  String? Function(BuildContext, String?)? occultBloodControllerValidator;
  String? _occultBloodControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for othersChem widget.
  TextEditingController? othersChemController;
  String? Function(BuildContext, String?)? othersChemControllerValidator;
  String? _othersChemControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for pusCells widget.
  TextEditingController? pusCellsController;
  String? Function(BuildContext, String?)? pusCellsControllerValidator;
  String? _pusCellsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for rbc widget.
  TextEditingController? rbcController;
  String? Function(BuildContext, String?)? rbcControllerValidator;
  String? _rbcControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for fatGlobules widget.
  TextEditingController? fatGlobulesController;
  String? Function(BuildContext, String?)? fatGlobulesControllerValidator;
  String? _fatGlobulesControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ova widget.
  TextEditingController? ovaController;
  String? Function(BuildContext, String?)? ovaControllerValidator;
  String? _ovaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for larva widget.
  TextEditingController? larvaController;
  String? Function(BuildContext, String?)? larvaControllerValidator;
  String? _larvaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for adultForms widget.
  TextEditingController? adultFormsController;
  String? Function(BuildContext, String?)? adultFormsControllerValidator;
  String? _adultFormsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for cyst widget.
  TextEditingController? cystController;
  String? Function(BuildContext, String?)? cystControllerValidator;
  String? _cystControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for trophozoites widget.
  TextEditingController? trophozoitesController;
  String? Function(BuildContext, String?)? trophozoitesControllerValidator;
  String? _trophozoitesControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for othersPro widget.
  TextEditingController? othersProController;
  String? Function(BuildContext, String?)? othersProControllerValidator;
  String? _othersProControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for remarks widget.
  TextEditingController? remarksController;
  String? Function(BuildContext, String?)? remarksControllerValidator;
  String? _remarksControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    requestedByControllerValidator = _requestedByControllerValidator;
    colorControllerValidator = _colorControllerValidator;
    consistencyControllerValidator = _consistencyControllerValidator;
    occultBloodControllerValidator = _occultBloodControllerValidator;
    othersChemControllerValidator = _othersChemControllerValidator;
    pusCellsControllerValidator = _pusCellsControllerValidator;
    rbcControllerValidator = _rbcControllerValidator;
    fatGlobulesControllerValidator = _fatGlobulesControllerValidator;
    ovaControllerValidator = _ovaControllerValidator;
    larvaControllerValidator = _larvaControllerValidator;
    adultFormsControllerValidator = _adultFormsControllerValidator;
    cystControllerValidator = _cystControllerValidator;
    trophozoitesControllerValidator = _trophozoitesControllerValidator;
    othersProControllerValidator = _othersProControllerValidator;
    remarksControllerValidator = _remarksControllerValidator;
  }

  void dispose() {
    requestedByController?.dispose();
    dateOfRequestController?.dispose();
    colorController?.dispose();
    consistencyController?.dispose();
    occultBloodController?.dispose();
    othersChemController?.dispose();
    pusCellsController?.dispose();
    rbcController?.dispose();
    fatGlobulesController?.dispose();
    ovaController?.dispose();
    larvaController?.dispose();
    adultFormsController?.dispose();
    cystController?.dispose();
    trophozoitesController?.dispose();
    othersProController?.dispose();
    remarksController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
