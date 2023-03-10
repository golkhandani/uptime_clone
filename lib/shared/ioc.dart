import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

final loggerProvider = Provider((ref) => Logger());

final ioc = ProviderContainer();
final logger = ioc.read(loggerProvider);
