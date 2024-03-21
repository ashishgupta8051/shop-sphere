import 'package:flutter/cupertino.dart';

import 'curved_edges.dart';

class SCurvedEdgeWidget extends StatelessWidget {
  const SCurvedEdgeWidget({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SCustomCurvedEdges(),
      child: child,
    );
  }
}