void searchPlayer(Set<String> players, String name) {
  var result = players.where((p) => p.contains(name));
  if (result.isNotEmpty) {
    print("Search Result : ${result.first}");
  } else {
    print("Player Not Found !");
  }
}

String getTopScores(Map<String, int> goals) {
  var top = goals.entries.reduce((a, b) => a.value > b.value ? a : b);
  return '${top.key} (${top.value})';
}

void displayPlayers({
  required String name,
  required int goals,
  bool showPosition = false,
}) {
  print("$name - $goals - ${showPosition ? "- Forward " : ""}");
}

int totalGoals(Map<String, int> goals) =>
    goals.values.fold(0, (sum, g) => sum + g);


bool checkAny(Map<String,int> g) => g.values.any((g) => g > 25);


bool checkEvery(Map<String,int> g) => g.values.every((g) => g >= 10);

