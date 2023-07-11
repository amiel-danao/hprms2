import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyScheduleModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for topBar component.
  late TopBarModel topBarModel;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  DateTime? datePicked1;
  // State field(s) for mondayStart widget.
  TextEditingController? mondayStartController;
  String? Function(BuildContext, String?)? mondayStartControllerValidator;
  DateTime? datePicked2;
  // State field(s) for mondayEnd widget.
  TextEditingController? mondayEndController;
  String? Function(BuildContext, String?)? mondayEndControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    topBarModel = createModel(context, () => TopBarModel());
  }

  void dispose() {
    sidebarModel.dispose();
    topBarModel.dispose();
    mondayStartController?.dispose();
    mondayEndController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
