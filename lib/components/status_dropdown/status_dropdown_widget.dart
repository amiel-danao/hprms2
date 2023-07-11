import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_dropdown_model.dart';
export 'status_dropdown_model.dart';

class StatusDropdownWidget extends StatefulWidget {
  const StatusDropdownWidget({
    Key? key,
    required this.appointmentDocument,
  }) : super(key: key);

  final AppointmentsRecord? appointmentDocument;

  @override
  _StatusDropdownWidgetState createState() => _StatusDropdownWidgetState();
}

class _StatusDropdownWidgetState extends State<StatusDropdownWidget> {
  late StatusDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusDropdownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      controller: _model.statusDropDownValueController ??=
          FormFieldController<String>(
        _model.statusDropDownValue ??= widget.appointmentDocument!.status,
      ),
      options: ['Pending', 'Ongoing', 'Done'],
      onChanged: (val) async {
        setState(() => _model.statusDropDownValue = val);
        await widget.appointmentDocument!.reference
            .update(createAppointmentsRecordData(
          status: _model.statusDropDownValue,
        ));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Status was updated successfully',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      },
      width: 300.0,
      height: 50.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium,
      hintText: 'Please select...',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isSearchable: false,
    );
  }
}
