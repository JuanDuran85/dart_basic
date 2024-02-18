// callbacks and anonymous functions
void getUser(String idUser, Function callbacks) {
  Map<String, String> user = {
    'id': idUser,
    'name': 'Darien',
    'lastName': 'Maggio'
  };

  callbacks(user);
}

// Main Function
void main(List<String> args) {
  // ---------- callbacks

  getUser('1', (Map<String, String> user) {
    print(user['id']);
    print(user['name']);
    print(user['lastName']);
  });
}
