class PricePointLineChart{
  final double x;
  final double y;

  PricePointLineChart(this.x, this.y);
}

List<PricePointLineChart> listPrincePoint(){
  var list  = <PricePointLineChart>[];
  list.add(PricePointLineChart(2, 1));
  list.add(PricePointLineChart(4, 5));
  list.add(PricePointLineChart(6, 7));
  list.add(PricePointLineChart(2, 5));
  list.add(PricePointLineChart(6, 9));


  return list;
}