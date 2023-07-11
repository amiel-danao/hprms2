import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/lab_result_menu/lab_result_menu_widget.dart';
import '/components/labe_request/labe_request_widget.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/status_dropdown/status_dropdown_widget.dart';
import '/components/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppointmentsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for topBar component.
  late TopBarModel topBarModel;
  DateTime? datePicked;
  // Models for statusDropdown dynamic component.
  late FlutterFlowDynamicModels<StatusDropdownModel> statusDropdownModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    topBarModel = createModel(context, () => TopBarModel());
    statusDropdownModels =
        FlutterFlowDynamicModels(() => StatusDropdownModel());
  }

  void dispose() {
    sidebarModel.dispose();
    topBarModel.dispose();
    statusDropdownModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
