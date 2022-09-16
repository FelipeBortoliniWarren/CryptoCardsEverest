import 'package:decimal/decimal.dart';

class Arguments {
  final String nameCripto;
  final String initialsCripto;
  final String iconCripto;
  final Decimal priceCripto;
  final double amountCripto;
  final double variationCripto;
  final Decimal valueCripto;

  Arguments(
    this.nameCripto,
    this.initialsCripto,
    this.iconCripto,
    this.priceCripto,
    this.amountCripto,
    this.variationCripto,
    this.valueCripto,
  );
}