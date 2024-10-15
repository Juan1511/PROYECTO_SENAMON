import 'dart:io';

import 'Senamon.dart';

class Entrenador {
  String nombre;
  String email;
  DateTime fechaNacimiento;
  int nivelExperiencia;
  int cantVictorias;
  List<Senamon> universoSenamon = [];
  List<Senamon> senamonesElegidos = [];

  Entrenador(this.nombre, this.email, this.fechaNacimiento, this.nivelExperiencia, this.cantVictorias, this.universoSenamon, this.senamonesElegidos);

  void mostrarInfo(){
    print("""
***************************************
nombre: $nombre
email: $email
fecha de nacimiento: $fechaNacimiento
nivel de experiencia: $nivelExperiencia
cantidad de victorias: $cantVictorias
***************************************
""");
  }

  void reemplazarSenamones(){
    print("Senamones elegidos");
    this.mostrarSenamones(senamonesElegidos);
    print("Ingrese el número del senamon que desea reemplazar");
    int pocisionSenamonElegido = validarPocision(senamonesElegidos);
    print("Senamones no elegidos");
    this.mostrarSenamones(universoSenamon);
    int pocisionSenamonGlobal = validarPocision(universoSenamon);
    senamonesElegidos.add(universoSenamon[pocisionSenamonGlobal - 1]);
    universoSenamon.removeAt(pocisionSenamonGlobal - 1);
    universoSenamon.add(senamonesElegidos[pocisionSenamonElegido - 1]);
    senamonesElegidos.removeAt(pocisionSenamonElegido - 1);
    print("Tu lista nueva es:");
    for (var i = 0; i < senamonesElegidos.length; i++) {
      print("- ${senamonesElegidos[i].nombre}");
    }
  }

  void verSenamonesElegidos(){
    int opcion;
    do {
    this.mostrarSenamones(senamonesElegidos);
    print("Ingrese el senamon que desea ver su información");
    int pocisionSenamon = validarPocision(senamonesElegidos);
    senamonesElegidos[pocisionSenamon - 1].mostrarInfo();
    print("1. Ver otro Senamon elegido");
    print("2. volver al menú principal");
    opcion = validarRango(2, 1);
    } while (opcion != 2);
  }

  void verSenamonesNoElegidos(){
    int opcion;
    do {
    this.mostrarSenamones(universoSenamon);
    print("Ingrese el senamon que desea ver su información");
    int pocisionSenamon = validarPocision(universoSenamon);
    universoSenamon[pocisionSenamon - 1].mostrarInfo();
    print("1. Ver otro Senamon no elegido");
    print("2. volver al menú principal");
    opcion = validarRango(2, 1);
    } while (opcion != 2);
  }

  void entrenarSenamon(int pocisionSenamon){
    senamonesElegidos[pocisionSenamon - 1].subirNivel();
    nivelExperiencia-=200;
    print("El senamon quedó con las siguientes características:");
    senamonesElegidos[pocisionSenamon - 1].mostrarInfo();
    print("El entrenador quedó con una experiencia de: $nivelExperiencia");
  }

  void mostrarSenamones(List<Senamon> senamones){
    for (var i = 0; i < senamones.length; i++) {
      print("${i + 1}. ${senamones[i].nombre}");
    }
  }
}

int validarPocision(List<dynamic> lista){
  int opcion;
  opcion = int.parse(stdin.readLineSync()!);
  do {
    if (opcion < 1 || opcion > lista.length) {
      print("Ingrese un valor entre 1 y ${lista.length}");
      opcion = int.parse(stdin.readLineSync()!);
    }
  } while (opcion < 1 || opcion > lista.length);
  return opcion;
}

int validarRango(int maximo, int minimo){
  int opcion = int.parse(stdin.readLineSync()!);
  do {
    if (opcion < minimo || opcion > maximo) {
      print("Ingrese una opción entre $minimo y $maximo");
      opcion = int.parse(stdin.readLineSync()!);
    }
  } while (opcion < minimo || opcion > maximo);
  return opcion;
}