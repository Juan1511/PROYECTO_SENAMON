import 'dart:io';
import 'Batalla.dart';
import 'Entrenador.dart';
import 'Senamon.dart';

void main(List<String> args) {
  //CREACIÓN DE LOS SENAMONES
  List<String> tiposSenamones = [
    "Fuego",
    "Agua",
    "Hierba",
    "Volador",
    "Eléctrico"
  ];
  List<Senamon> universoSenamon = [
    //Fuego
    Senamon("Charmander", 1, "Fuego", 8.5, 118, 116, 1, 1,
        "Charmander es un pequeño lagarto bípedo. Sus características de fuego son resaltadas por su color de piel anaranjado y su cola con la punta envuelta en llamas."),
    Senamon("Cyndaquil", 1, "Fuego", 7.9, 78, 116, 1, 1,
        "Es tímido y siempre se enrosca como una pelota. Si se asusta, las llamas de su lomo arden con más fuerza. Si le atacan, enciende el lomo para protegerse."),
    Senamon("Torchic", 1, "Fuego", 2.5, 90, 130, 1, 1,
        "Torchic está cubierto por una suave capa de plumas con tonos anaranjados, sus alas son inútiles para volar debido a su pequeño tamaño. Antes que sus patas se desarrollen completamente, este Pokémon se mantiene cerca de su entrenador"),
    Senamon("Chimchar", 1, "Fuego", 6.2, 127, 113, 1, 1,
        "Su pelaje es de un color naranja pálido. Posee una llama en su cola que es producida quemándose el gas en su estómago; ésta no se apaga en la lluvia, aunque sí cuando va a dormir. Su voz recuerda a una cría de mono araña."),
    Senamon("Fennekin", 1, "Fuego", 9.4, 100, 85, 1, 1,
        "A este le encanta mordisquear ramitas y le emana un aire abrasador por las orejas. Puede que Fennekin sea de carácter serio, pero siempre hace todo lo posible por su entrenador."),

    //Agua
    Senamon("Squirtle", 1, "Agua", 9.0, 127, 94, 1, 1,
        "Squirtle es una de las especies más difíciles de encontrar. Habita tanto aguas dulces como marinas, preferiblemente zonas bastante profundas. Son pequeñas tortugas color celeste con caparazones color café; o rojas en algunos casos, con una cola enrollada que los distingue"),
    Senamon("Totodile", 1, "Agua", 9.5, 100, 117, 1, 1,
        "Totodile es un Senamon extremadamente arriesgado y un poco alocado. Pero a pesar de ser tan agitado y muy curioso, este Pokémon es muy fuerte, y llega a hacer ataques de gran daño, aun asi puede llegar a ser muy cariñoso."),
    Senamon("Mudkip", 1, "Agua", 7.6, 100, 126, 1, 1,
        "La cresta en la cabeza de Mudkip actúa como un radar altamente sensible. Esto le permite sentir los movimientos del agua y el aire, con lo que puede determinar qué es lo que ocurre a su alrededor sin usar sus ojos."),
    Senamon("Piplup", 1, "Agua", 5.2, 142, 112, 1, 1,
        "Piplup está basado en una cría de pingüino emperador. Sus colores son un celeste y azul intenso y tiene dos botones blancos colocados en su vientre. Este aspecto parece indicar que tiene influencia de un pingüino azul."),
    Senamon("Froakie", 1, "Agua", 7.0, 100, 85, 1, 1,
        "Las burbujas que tiene en el pecho y en la espalda le protegen de los ataques rivales. Froakie es tan ligero como fuerte y puede saltar muy alto. A veces parece que siempre está distraído, pero, en realidad, vigila con mucha atención a todo lo que le rodea."),

    //Hierba
    Senamon("Bulbasur", 1, "Hierba", 6.9, 128, 118, 1, 1,
        "Bulbasaur es un Pokémon cuadrúpedo de color verde y manchas más oscuras de formas geométricas. Su cabeza representa cerca de un tercio de su cuerpo. En su frente se ubican tres manchas que pueden cambiar dependiendo del ejemplar."),
    Senamon("Chikotita", 1, "Hierba", 6.4, 90, 92, 1, 1,
        "ste dócil Pokémon hoja, de color verde claro, se alimenta con rayos solares mediante la fotosíntesis que ocurre cuando éstos impactan en su cuerpo o en su hoja. Esta hoja tiene propósitos múltiples: sirve tanto para detectar la temperatura en la atmósfera y la humedad"),
    Senamon("Treecko", 1, "Hierba", 5.0, 80, 124, 1, 1,
        "Treecko está basado en un geco cola de hoja. Tiene unos ganchos pequeños en las plantas de los pies con los que puede escalar superficies verticales, se dice que incluso pueden caminar sobre vidrio."),
    Senamon("Turtwig", 1, "Hierba", 10.2, 146, 119, 1, 1,
        "urtwig tiene un aspecto similar al de una tortuga bebé, sólo se ve diferenciado de estas por el hecho de que en su cabeza crece un tallo con una rama y de esta salen dos hojas y al hecho de que su caparazón esta constituido completamente de tierra"),
    Senamon("Snivy", 1, "Hierba", 8.1, 100, 85, 1, 1,
        "Snivy está basado en una serpiente, aunque por su aspecto y pérdida de las extremidades conforme evoluciona se puede deducir que está basado en algún tipo de escíncido o serpientes Uromacer Oxyrhynchus. Su cuerpo es predominantemente de color verde"),

    //Volador
    Senamon("Pidgey", 1, "Volador", 1.8, 120, 85, 1, 1,
        "Pidgey es un ave Pokémon de color marrón y crema, y con un pequeño pico y patas fuertes. Su aspecto y colores se asemejan al de un ampelis americano"),
    Senamon("Spearow", 1, "Volador", 2.0, 120, 112, 1, 1,
        "Spearow es más pequeño que Fearow y tiene una forma más parecida a la de un halcón. Su pico es pequeño, el cual usa para atrapar a sus presas"),
    Senamon("Taillow", 1, "Volador", 2.3, 80, 106, 1, 1,
        "Taillow se mantiene firme ante sus rivales, sin importar lo fuerte que sean, pero, como tenga hambre, pierde determinación"),
    Senamon("Starly", 1, "Volador", 2.0, 120, 101, 1, 1,
        "Los Starly siempre viajan en grandes bandadas. Aunque son pequeños, agitan las alas con gran fuerza."),
    Senamon("Pidove", 1, "Volador", 2.1, 100, 85, 1, 1,
        "Está basado en una paloma. Tiene un diseño de un corazón en la cara encima de su pico y en su abdomen"),

    //Eléctrico
    Senamon("Pikachu", 1, "Electrico", 6.0, 111, 112, 1, 1,
        "Pikachu almacena una gran cantidad de electricidad en sus mejillas. Estas parecen cargarse eléctricamente durante la noche mientras duerme. Las mejillas de Pikachu también pueden ser recargadas mediante una descarga eléctrica"),
    Senamon("Mareep", 1, "Electrico", 7.8, 110, 114, 1, 1,
        "Mareep está basado en una oveja. Este Pokémon tiene una gran capa de lana que almacena electricidad"),
    Senamon("Elekid", 1, "Electrico", 23.5, 90, 135, 1, 1,
        "Es un Pokémon bebé, pero es muy fuerte, muy resistente y nada tierno. Este Pokémon vive en bosques, selvas, y más frecuentemente en centrales eléctricas. Le gustan las frutas amargas y su pequeño hobby es alimentarse de electricidad"),
    Senamon("Shinx", 1, "Electrico", 9.5, 128, 117, 1, 1,
        "Shinx es un Pokémon que se asemeja a una cría de león o lince. Compartiendo muchas caracteristas con el tigre, como el gusto por el agua y la vision nocturna, entre otras. Los Shinx suelen ser muy competitivos, de ahí su habilidad, rivalidad"),
    Senamon("Emolga", 1, "Electrico", 5.0, 100, 85, 1, 1,
        "molga es un Pokémon parecido a un roedor, su coloración es blanca y su espalda negra grisácea , su apariencia es igual a la de una ardilla voladora. Posee rasgos faciales similares a Pachirisu, como sus ojos, la nariz pequeña, y sus mejillas amarillas"),
  ];
  List<Senamon> senamonesElegidos = [];
  List<Entrenador> entrenadores = [];

  print("*" * 100);
  print("BIENVENIDO AL SUPER MUNDO SENAMON");
  print("*" * 100);
  print("CREACIÓN DE LOS ENTRENADORES");
  for (var i = 0; i < 2; i++) {
    print("Ingrese el nombre del entrenador #${i + 1}");
    String nombre = stdin.readLineSync()!;
    print("Ingrese el email de $nombre");
    String email = stdin.readLineSync()!;
    print("Ingrese la fecha de nacimiento de $nombre (aaaa-mm-dd)");
    DateTime fechaNacimiento = DateTime.parse(stdin.readLineSync()!);
    Entrenador entrenador = Entrenador(nombre, email, fechaNacimiento, 400, 0,
        List.from(universoSenamon), List.from(senamonesElegidos));
    //El entrenador elige el senamon
    print("*" * 100);
    print("Eleccion de senamones");
    for (var i = 0; i < 5; i++) {
      print("*" * 100);
      print("Ingrese el tipo de senamon que desea elegir");
      for (var j = 0; j < tiposSenamones.length; j++) {
        print("${j + 1}. ${tiposSenamones[j]}");
      }

      int pocisionTipo = validarPocision(tiposSenamones);

      print("*" * 100);
      print("Ingrese el número del senamon que desea elegir");
      for (var j = 0; j < entrenador.universoSenamon.length; j++) {
        if (tiposSenamones[pocisionTipo - 1] ==
            entrenador.universoSenamon[j].tipoSenamon) {
          print("${j + 1}. ${entrenador.universoSenamon[j].nombre}");
        }
      }

      int pocisionSenamon = validarPocision(entrenador.universoSenamon);
      
      entrenador.senamonesElegidos
          .add(entrenador.universoSenamon[pocisionSenamon - 1]);
      entrenador.universoSenamon.removeAt(pocisionSenamon - 1);
      print("*" * 100);
    }
    entrenadores.add(entrenador);
  }

  int opcion;
  do {
    print("""
  -------------------------------------
          MENÚ PRINCIPAL

  1. Ver información de los entrenadores
  2. Reemplazar Senamones
  3. Ver información Senamones
  4. Entrenar Senamones
  5. Crear Senamones
  6. Batalla
  7. salir
  --------------------------------------
  """);

    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        informacionEntrenador(entrenadores);
        break;

      case 2:
        reemplazarSenamones(entrenadores);
        break;

      case 3:
        mostrarInfoSenamones(entrenadores);
        break;

      case 4:
        entrenarSenamones(entrenadores);
        break;

      case 5:
        crearSenamones(entrenadores, tiposSenamones);
        break;

      case 6:
        batalla(entrenadores);
        break;
    }
  } while (opcion != 7);
}

int validarPocision(List<dynamic> lista) {
  int posicion;
  posicion = int.parse(stdin.readLineSync()!);
  do {
    if (posicion < 1 || posicion > lista.length) {
      print("Ingrese un valor entre 1 y ${lista.length}");
      posicion = int.parse(stdin.readLineSync()!);
    }
  } while (posicion < 1 || posicion > lista.length);
  return posicion;
}

int validarRango(int maximo, int minimo) {
  int numero = int.parse(stdin.readLineSync()!);
  do {
    if (numero < minimo || numero > maximo) {
      print("Ingrese una opción entre $minimo y $maximo");
      numero = int.parse(stdin.readLineSync()!);
    }
  } while (numero < minimo || numero > maximo);
  return numero;
}

void informacionEntrenador(List<Entrenador> entrenadores) {
  print("Ingrese el entrenador que desea ver su información");
  for (var i = 0; i < entrenadores.length; i++) {
    print("${i + 1}. ${entrenadores[i].nombre}");
  }
  int pocisionEntrenador = validarPocision(entrenadores);
  entrenadores[pocisionEntrenador - 1].mostrarInfo();
}

void reemplazarSenamones(List<Entrenador> entrenadores) {
  print("Ingrese el entrenador que desea reemplazar el senamon");
  for (var i = 0; i < entrenadores.length; i++) {
    print("${i + 1}. ${entrenadores[i].nombre}");
  }
  int pocisionEntrenador = validarPocision(entrenadores);
  entrenadores[pocisionEntrenador - 1].reemplazarSenamones();
}

void mostrarInfoSenamones(List<Entrenador> entrenadores) {
  print("Ingrese el entrenador que desea ver los senamones");
  for (var i = 0; i < entrenadores.length; i++) {
    print("${i + 1}. ${entrenadores[i].nombre}");
  }
  int pocisionEntrenador = validarPocision(entrenadores);
  print("""
*************************
1. Ver Senamones elegidos
2. Ver Senamones no elegidos
""");
  int opcion = validarRango(2, 1);
  switch (opcion) {
    case 1:
      entrenadores[pocisionEntrenador - 1].verSenamonesElegidos();
      break;

    case 2:
      entrenadores[pocisionEntrenador - 1].verSenamonesNoElegidos();
      break;
  }
}

void entrenarSenamones(List<Entrenador> entrenadores) {
  print("Ingrese el entrenador que desea entrenar el senamon");
  for (var i = 0; i < entrenadores.length; i++) {
    print("${i + 1}. ${entrenadores[i].nombre}");
  }
  int pocisionEntrenador = validarPocision(entrenadores);
  if (entrenadores[pocisionEntrenador - 1].nivelExperiencia >= 200) {
    for (var i = 0;
        i < entrenadores[pocisionEntrenador - 1].senamonesElegidos.length;
        i++) {
      print(
          "${i + 1}- ${entrenadores[pocisionEntrenador - 1].senamonesElegidos[i].nombre}");
    }
    print("Ingrese el senamon que desea entrenar");
    int pocisionSenamon =
        validarPocision(entrenadores[pocisionEntrenador - 1].senamonesElegidos);
    entrenadores[pocisionEntrenador - 1].entrenarSenamon(pocisionSenamon);
  } else {
    print("No tiene experiencia suficiente para entrenar un Senamon");
  }
}

void crearSenamones(List<Entrenador> entrenadores, List<String> tipoSenamones) {
  print("Ingrese el entrenador que desea crear el senamon");
  for (var i = 0; i < entrenadores.length; i++) {
    print("${i + 1}. ${entrenadores[i].nombre}");
  }
  int pocisionEntrenador = validarPocision(entrenadores);
  print("CREACIÓN DE UN SENAMON");
  print("Ingrese el nombre del Senamon");
  String nombre = stdin.readLineSync()!;
  print("Ingrese el número del tipo de Senamon que desea mostrar");
  for (var i = 0; i < tipoSenamones.length; i++) {
    print("${i + 1}. ${tipoSenamones[i]}");
  }
  String tipoSenamon = tipoSenamones[validarPocision(tipoSenamones) - 1];
  print("Ingrese el peso del senamon");
  double pesoSenamon = double.parse(stdin.readLineSync()!);
  print(
      "Puede poner en total de vida y ataque 350 puntos, distribuyalos como desee");
  int puntos = 350, salud = 0, ataque = 0;
  print("Puntos: $puntos");
  print(
      "Ingrese la cantidad de puntos que desea agregar a la salud del Senamon");
  salud += validarRango(puntos, 1);
  puntos -= salud;
  print(
      "Ingrese la cantidad de puntos que desea agregar al ataque del Senamon");
  ataque += validarRango(puntos, 1);
  puntos -= ataque;
  print("Ingrese la descripción del Senamon");
  String descripcionSenamon = stdin.readLineSync()!;
  Senamon senamon = Senamon(nombre, 1, tipoSenamon, pesoSenamon, salud, ataque,
      1, 1, descripcionSenamon);
  entrenadores[pocisionEntrenador - 1].universoSenamon.add(senamon);
  print("*" * 100);
  print("Este fue el senamon creado:");
  senamon.mostrarInfo();
}

void batalla(List<Entrenador> entrenadores) {
  Batalla batalla = Batalla(0, entrenadores, [], []);
  batalla.lanzarMoneda();
  batalla.asignarSenamonesElegidos();
  batalla.elegirSenamones();
  bool derrotado = false;
  while (true) {
    print("*" * 100);
    if (derrotado) {
      batalla.cambiarSenamon();
    }
    print(
        "Turno entrenador: ${entrenadores[batalla.getNumeroEntrenador()].nombre}");
    print("Presione cualquier tecla y enter para atacar");
    stdin.readLineSync()!;
    batalla.atacar();
    derrotado = batalla.validarDerrota();
    if (derrotado) {
      if (batalla.validarFinalizacion()) {
        break;
      }
    }
    batalla.cambiarTurno();
  }
}
