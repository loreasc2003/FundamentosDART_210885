void main(){
// Practica 04: Tipos de datos en DART
//Cadenas (String)
final String pokemon="Pikachu";

//Enteros (Int)
final int hp= 100;

//Booleano (Boolean)
final bool isAlive = true;

//Listas (List)
final abilities = ['Impact-trueno','cola de hierro','Ataque Rápido'];
final sprities = <String>['Pikachu:front.png', 'Pickachu_back.png'];


print(""" El pokemon que elegiste es:" $pokemon
  
  Las estadísticas de $pokemon son:
  Vida (HP): $hp
  Estatus de vida: $isAlive
  Habilidades: $abilities
  Imágenes: $sprities
  """);
}