import 'package:deepcare_demo/models/data.dart';
import 'package:deepcare_demo/shared_widgets/dashed_line.dart';
import 'package:deepcare_demo/shared_widgets/failure_widget.dart';
import 'package:deepcare_demo/shared_widgets/loading_indicator.dart';
import 'package:deepcare_demo/utils/constants.dart';
import 'package:deepcare_demo/utils/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const List<DataModel> dataList = [
    DataModel(
      date: "2022.Feb.23",
      green: 56,
      pink: 70,
      blue: 90,
      met: 230,
      jogging: 4.7,
    ),
    DataModel(
      date: "2022.Feb.22",
      green: 36,
      pink: 50,
      blue: 40,
      met: 200,
      jogging: 5.7,
    ),
    DataModel(
      date: "2022.Feb.21",
      green: 16,
      pink: 40,
      blue: 60,
      met: 180,
      jogging: 2.7,
    ),
    DataModel(
      date: "2022.Feb.20",
      green: 66,
      pink: 80,
      blue: 40,
      met: 220,
      jogging: 3.7,
    ),
    DataModel(
      date: "2022.Feb.19",
      green: 46,
      pink: 30,
      blue: 70,
      met: 150,
      jogging: 6.7,
    ),
    DataModel(
      date: "2022.Feb.18",
      green: 35,
      pink: 50,
      blue: 80,
      met: 150,
      jogging: 3.7,
    ),
    DataModel(
      date: "2022.Feb.17",
      green: 26,
      pink: 80,
      blue: 70,
      met: 130,
      jogging: 5.7,
    ),
    DataModel(
      date: "2022.Feb.16",
      green: 54,
      pink: 30,
      blue: 20,
      met: 140,
      jogging: 8.7,
    ),
    DataModel(
      date: "2022.Feb.15",
      green: 26,
      pink: 30,
      blue: 50,
      met: 120,
      jogging: 7.7,
    ),
    DataModel(
      date: "2022.Feb.16",
      green: 16,
      pink: 20,
      blue: 40,
      met: 100,
      jogging: 10.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1), () {
        return HomePage.dataList;
      }),
      builder: (BuildContext context, AsyncSnapshot<List<DataModel>> snapshot) {
        if (snapshot.hasError) {
          return FailureWidget(
            message: snapshot.error!.toString(),
          );
        } else if (snapshot.hasData) {
          return Container(
            margin: const EdgeInsets.only(
              right: Styles.padding10,
              top: Styles.padding50,
              bottom: Styles.padding20,
            ),
            padding: const EdgeInsets.only(
              top: Styles.padding20,
              bottom: Styles.padding20,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(Styles.radius30),
                bottomRight: Radius.circular(Styles.radius30),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        top: Styles.padding10,
                        child: Text(
                          Constants.history,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    color: const Color(Styles.white),
                                  ),
                        ),
                      ),
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        bottom: Styles.padding100 + Styles.padding10,
                        child: const Divider(
                          color: Color(Styles.white),
                          thickness: 1,
                          height: 1,
                        ),
                      ),
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        bottom: Styles.padding100 +
                            Styles.padding10 +
                            0.7 * Styles.padding100,
                        child: const DashedLine(),
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        itemCount: HomePage.dataList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(Styles.padding10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.all(Styles.padding5),
                                  child: Text(
                                    snapshot.data![index].date
                                        .toString()
                                        .substring(5),
                                  ),
                                ),
                                SizedBox(
                                  height: Styles.padding100 * 2,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: Styles.padding15,
                                        color: Colors.deepPurple,
                                        height: snapshot.data![index].blue
                                            .toDouble(),
                                      ),
                                      Container(
                                        width: Styles.padding15,
                                        color: Colors.pinkAccent,
                                        height: snapshot.data![index].pink
                                            .toDouble(),
                                      ),
                                      Container(
                                        width: Styles.padding15,
                                        color: Colors.greenAccent,
                                        height: snapshot.data![index].green
                                            .toDouble(),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Styles.padding100,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(
                                          Styles.padding5,
                                        ),
                                        child: Text(
                                          snapshot.data![index].met.toString(),
                                        ),
                                      ),
                                      Text(
                                        snapshot.data![index].jogging
                                            .toString(),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Styles.padding10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: Styles.padding10 + 0.7 * Styles.padding100,
                        child: Text(Constants.ziel),
                      ),
                      SizedBox(
                        height: Styles.padding100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(Styles.padding5),
                              child: Text(Constants.met),
                            ),
                            Text(Constants.km),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return const LoadingIndicator();
      },
    );
  }
}
