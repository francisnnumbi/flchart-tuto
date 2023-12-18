import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Titles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
            getTitlesWidget: (x, meta) {
              const style = TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              );
              Widget text;
              switch (x.toInt()) {
                case 2:
                  text = const Text(
                    "2020",
                    style: style,
                  );
                  break;
                case 5:
                  text = const Text(
                    "2021",
                    style: style,
                  );
                  break;
                case 8:
                  text = const Text(
                    "2022",
                    style: style,
                  );
                  break;
                case 11:
                  text = const Text(
                    "2023",
                    style: style,
                  );
                  break;
                default:
                  text = const Text(
                    "",
                    style: style,
                  );
              }
              return SideTitleWidget(
                axisSide: meta.axisSide,
                space: 5,
                child: text,
              );
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
            getTitlesWidget: (value, meta) {
              const style = TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              );
              Widget text;
              switch (value.toInt()) {
                case 10000:
                  text = const Text(
                    "10k",
                    style: style,
                  );
                  break;
                case 20000:
                  text = const Text(
                    "20k",
                    style: style,
                  );
                  break;
                case 30000:
                  text = const Text(
                    "30k",
                    style: style,
                  );
                  break;
                case 40000:
                  text = const Text(
                    "40k",
                    style: style,
                  );
                  break;
                case 50000:
                  text = const Text(
                    "50k",
                    style: style,
                  );
                  break;
                case 60000:
                  text = const Text(
                    "60k",
                    style: style,
                  );
                  break;
                case 70000:
                  text = const Text(
                    "70k",
                    style: style,
                  );
                  break;
                default:
                  text = const Text(
                    "",
                    style: style,
                  );
              }
              return SideTitleWidget(
                axisSide: meta.axisSide,
                space: 5,
                child: text,
              );
            },
          ),
        ),
      );
}

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 70000,
        titlesData: Titles.getTitleData(),
        gridData: FlGridData(
          show: true,
          // drawVerticalLine: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey[800],
              strokeWidth: 1,
            );
          },
          /*getDrawingVerticalLine: (value) {
            return FlLine(
              color: Colors.grey[800],
              strokeWidth: 1,
            );
          },*/
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Colors.grey[800]!,
            width: 2,
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 30000),
              const FlSpot(2.5, 10000),
              const FlSpot(4, 50000),
              const FlSpot(6, 43000),
              const FlSpot(8, 40000),
              const FlSpot(9, 30000),
              const FlSpot(11, 38000),
            ],
            isCurved: true,
            gradient: const LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            barWidth: 3,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  Colors.redAccent.withOpacity(.4),
                  Colors.orangeAccent.withOpacity(.4),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          LineChartBarData(
            spots: [
              const FlSpot(0, 33000),
              const FlSpot(2, 5000),
              const FlSpot(5, 5000),
              const FlSpot(7.5, 40000),
              const FlSpot(8, 35000),
              const FlSpot(10, 50000),
              const FlSpot(10.5, 52000),
            ],
            isCurved: true,
            gradient: const LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.greenAccent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            barWidth: 3,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent.withOpacity(.4),
                  Colors.greenAccent.withOpacity(.4),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
