import 'package:flutter_app/charts/donut_chart.dart';
import 'package:flutter_app/charts/grouped_stacked_bar_chart.dart';
import 'package:flutter_app/charts/simple_chart.dart';
import 'package:flutter_app/charts/simple_time_series.dart';
import 'package:flutter_app/charts/slider_line_chart.dart';
import 'package:flutter_app/charts/stacked_line_chart.dart';
import 'package:flutter_app/models/chart_with_title.dart';

class Repository {
  List<ChartWithTitle> _charts = [
    ChartWithTitle(
        widget: SimpleBarChart.withSampleData(), title: 'Simple Bar Chart'),
    ChartWithTitle(
      widget: SimpleTimeSeriesChart.withSampleData(),
      title: 'Simple Time Series',
    ),
    ChartWithTitle(
      widget: StackedAreaLineChart.withSampleData(),
      title: 'Stacked Area Line Chart',
    ),
    ChartWithTitle(
      widget: GroupedStackedBarChart.withSampleData(),
      title: 'Grouped Stacked Bar Chart'
    ),
    ChartWithTitle(
      widget: DonutPieChart.withSampleData(),
      title: 'Donut Chart'
    ),
    ChartWithTitle(
      widget: SliderLine.withSampleData(),
      title: 'Slider Line Chart'
    )
  ];

  List<ChartWithTitle> getCharts() => _charts;
}
