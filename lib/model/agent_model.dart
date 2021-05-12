class AgentModel {
  final int id;
  final String name;

  AgentModel({
    required this.id,
    required this.name,
  });

  static AgentModel one() {
    return AgentModel(id: 1, name: 'Dishub');
  }

  static List<AgentModel> all() {
    return [
      AgentModel(id: 1, name: 'Satpol PP'),
      AgentModel(id: 2, name: 'Dishub Magelang')
    ];
  }
}
