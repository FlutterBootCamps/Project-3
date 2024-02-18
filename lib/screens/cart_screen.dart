import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 28,
              width: 172,
              child: Image.asset("image/Logoimg_plantify.png"),
            ),
            Spacer(),
            const Icon(
              Icons.search_outlined,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.menu,
              size: 25,
            )
          ],
        ),
      ),
    );
  }
}
//       body: const SizedBox(
//         width: double.maxFinite,
//         child: Column(
//           children: [
//             SizedBox(height: 23),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: EdgeInsets.only(left: 36),
//                 child: Text(
//                   "Your Bag",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 32,
//                       color: Color.fromRGBO(13, 152, 106, 50)),
//                 ),
//               ),
//             ),
//             SizedBox(height: 18.v),
//               _buildUserProfile(context),
//               SizedBox(height: 22.v),
//               _buildPeperomiaObtusfolia(context),
//               SizedBox(height: 23.v),
//               _buildCactus(context),
//               SizedBox(height: 24.v),
//               _buildPriceRow(context),
//               SizedBox(height: 15.v),
//               _buildApplyCouponRow(context),
//               SizedBox(height: 18.v),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 35.h),
//                 child: _buildFiftyNine(
//                   context,
//                   savedText: "Total",
//                   itemCount: "1090",
//                 ),
//               ),
//               SizedBox(height: 35.v),
//               _buildSavedForLaterStack(context),
//             ],
//           ),
//         ),
//       );
//   }


//   /// Section Widget
//   Widget _buildUserProfile(BuildContext context) {
//     return SizedBox(
//       height: 73.v,
//       width: 315.h,
//       child: Stack(
//         alignment: Alignment.topCenter,
//         children: [
//           Image.asset("image/img_l3.PNG"),
//           Align(
//             alignment: Alignment.topCenter,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset("image/img_l3.PNG"),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 14,
//                     top: 8,
//                     bottom: 4,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Watermelon Peperomia",
                        
//                       ),
//                       SizedBox(height: 8),
//                       Padding(
//                         padding: EdgeInsets.only(right: 27),
//                         child: _buildOne(
//                           context,
//                           one: "1",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Image.asset("image/img_l3.PNG"),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 21,
//                     top: 5,
//                     bottom: 33,
//                   ),
//                   child: Text(
//                     "350",
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildPeperomiaObtusfolia(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         left: 24,
//         right: 35,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 73,
//             width: 213,
//             child: Stack(
//               alignment: Alignment.topRight,
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                     height: 73,
//                     width: 75,
//                     padding: EdgeInsets.symmetric(horizontal: 3),
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: Image.asset("image/img_l3.PNG"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: CustomImageView(
//                       imagePath: ImageConstant.imgPeperomiaObtusfolia,
//                       height: 60.v,
//                       width: 46.h,
//                       alignment: Alignment.topLeft,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       left: 70.h,
//                       top: 7.v,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Peperomia Obtusfolia",
//                           style: theme.textTheme.titleSmall,
//                         ),
//                         SizedBox(height: 8.v),
//                         Padding(
//                           padding: EdgeInsets.only(right: 15.h),
//                           child: _buildOne(
//                             context,
//                             one: "1",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(),
//           CustomImageView(
//             imagePath: ImageConstant.imgBookmark,
//             height: 20.v,
//             width: 14.h,
//             radius: BorderRadius.circular(
//               1.h,
//             ),
//             margin: EdgeInsets.only(
//               top: 9.v,
//               bottom: 44.v,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left: 20.h,
//               top: 4.v,
//               bottom: 48.v,
//             ),
//             child: Text(
//               "400",
//               style: CustomTextStyles.titleSmallPoppinsMedium,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildCactus(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         left: 24.h,
//         right: 35.h,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 73.v,
//             width: 117.h,
//             child: Stack(
//               alignment: Alignment.bottomRight,
//               children: [
//                 Align(
//                   alignment: Alignment.center,
//                   child: SizedBox(
//                     height: 73.v,
//                     width: 117.h,
//                     child: Stack(
//                       alignment: Alignment.topRight,
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             height: 73.v,
//                             width: 75.h,
//                             padding: EdgeInsets.symmetric(horizontal: 9.h),
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: fs.Svg(
//                                   ImageConstant.imgUserLime200,
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             child: CustomImageView(
//                               imagePath: ImageConstant.imgMaskGroup60x37,
//                               height: 60.v,
//                               width: 37.h,
//                               alignment: Alignment.topLeft,
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.topRight,
//                           child: Padding(
//                             padding: EdgeInsets.only(top: 6.v),
//                             child: Text(
//                               "Cactus",
//                               style: theme.textTheme.titleSmall,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       right: 6.h,
//                       bottom: 19.v,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         CustomIconButton(
//                           height: 20.adaptSize,
//                           width: 20.adaptSize,
//                           padding: EdgeInsets.all(5.h),
//                           child: CustomImageView(
//                             imagePath: ImageConstant.imgGroup114,
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 14.h),
//                           child: Text(
//                             "1",
//                             style: CustomTextStyles
//                                 .titleSmallPoppinsTeal600SemiBold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left: 7.h,
//               top: 34.v,
//               bottom: 19.v,
//             ),
//             child: CustomIconButton(
//               height: 20.adaptSize,
//               width: 20.adaptSize,
//               child: CustomImageView(),
//             ),
//           ),
//           Spacer(
//             flex: 41,
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgThumbsUpTeal600,
//             height: 20.v,
//             width: 19.h,
//             margin: EdgeInsets.only(
//               top: 34.v,
//               bottom: 19.v,
//             ),
//           ),
//           Spacer(
//             flex: 58,
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgBookmark,
//             height: 20.v,
//             width: 14.h,
//             radius: BorderRadius.circular(
//               1.h,
//             ),
//             margin: EdgeInsets.only(
//               top: 10.v,
//               bottom: 43.v,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left: 21.h,
//               top: 4.v,
//               bottom: 48.v,
//             ),
//             child: Text(
//               "260",
//               style: CustomTextStyles.titleSmallPoppinsMedium,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildPriceRow(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 35.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(bottom: 17.v),
//             child: CustomIconButton(
//               height: 48.adaptSize,
//               width: 48.adaptSize,
//               padding: EdgeInsets.all(6.h),
//               child: CustomImageView(
//                 imagePath: ImageConstant.imgGroup125,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.only(
//                 left: 12.h,
//                 top: 3.v,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 58.v,
//                     width: 197.h,
//                     margin: EdgeInsets.only(top: 3.v),
//                     child: Stack(
//                       alignment: Alignment.centerLeft,
//                       children: [
//                         Align(
//                           alignment: Alignment.bottomRight,
//                           child: Text(
//                             "Shop for more ₹190",
//                             style: CustomTextStyles.labelLargeMedium,
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                             padding: EdgeInsets.only(right: 45.h),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 SizedBox(
//                                   width: 152.h,
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         "Delivery",
//                                         style: theme.textTheme.titleSmall,
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(
//                                           top: 7.v,
//                                           bottom: 5.v,
//                                         ),
//                                         child: Container(
//                                           height: 4.v,
//                                           width: 86.h,
//                                           decoration: BoxDecoration(
//                                             color: appTheme.tealA100,
//                                             borderRadius: BorderRadius.circular(
//                                               2.h,
//                                             ),
//                                           ),
//                                           child: ClipRRect(
//                                             borderRadius: BorderRadius.circular(
//                                               2.h,
//                                             ),
//                                             child: LinearProgressIndicator(
//                                               value: 0.79,
//                                               backgroundColor:
//                                                   appTheme.tealA100,
//                                               valueColor:
//                                                   AlwaysStoppedAnimation<Color>(
//                                                 appTheme.teal600,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(height: 2.v),
//                                 SizedBox(
//                                   width: 150.h,
//                                   child: Text(
//                                     "Order above ₹1200 to get free delivery",
//                                     maxLines: 2,
//                                     overflow: TextOverflow.ellipsis,
//                                     style: theme.textTheme.bodySmall!.copyWith(
//                                       height: 1.67,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(
//                       left: 18.h,
//                       bottom: 41.v,
//                     ),
//                     child: Text(
//                       "80",
//                       style: CustomTextStyles.titleSmallPoppinsMedium,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildApplyCouponRow(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 35.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 38.adaptSize,
//             width: 38.adaptSize,
//             decoration: AppDecoration.fillCyan.copyWith(
//               borderRadius: BorderRadiusStyle.circleBorder19,
//             ),
//             child: CustomImageView(
//               imagePath: ImageConstant.imgTelevision,
//               height: 38.adaptSize,
//               width: 38.adaptSize,
//               alignment: Alignment.center,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left: 22.h,
//               top: 10.v,
//               bottom: 10.v,
//             ),
//             child: Text(
//               "Apply Coupon",
//               style: theme.textTheme.titleSmall,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               top: 26.v,
//               bottom: 10.v,
//             ),
//             child: SizedBox(
//               width: 149.h,
//               child: Divider(
//                 indent: 28.h,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildSavedForLaterStack(BuildContext context) {
//     return SizedBox(
//       height: 118.v,
//       width: double.maxFinite,
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Align(
//             alignment: Alignment.center,
//             child: Padding(
//               padding: EdgeInsets.only(
//                 left: 24.h,
//                 right: 35.h,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 11.h),
//                     child: _buildFiftyNine(
//                       context,
//                       savedText: "Saved for later",
//                       itemCount: "6 items",
//                     ),
//                   ),
//                   SizedBox(height: 18.v),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 76.v,
//                         width: 210.h,
//                         child: Stack(
//                           alignment: Alignment.topRight,
//                           children: [
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: SizedBox(
//                                 height: 76.v,
//                                 width: 75.h,
//                                 child: Stack(
//                                   alignment: Alignment.topLeft,
//                                   children: [
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgUserLime100,
//                                       height: 73.v,
//                                       width: 75.h,
//                                       alignment: Alignment.center,
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgLayer20,
//                                       height: 65.v,
//                                       width: 30.h,
//                                       alignment: Alignment.topLeft,
//                                       margin: EdgeInsets.only(left: 18.h),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.topRight,
//                               child: Padding(
//                                 padding: EdgeInsets.only(top: 8.v),
//                                 child: Text(
//                                   "Large Snake Zylanica",
//                                   style: theme.textTheme.titleSmall,
//                                 ),
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.bottomCenter,
//                               child: Container(
//                                 height: 21.v,
//                                 width: 74.h,
//                                 margin: EdgeInsets.only(bottom: 21.v),
//                                 child: Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     CustomImageView(
//                                       imagePath:
//                                           ImageConstant.imgGroup119BlueGray900,
//                                       height: 20.v,
//                                       width: 74.h,
//                                       alignment: Alignment.center,
//                                     ),
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: Text(
//                                         "2",
//                                         style: CustomTextStyles
//                                             .titleSmallPoppinsTeal600SemiBold,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             CustomImageView(
//                               imagePath: ImageConstant.imgThumbsUpTeal600,
//                               height: 20.v,
//                               width: 19.h,
//                               alignment: Alignment.bottomRight,
//                               margin: EdgeInsets.only(
//                                 right: 12.h,
//                                 bottom: 21.v,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       CustomImageView(
//                         imagePath: ImageConstant.imgBookmarkTeal600,
//                         height: 20.v,
//                         width: 14.h,
//                         radius: BorderRadius.circular(
//                           1.h,
//                         ),
//                         margin: EdgeInsets.only(
//                           top: 10.v,
//                           bottom: 46.v,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                           left: 20.h,
//                           top: 5.v,
//                           bottom: 50.v,
//                         ),
//                         child: Text(
//                           "600",
//                           style: CustomTextStyles.titleSmallPoppinsMedium,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: double.maxFinite,
//               margin: EdgeInsets.only(
//                 top: 39.v,
//                 bottom: 23.v,
//               ),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 35.h,
//                 vertical: 13.v,
//               ),
//               decoration: AppDecoration.gradientTealToTeal.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL24,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 1.v),
//                     child: Text(
//                       "Checkout",
//                       style: CustomTextStyles.titleMediumWhiteA700,
//                     ),
//                   ),
//                   Text(
//                     "1090",
//                     style: CustomTextStyles.titleMediumWhiteA700,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Common widget
//   Widget _buildOne(
//     BuildContext context, {
//     required String one,
//   }) {
//     return SizedBox(
//       width: 127.h,
//       child: Row(
//         children: [
//           CustomIconButton(
//             height: 20.adaptSize,
//             width: 20.adaptSize,
//             padding: EdgeInsets.all(5.h),
//             child: CustomImageView(
//               imagePath: ImageConstant.imgGroup114,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 14.h),
//             child: Text(
//               one,
//               style: CustomTextStyles.titleSmallPoppinsTeal600SemiBold.copyWith(
//                 color: appTheme.teal600,
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 14.h),
//             child: CustomIconButton(
//               height: 20.adaptSize,
//               width: 20.adaptSize,
//               child: CustomImageView(),
//             ),
//           ),
//           Spacer(),
//           CustomImageView(
//             imagePath: ImageConstant.imgThumbsUpTeal600,
//             height: 20.v,
//             width: 19.h,
//           ),
//         ],
//       ),
//     );
//   }

//   /// Common widget
//   Widget _buildFiftyNine(
//     BuildContext context, {
//     required String savedText,
//     required String itemCount,
//   }) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           savedText,
//           style: CustomTextStyles.titleMediumTeal600.copyWith(
//             color: appTheme.teal600,
//           ),
//         ),
//         Text(
//           itemCount,
//           style: CustomTextStyles.titleMediumTeal600.copyWith(
//             color: appTheme.teal600,
//           ),
//         ),
//       ],
//     );
//   }
// }


