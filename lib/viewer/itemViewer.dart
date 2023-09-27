import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
import 'package:kabengo/viewer/widgets/TopSection.dart';
import 'package:kabengo/viewer/widgets/itemViewer_ReservationContents.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/headingTwo.dart';
import 'package:kabengo/widgets/inputLabel.dart';
import 'package:kabengo/widgets/textInputFeild.dart';

class ItemViewer extends StatelessWidget {
  final String title;
  final AssetImage imageLocation;
  const ItemViewer({
    super.key,
    required this.title,
    required this.imageLocation,
  });
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: foregroundThemeColor,
          ),
          backgroundColor: backgroundThemeColor,
          elevation: 3,
          title: HeadingOne(headingOne: "Kabengo Safaris"),
          centerTitle: true,
        ),
        backgroundColor: backgroundThemeColor,
        body: Column(
          children: [
            TopSection(imageLocation: imageLocation, title: title),
            Expanded(
              child: ItemViewer_ReservationContents(title: title, scrollController: _scrollController),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 7,
                minimumSize: const Size.fromHeight(35),
                backgroundColor: foregroundThemeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21))),
            onPressed: () {
              _showReservationFormDialog(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Reserve",
                style: TextStyle(
                  color: backgroundThemeColor,
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ),
        )
      ),
    );
  }
  void _showReservationFormDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ConfirmDialog();
      },
    );
  }
}
class ConfirmDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21),
      ),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: backgroundThemeColor,
          borderRadius: BorderRadius.circular(21),
        ),
        height: 330,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
          HeadingTwo(headingTwo: "Confirm Reservation"),
          InputLabel(label: "Name"),
          TextInputField(prefixIcon: Icons.person),
          InputLabel(label: "Email"),
          TextInputField(prefixIcon: Icons.mail),
          Padding(            
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 7,
                    minimumSize: const Size.fromHeight(35),
                    backgroundColor: foregroundThemeColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      color: backgroundThemeColor,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
