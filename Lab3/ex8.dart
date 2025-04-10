class Personaje {
  final String nombre;
  Personaje(this.nombre);
}

mixin LanzarHechizo on Personaje {
  void lanzarHechizo() {
    print('$nombre lanza un poderoso hechizo.');
  }
}

mixin AtacarConArmas on Personaje {
  void atacar() {
    print('$nombre ataca con su arma.');
  }
}

mixin Curar on Personaje {
  void curar() {
    print('$nombre cura a sus aliados.');
  }
}

class Mago extends Personaje with LanzarHechizo, Curar {
  Mago(String nombre) : super(nombre);
}

class Guerrero extends Personaje with AtacarConArmas {
  Guerrero(String nombre) : super(nombre);
}

class Paladin extends Personaje with AtacarConArmas, Curar {
  Paladin(String nombre) : super(nombre);
}


void main() {
  var mago = Mago("Gandalf");
  var guerrero = Guerrero("Conan");
  var paladin = Paladin("Uther");

  print("Habilidades del Mago:");
  mago.lanzarHechizo();
  mago.curar();

  print("\nHabilidades del Guerrero:");
  guerrero.atacar();

  print("\nHabilidades del Paladín:");
  paladin.atacar();
  paladin.curar();
}
