import '/flutter_flow/flutter_flow_util.dart';
import 'trocar_dia_widget.dart' show TrocarDiaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TrocarDiaModel extends FlutterFlowModel<TrocarDiaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableController1.dispose();
    expandableController2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
