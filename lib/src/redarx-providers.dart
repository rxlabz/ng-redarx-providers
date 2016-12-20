import 'dart:async';
import 'package:redarx/redarx.dart';
import 'package:angular2/core.dart';

const DISPATCHER = const OpaqueToken('redarx.dispatcher');
Dispatcher dispatcherFactory() => new Dispatcher();

const DISPATCH = const OpaqueToken('redarx.dispatch');
Dispatch dispatchFactory(Dispatcher dispatcher) => dispatcher.dispatch;

const QUERY = const OpaqueToken('redarx.query');
Dispatch queryFactory(Dispatcher dispatcher) => dispatcher.query;

const QUERIE$ = const OpaqueToken('redarx.querie\$');
Stream<Request> querie$Factory(Dispatcher dispatcher) => dispatcher.querie$;

const REQUEST$ = const OpaqueToken('redarx.request\$');
Stream<Request> request$Factory(Dispatcher dispatcher) => dispatcher.request$;
