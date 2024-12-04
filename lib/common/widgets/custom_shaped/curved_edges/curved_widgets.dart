
import 'package:ecommerce/common/widgets/custom_shaped/curved_edges/curved_edge.dart';
import 'package:flutter/material.dart';

// class CurvedEdgeWidgets extends StatelessWidget {
//   const CurvedEdgeWidgets({
//     super.key, this.child,
//   });
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: CurvedEdge(),
//       child: child,
//     );
//   }
// }



class CurvedEdgeWidgets extends StatelessWidget {
  const CurvedEdgeWidgets({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
  clipper: CustomCurvedEdge(),
  child: child,

    );
  }
}
