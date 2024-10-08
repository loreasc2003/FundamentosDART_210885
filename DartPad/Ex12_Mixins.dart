abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador {
  void volar() => print("Estoy volandooo!");
  void planear(int distanciaMaxima) =>("Este animal puede planear hasta: ${distanciaMaxima}");
  void ascender(double alturaMaxima) => print("Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar.");
  void descender(String velocidadMaxima) => print("Este animal puede descender a una velocidad de hasta: ${velocidadMaxima}");

}

mixin Caminante {
  void caminar() => print("Estoy caminandooo!");

}

mixin Nadador {
  void nadar() => print("Estoy nadandooo!");
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante,Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main(){
  final flipper = Delfin();
  print("Instanciando la clase de Delfín, y accediendo a sus funciones.");
  flipper.nadar();


  print("-----------------------------------------------");
  print("Instanciando la clase de Murcielago, y accediendo a sus funciones.");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("--------------------------------------------------");
  print("Instanciando la clase de Pato, y accediendo a sus funciones.");
  final pekines = Pato();
  pekines.caminar();
  pekines.planear(100);
  pekines.ascender(40);
  pekines.descender("5 Km/h");
  pekines.volar();
  pekines.nadar();
}