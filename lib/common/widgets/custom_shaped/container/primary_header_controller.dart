import 'package:ecommerce/common/widgets/custom_shaped/container/conatimer_shape.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

// class PrimeheaderContainer extends StatelessWidget {
//   const PrimeheaderContainer({
//     super.key, required this.child,
//   });
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return CurvedEdgeWidgets(
//       child:Container(
//             color: TColors.primary1,
//             padding: EdgeInsets.all(0),
//             child: SizedBox(
//               height: 430,
//                 child: Stack(
//                   children: [
//                       Positioned(
//                         top:-150,
//                         left: -250,
//                         child: CircularContainer(backgroundColor: TColors.textSecondary.withOpacity(0.1), diameter: 300,),),
//                         Positioned(
//                           top:100,
//                         left: -300,
//                         child: CircularContainer(backgroundColor: TColors.textSecondary.withOpacity(0.1), diameter: 300,))
//                   ],  
//                 ),
//             ),
//           ),
//     );
//   }
// }

class PrimeheaderContainer extends StatelessWidget {
  const PrimeheaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300, // Set fixed height for the container
      decoration: BoxDecoration(
        color: TColors.red, // Set a visible background color
        borderRadius: BorderRadius.only(
          //bottomLeft: Radius.circular(TSizes.cardRadiusMd),
          bottomRight: Radius.circular(TSizes.cardHeightExtrasmall),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none, // Avoid overflow errors (in case of negative positioning)
        children: [
          // Background circular containers with controlled positioning
          Positioned(
            top: -150,
            left: -230,
            child: CircularContainer(
              backgroundColor: TColors.textSecondary.withOpacity(0.1),
              diameter: 400, // Set a specific diameter for the circular container
            ),
          ),
          // Positioned(
          //   top: 100,
          //   left: -200,
          //   child: CircularContainer(
          //     backgroundColor: TColors.textSecondary.withOpacity(0.1),
          //     diameter: 400, // Ensure size fits within bounds
          //   ),
          // ),
          
          Positioned(
            top: -180,
            right: -230,
            child: CircularContainer(
              backgroundColor: TColors.textSecondary.withOpacity(0.1),
              diameter: 400, // Set a specific diameter for the circular container
            ),
          ),
          // Positioned(
          //   top: 100,
          //   right: -200,
          //   child: CircularContainer(
          //     backgroundColor: TColors.textSecondary.withOpacity(0.1),
          //     diameter: 400, // Ensure size fits within bounds
          //   ),
          // ),
          Positioned(
            top: -180,
            right: -230,
            child: CircularContainer(
              backgroundColor: TColors.textSecondary.withOpacity(0.1),
              diameter: 400, // Set a specific diameter for the circular container
            ),
          ),
          // Positioned(
          //   top: 100,
          //   right: -200,
          //   child: CircularContainer(
          //     backgroundColor: TColors.textSecondary.withOpacity(0.1),
          //     diameter: 400, // Ensure size fits within bounds
          //   ),
          // ),


          // Child widget centered inside the container
          Padding(
            padding: EdgeInsets.zero, // No extra padding around the child
            child: Center(
              child: child, // Centered child widget passed from parent
            ),
          ),
        ],
      ),
    );
  }
}
