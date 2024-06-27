abstract class Handler {
  Handler? next;
  Handler(this.next);
  void handleRequest(String request, Function(String) callback);
}

class VanillaHandler extends Handler {
  VanillaHandler(Handler? next) : super(next);

  @override
  void handleRequest(String request, Function(String) callback) {
    if (request == 'Vainilla') {
      callback('Vainilla');
    } else {
      next?.handleRequest(request, callback);
    }
  }
}

class ChocolateHandler extends Handler {
  ChocolateHandler(Handler? next) : super(next);

  @override
  void handleRequest(String request, Function(String) callback) {
    if (request == 'Chocolate') {
      callback('Chocolate');
    } else {
      next?.handleRequest(request, callback);
    }
  }
}

class ErrorHandler extends Handler {
  ErrorHandler(Handler? next) : super(next);

  @override
  void handleRequest(String request, Function(String) callback) {
    callback('Error');
  }
}
