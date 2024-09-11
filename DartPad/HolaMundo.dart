void main(){
// Declarando una variable generica para almacenar mi nombre
  var myName = 'Lorena';
  String myLastName = 'Ascención';
  final int myDNI = 210885;
  late final int myAge;
  
  print('Hola $myName $myLastName, tu matricula es: $myDNI y tu edad aún no la conozco porque no se cuando naciste.');
  
  // Interpolando el valor de las variables con métdos de manipulación o transformación
  print('\nHola ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad aún no la conozco porque no se cuando naciste.');
}

