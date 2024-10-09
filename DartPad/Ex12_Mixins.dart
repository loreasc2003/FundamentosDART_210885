abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}


mixin Volador {
  void volar() => print("Estoy volandooo!");
  void planear(int distanciaMaxima) => print("Este animal puede planear hasta: ${distanciaMaxima}");
  void ascender(double alturaMaxima) => print("Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar.");
  void descender(String velocidadMaxima) => print("Este animal puede descender a una velocidad de hasta: ${velocidadMaxima}");

}

mixin Caminante {
  void caminar() => print("Estoy caminandooo!");
  void correr(double corridaMaxima) => print("Este animal puede correr hasta: ${corridaMaxima} Km/h");
  void trotar(bool troteMaximo) => print("Este animal puede trotar: ${troteMaximo}");
  void saltar(bool saltoMaximo) => print("Este animal puede saltar: ${saltoMaximo}");

}

mixin Nadador {
  void nadar() => print("Estoy nadandooo!");
  void sumergir(double sumergidoMaximo) => print("Este animal puede sumergirse a: ${sumergidoMaximo} mts." );
  void respirar (bool respiroMaximo) => print("Este animal puede respirar bajo el mar: ${respiroMaximo}");
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante,Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

// Animales que me tocaron
class TiburonTigre extends Pez with Nadador{}
class PatoColorado extends Ave with Caminante, Volador, Nadador{}

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


  print("*---------------------------------------------------------*");
  print("Instanciando la clase de Tiburon Tigre, y accediendo a sus funciones.");
  final tiburonTigre = TiburonTigre();
  tiburonTigre.nadar();
  tiburonTigre.sumergir(300);
  tiburonTigre.respirar(false);

  
  print("*---------------------------------------------------------*");
  print("Instanciando la clase del Pato Colorado, y accediendo a sus funciones.");
  final patoColorado = PatoColorado();
  patoColorado.caminar();
  patoColorado.correr(80);
  patoColorado.trotar(true);
  patoColorado.saltar(false);
  patoColorado.volar();
  patoColorado.planear(1500);
  patoColorado.ascender(2000);
  patoColorado.descender("36 Km/h");
  patoColorado.nadar();
  patoColorado.sumergir(1);
  patoColorado.respirar(false);
}