abstract class Handler {
  Handler(this.next);
  Handler? next;
  void handleRequest(
    String request,
    Function(String) callback,
  );
}

class VanillaHandler extends Handler {
  VanillaHandler(super.next);

  @override
  void handleRequest(
    String request,
    Function(String) callback,
  ) {
    if (request == 'Vainilla') {
      callback('Vainilla');
    } else {
      next?.handleRequest(
        request,
        callback,
      );
    }
  }
}

class ChocolateHandler extends Handler {
  ChocolateHandler(super.next);

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
  ErrorHandler(super.next);

  @override
  void handleRequest(String request, Function(String) callback) {
    callback('Error');
  }
}
