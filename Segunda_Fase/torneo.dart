import 'dart:io';
import 'Batalla.dart';
import 'Senamon.dart';
import 'Entrenador.dart';

void inicializarTorneo() {
  List<Entrenador> entrenadores = [
    Entrenador('Red', 'red@palettotown.com', DateTime(1985, 3, 22), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Blue', 'blue@palettotown.com', DateTime(1985, 6, 9), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Silver', 'silver@johto.com', DateTime(1990, 11, 3), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Leaf', 'leaf@palettotown.com', DateTime(1986, 12, 5), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Brendan', 'brendan@hoenn.com', DateTime(1991, 4, 16), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Lucas', 'lucas@sinnoh.com', DateTime(1993, 7, 23), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Hilda', 'hilda@unova.com', DateTime(1994, 10, 8), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Hilbert', 'hilbert@unova.com', DateTime(1994, 11, 18), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Nate', 'nate@unova.com', DateTime(1997, 2, 14), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Rosa', 'rosa@unova.com', DateTime(1997, 9, 1), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Calem', 'calem@kalos.com', DateTime(1995, 12, 20), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Elio', 'elio@alola.com', DateTime(1998, 6, 5), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Selene', 'selene@alola.com', DateTime(1998, 8, 30), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Gloria', 'gloria@galar.com', DateTime(2001, 1, 18), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Victor', 'victor@galar.com', DateTime(2001, 3, 12), 0, 0,
        getUniversoSenamon(), []),
    Entrenador('Marnie', 'marnie@galar.com', DateTime(2000, 4, 7), 0, 0,
        getUniversoSenamon(), []),
  ];

  List<Entrenador> entrenadoresRegistrados =
      registrarEntrenadores(entrenadores);
  List<List<Entrenador>> entrenadoresTorneo =
      asignarRondas(entrenadoresRegistrados);

  torneo(entrenadoresRegistrados, entrenadoresTorneo);
}

List<Senamon> getUniversoSenamon() {
  return [
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
}

List<Entrenador> registrarEntrenadores(List<Entrenador> entrenadores) {
  List<Entrenador> entrenadoresRegistrados = [];
  int opcion;
  do {
    print("""
  ---------------------------------
      Registrar entrenadores
  ---------------------------------
  1. Crear nuevo entrenador
  2. Registrar entrenadores
  3. Iniciar torneo
  ---------------------------------
  """);
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        crearEntrenador(entrenadores);
        break;

      case 2:
        ingresarEntrenador(entrenadores, entrenadoresRegistrados);
        break;

      case 3:
        if (!iniciarTorneo(entrenadoresRegistrados)) {
          print(
              "No se puede iniciar el torneo aún, no es la cantidad adecuada de entrenadores");
          opcion = 2;
        }
    }
  } while (opcion != 3);

  return entrenadoresRegistrados;
}

void crearEntrenador(List<Entrenador> entrenadores) {
  print("""
-----------------------------
    CREAR ENTRENADOR
-----------------------------
""");
  print("Ingrese el nombre del entrenador");
  String nombre = stdin.readLineSync()!;
  print("Ingrese el email de $nombre");
  String email = stdin.readLineSync()!;
  print("Ingrese la fecha de nacimiento de $nombre (aaaa-mm-dd)");
  DateTime fechaNacimiento = DateTime.parse(stdin.readLineSync()!);

  Entrenador entrenador = Entrenador(
      nombre, email, fechaNacimiento, 0, 0, getUniversoSenamon(), []);

  print("El entrenador $nombre ha sido creado");

  entrenadores.add(entrenador);
}
/*************************************** */

void ingresarEntrenador(
    List<Entrenador> entrenadores, List<Entrenador> entrenadoresRegistrados) {
  int opcion;
  do {
    print("""
  ---------------------------------
  1. Ingresar un entrenador
  2. Salir
  ---------------------------------
  """);
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Lista de entrenadores");
        for (var i = 0; i < entrenadores.length; i++) {
          print("${i + 1}. ${entrenadores[i].nombre}");
        }
        print("Ingrese el entrenador que desea registrar a la batalla");
        int pocisionEntrenador = validarPocision(entrenadores) - 1;
        print("Antes de registrarlo necesita elegir sus senamones");
        elegirSenamon(entrenadores[pocisionEntrenador]);
        entrenadoresRegistrados.add(entrenadores[pocisionEntrenador]);
        entrenadores.removeAt(pocisionEntrenador);
        print("\nEntrenadores registrados hasta el momento:");
        for (var entrenador in entrenadoresRegistrados) {
          print("${entrenador.nombre}");
        }

      case 2:
        break;

      default:
        print("Ingrese una opción correcta");
        break;
    }
  } while (opcion != 2);
}
void elegirSenamon(Entrenador entrenador) {
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j < entrenador.universoSenamon.length; j++) {
      print("${j + 1}. ${entrenador.universoSenamon[j].nombre}");
    }
    print("Ingrese el senamon que desea elegir");
    int pocisionSenamon = validarPocision(entrenador.universoSenamon) - 1;
    entrenador.senamonesElegidos
        .add(entrenador.universoSenamon[pocisionSenamon]);
    entrenador.universoSenamon.removeAt(pocisionSenamon);
  }
}

bool iniciarTorneo(List<Entrenador> entrenadoresRegistrados) {
  List<int> cantidades = [2, 4, 8, 16];
  bool continuar = false;
  for (var i = 0; i < cantidades.length; i++) {
    if (cantidades[i] == entrenadoresRegistrados.length) {
      continuar = true;
    }
  }
  return continuar;
}

List<List<Entrenador>> asignarRondas(List<Entrenador> entrenadoresRegistrados) {
  List<List<Entrenador>> entrenadoresTorneo = [];
  List<Entrenador> entrenadoresRonda = [];
  for (var i = 0; i < entrenadoresRegistrados.length; i++) {
    if (entrenadoresRonda.length == 0 || entrenadoresRonda.length == 1) {
      entrenadoresRonda.add(entrenadoresRegistrados[i]);
    } else {
      entrenadoresTorneo.add(entrenadoresRonda);
      entrenadoresRonda = [entrenadoresRegistrados[i]];
    }
  }
  entrenadoresTorneo.add(entrenadoresRonda);

  return entrenadoresTorneo;
}
/************************************* */
void torneo(List<Entrenador> entrenadoresRegistrados,
    List<List<Entrenador>> entrenadoresTorneo) {
  do {
    mostrarTorneo(entrenadoresTorneo);
    for (var i = 0; i < entrenadoresTorneo.length; i++) {
      print("""
-----------------------------------
        TORNEO #${i + 1}

${entrenadoresTorneo[i][0].nombre} vs ${entrenadoresTorneo[i][1].nombre}
-----------------------------------
""");
      int numEntrenadorPerdedor = batallaTorneo(entrenadoresTorneo[i]);
      String nombrePerdedor =
          entrenadoresTorneo[i][numEntrenadorPerdedor].nombre;
      for (var i = 0; i < entrenadoresRegistrados.length; i++) {
        if (entrenadoresRegistrados[i].nombre == nombrePerdedor) {
          numEntrenadorPerdedor = i;
        }
      }
      entrenadoresRegistrados.removeAt(numEntrenadorPerdedor);
    }
    entrenadoresTorneo = asignarRondas(entrenadoresRegistrados);
  } while (entrenadoresRegistrados.length == 1);
  print("""
--------------------------------
      FIN DEL TORNEO

    GANADOR: ${entrenadoresRegistrados[0].nombre}
--------------------------------
""");
}

int batallaTorneo(List<Entrenador> entrenadores) {
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
        return batalla.validarNumeroEnemigo();
      }
    }
    batalla.cambiarTurno();
  }
}

void mostrarTorneo(List<List<Entrenador>> entrenadoresTorneo) {
  print("Asignación de batallas:");
  for (var i = 0; i < entrenadoresTorneo.length; i++) {
    print(
        "\n${entrenadoresTorneo[i][0].nombre} vs ${entrenadoresTorneo[i][1].nombre}");
  }
}
