import 'package:flutter_application_1/models/enums.dart';
import 'package:flutter_application_1/models/user.dart';


User testUser = User(
  firstName: "Béla",
  sureName: "Kovács",
  gender: GenderType.male,
  birthDate: DateTime(2003, 2, 12),
  weight: 53,
  height: 163,
  activity: ActivityLevel.kozepes,
  target: TargetLevel.fogyas,
  weeklyWeightChange: 0.5
  );