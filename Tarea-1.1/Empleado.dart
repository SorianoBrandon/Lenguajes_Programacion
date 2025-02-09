void main() {
  List<Empleado> empleados = [
    Empleado("Brandon Soriano", "Gerente General", 10500),
    Empleado("Allison Zuniga", "Administradora IT", 8250),
    Empleado("Edgar Rivera", "Electricista", 6300),
  ];

  print("Total: \$${calSalario(empleados)}");
  print("Promedio: \$${calPromedio(empleados)}");
}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double calSalario(List<Empleado> empleados) {
  double tot = 0;
  for (var empleado in empleados) {
    tot += empleado.salario;
  }
  return tot;
}

double calPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  return calSalario(empleados) / empleados.length;
}