import '../models/index.dart';
import '../services/index.dart';
import 'index.dart';

class AchievementsRepository
    extends BaseRepository<AchievementsService, List<Achievement>> {
  AchievementsRepository(AchievementsService service) : super(service);

  @override
  Future<List<Achievement>> fetchData() async {
    final response = await service.getAchievements();

    return [for (final item in response.data) Achievement.fromJson(item)];
  }
}
