class Vehiculo {
  String nombre;
  Vehiculo(this.nombre);

  void acelerar() {
    print('$nombre está acelerando.');
  }
}

mixin Volador on Vehiculo {
  void volar() {
    print('$nombre está volando.');
  }
}

mixin Navegable on Vehiculo {
  void navegar() {
    print('$nombre está navegando.');
  }
}

class Avion extends Vehiculo with Volador {
  Avion(String nombre) : super(nombre);
}

class Bote extends Vehiculo with Navegable {
  Bote(String nombre) : super(nombre);
}

class Auto extends Vehiculo {
  Auto(String nombre) : super(nombre);
}

void main() {
  var avion = Avion("Avión F-16");
  var bote = Bote("Yate");
  var auto = Auto("Sedán");

  avion.acelerar();
  avion.volar();

  bote.acelerar();
  bote.navegar();

  auto.acelerar();
}
