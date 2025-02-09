void main() {
  Cuenta account = Cuenta("Brandon Soriano", 5000);

  account.saldo();
  account.agregar(1000);
  account.sacar(200);
  account.agregar(500);
  account.sacar(6000);
  account.saldo();
}

class Cuenta {
  String nombre;
  double dinero;

  Cuenta(this.nombre, this.dinero);

  void agregar(double cant) {
    if (cant > 0) {
      dinero += cant;
      print('Deposito: \$$cant. Saldo: \$$dinero');
    } else {
      print('Cantidad debe ser mayor a 0.');
    }
  }

  void sacar(double cant) {
    if (cant > 0 && cant <= dinero) {
      dinero -= cant;
      print('Retiro: \$$cant. Saldo: \$$dinero');
    } else if (cant > dinero) {
      print('Fondos insuficientes. Saldo: \$$dinero');
    } else {
      print('Cantidad debe ser mayor a 0.');
    }
  }

  void saldo() {
    print('Saldo de $nombre: \$$dinero');
  }
}
