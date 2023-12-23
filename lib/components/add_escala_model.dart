import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_escala_widget.dart' show AddEscalaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AddEscalaModel extends FlutterFlowModel<AddEscalaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  DateTime? datePicked;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EscalaRecord? resultadodacricao;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? listUser;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userConsulta;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
