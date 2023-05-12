import 'package:flutter/material.dart';
import 'package:eco_walking_app/assets/images/images.dart';
import 'package:eco_walking_app/assets/colors/colors.dart';
import 'package:eco_walking_app/assets/fonts/font.dart';
import 'package:eco_walking_app/view/global_provider.dart';

class DescriptionView extends StatefulWidget {
  final String bgImage;
  final String title;
  final String brand;
  final String description;
  final String logo;
  final int points;
  final int coins;
  

  DescriptionView({
    required this.bgImage,
    required this.logo,
    required this.title,
    required this.brand,
    required this.description,
    required this.points,
    required this.coins,
  });
  @override

  State<DescriptionView> createState() => _DescriptionViewState();

}
class _DescriptionViewState extends State<DescriptionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ma page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Coins: ${Globals.coins}'),
            ElevatedButton(
              onPressed: Globals.coins >= widget.points
                ? () {
                    setState(() {
                      Globals.coins -= widget.points;
                    });
                  }
                : null,
              child: Text('Échanger pour ${widget.points}'),
            ),
          ],
        ),
      ),
    );
  }
}
    // Stack(
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height * 0.5,
    //         width: MediaQuery.of(context).size.width,
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: NetworkImage(imageUrl),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         top: MediaQuery.of(context).size.height * 0.25,
    //         left: 0,
    //         right: 0,
    //         child: Column(
    //           children: [
    //             const SizedBox(height: 30),
    //             Image.asset(
    //               CustomImages.basicFit,
    //               width: 100,
    //               height: 100,
    //             ),
    //             const SizedBox(height: 10),
    //             Text(
    //               title,
    //               style: Customfont.title(color: Colors.grey),
    //             ),
    //             const SizedBox(height: 10),
    //             Row(
    //               children: [
    //                 const SizedBox(width: 20),
    //                 Text(
    //                   brand,
    //                   style: Customfont.title(color: Colors.grey),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(height: 20),
    //             Container(
    //               padding: const EdgeInsets.symmetric(horizontal: 20),
    //               child: Text(
    //                 description,
    //                 style: Customfont.title(color: Colors.grey),
    //               ),
    //             ),
    //             const Spacer(),
    //             Container(
    //               width: MediaQuery.of(context).size.width,
    //               height: 70,
    //               decoration: const BoxDecoration(
    //                 color: CustomColors.orange,
    //                 borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(27),
    //                   topRight: Radius.circular(27),
    //                 ),
    //               ),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   const SizedBox(width: 10),
    //                   Text(
    //                     "250",
    //                     style: Customfont.title(color: Colors.white),
    //                   ),
    //                   const SizedBox(width: 20),
    //                   ElevatedButton(
                        // onPressed: coins >= points
                        //     ? () {
                        //         // Deduct points and coins
                        //       }
                        //     : null,
    //                     style: ElevatedButton.styleFrom(
    //                       primary: CustomColors.orange,
    //                       elevation: 0,
    //                       shape: RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(27),
    //                       ),
    //                     ),
    //                     child: Text(
    //                       "ÉCHANGER CONTRE 250",
    //                       style: Customfont.mediumTitle(color: Colors.white),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   );