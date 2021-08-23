import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/config/themes/app_colors.dart';
import 'package:tawtheiq/view/screen/stats/color_indicator.dart';

class StatsChart extends StatefulWidget {
  @override
  _StatsChartState createState() => _StatsChartState();
}

class _StatsChartState extends State<StatsChart> {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PieChart(
            PieChartData(
                pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                  touchedIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                  touchedIndex = -1;
                }),
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 50,
                sections: showingSections()),
          ),
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runSpacing: 5,
          spacing: 10,
          alignment: WrapAlignment.start,
          children: <Widget>[
            ColorIndicator(
              color: AppColors.RED,
              text: 'Actions Not Started',
              isSquare: false,
              size: touchedIndex == 0 ? 18 : 16,
              textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
            ),
            ColorIndicator(
              color: Theme.of(context).colorScheme.secondary,
              text: 'Actions in Progress',
              isSquare: false,
              size: touchedIndex == 1 ? 18 : 16,
              textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
            ),
            ColorIndicator(
              color: AppColors.GREEN,
              text: 'Actions Completed',
              isSquare: false,
              size: touchedIndex == 2 ? 18 : 16,
              textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
            ),
          ],
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    final isTouched = false;
    final fontSize = isTouched ? 20.0 : 16.0;
    final radius = isTouched ? 110.0 : 40.0;
    final widgetSize = isTouched ? 55.0 : 45.0;
    double total = 0.0;

    var colors = [
      AppColors.RED,
      Theme.of(context).colorScheme.secondary,
      AppColors.GREEN
    ];
    return List.generate(
        3,
        (i) => PieChartSectionData(
              color: colors[i],
              value: total += 0.3,
              title: '${(total += 0.3) * 10}%',
              radius: radius,
              titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
              badgeWidget: _Badge(
                (total += 0.3) * 10,
                size: widgetSize,
                borderColor: colors[i],
              ),
              badgePositionPercentageOffset: .98,
            ));
  }
}

class _Badge extends StatelessWidget {
  final double value;
  final double size;
  final Color borderColor;

  const _Badge(
    this.value, {
    Key? key,
    required this.size,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary.withOpacity(.5),
            offset: const Offset(0, 3),
            blurRadius: 10,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: Text(
          "${value.round().toString()}%",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
