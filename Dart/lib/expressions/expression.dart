import 'package:Dart/expressions/Assign.dart';
import 'package:Dart/expressions/binary.dart';
import 'package:Dart/expressions/grouping.dart';
import 'package:Dart/expressions/literal.dart';
import 'package:Dart/expressions/unary.dart';
import 'package:Dart/expressions/variable.dart';

abstract class Expr {
  R accept<R>(ExprVisitor<R> visitor);
}

abstract class ExprVisitor<R> {
  R visitBinaryExpression(Binary node);
  R visitGroupingExpression(Grouping node);
  R visitLiteralExpression(Literal node);
  R visitUnaryExpression(Unary node);
  R visitVariableExpression(Variable variable);
  R visitAssignExpression(Assign assign);
}
