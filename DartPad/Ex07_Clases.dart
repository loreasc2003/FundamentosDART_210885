void main() {
  //Clase con parámetros posicionales que deben de respetar su orden para ser asignadas en la propiedad
  final wolverine = Hero("Logan", "Regeneración");
  // Clase con parámetros no posicionales, se pueden mandar en desorden
  final xmen = Team(type:"Heroes", name:"X-men");
  final brotherhood = Team(name: "The brotherhood of evil mutants");

  
  print(wolverine.name);
  print(wolverine.power);
  print("---------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type);
   // Invocando al método reescrito con @override
  print(xmen.toString());
  print("---------------------");
  
  print(brotherhood.name);
  print(brotherhood.type);
  // Invocando al método reescrito con @override
  print(brotherhood.toString());
}
class Hero{
  String name;
  String power;

  Hero(String pName, String pPower)
    : name = pName,
      power = pPower;
}

class Team {
  String name;
  String type;
  Team({required this.name,this.type="No definido"});
@override
  String toString()
  {
    return 'Grupo: $name, Tipo: $type';
  }
}