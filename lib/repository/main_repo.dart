class MainRepository {
  static MainRepository _istance = MainRepository._internal();

  MainRepository._internal();

  factory MainRepository.instance() => _istance;

  Map<String, Map<String, String>> localizationTransiations = {};
}
