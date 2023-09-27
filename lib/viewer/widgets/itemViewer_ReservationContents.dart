import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
import 'package:kabengo/viewer/class/reservations.dart';
import 'package:kabengo/widgets/customError.dart';
import 'package:kabengo/widgets/customScrollBar.dart';
import 'package:kabengo/widgets/headingTwo.dart';
import 'package:kabengo/widgets/paragraph.dart';

class ItemViewer_ReservationContents extends StatelessWidget {
  const ItemViewer_ReservationContents({
    super.key,
    required this.title,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final String title;
  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ReservationDescription>>(
      future: getGetReservationDescriptionsByReservationName(title),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: foregroundThemeColor,
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
              child: HeadingTwo(
                  headingTwo: "Error: ${snapshot.error}"));
        } else if (!snapshot.hasData) {
          return Center(
              child: HeadingTwo(
                  headingTwo: "Sorry! No Resevervation Available"));
        } else if (snapshot.data!.isEmpty) {
          return Center(
            child: CustomError(
                error:
                    'Sorry! Details about \'$title\' are not yet loaded, please try again later!'),
          );
        } else {
          final descriptions = snapshot.data;
          return CustomScrollBar(
            scrollController: _scrollController,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              controller: _scrollController,
              shrinkWrap: true,
              itemCount: descriptions!.length,
              itemBuilder: (context, index) {
                final description = descriptions[index];
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo(headingTwo: description.day),
                      Paragraph(paragraph: description.description),
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
