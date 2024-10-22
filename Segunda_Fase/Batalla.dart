import 'dart:math';
import 'Entrenador.dart';
import 'Senamon.dart';

class Batalla {
  int _numEntrenador;
  List<Entrenador> _entrenadores;
  List<Senamon> _senamonesBatalla;
  List<List<Senamon>> _senamonesElegidos;

  Batalla(this._numEntrenador, this._entrenadores, this._senamonesBatalla, this._senamonesElegidos);

  void asignarSenamonesElegidos(){
    for (var i = 0; i < 2; i++) {
      List<Senamon> senamones = [];
      for (var j = 0; j < _entrenadores[i].senamonesElegidos.length; j++) {
      
      String nombre = _entrenadores[i].senamonesElegidos[j].nombre;
      int nivel = _entrenadores[i].senamonesElegidos[j].nivel;
      String tipoSenamon = _entrenadores[i].senamonesElegidos[j].tipoSenamon;
      double peso = _entrenadores[i].senamonesElegidos[j].peso;
      int puntosSalud = _entrenadores[i].senamonesElegidos[j].puntosSalud;
      int nivelAtaque = _entrenadores[i].senamonesElegidos[j].nivelAtaque;
      int fase = _entrenadores[i].senamonesElegidos[j].fase;
      int nivelEnergia = _entrenadores[i].senamonesElegidos[j].nivelEnergia;
      String descripcion = _entrenadores[i].senamonesElegidos[j].descripcion;

      senamones.add(Senamon(nombre, nivel, tipoSenamon, peso, puntosSalud, nivelAtaque, fase, nivelEnergia, descripcion));
      }
      _senamonesElegidos.add(senamones);
      senamones = [];
    }
  }
  
  void lanzarMoneda(){
    print("Se va a lanzar una moneda: ${_entrenadores[0].nombre} es cara y ${_entrenadores[1].nombre} es sello");
    Random random = Random(); //se inicializa el objeto random
    _numEntrenador = random.nextInt(2);
    if (_numEntrenador == 0) {
      print("Ha salido cara");
    }else{
      print("Ha salido sello");
    }
  }


  void elegirSenamones(){
    for (var i = 0; i < 2; i++) {
      print("SENAMONES EN BATALLA");
      print("Entrenador: ${_entrenadores[i].nombre}");
      _entrenadores[i].mostrarSenamones(_senamonesElegidos[i]);
      print("Ingrese el senamon que desa seleccionar para la batalla");
      int posicionSenamon = validarPocision(_entrenadores[i].senamonesElegidos) - 1;
      _senamonesBatalla.add(_senamonesElegidos[i][posicionSenamon]);
    }
  }

  void atacar(){
    _senamonesBatalla[_numEntrenador].atacar(_senamonesBatalla[validarNumeroEnemigo()]);
  }

  int validarNumeroEnemigo(){
    int numEnemigo;
    if (_numEntrenador == 0) {
      numEnemigo = 1;
    }else{
      numEnemigo = 0;
    }
    return numEnemigo;
  }

  int getNumeroEntrenador(){
    return _numEntrenador;
  }

  void cambiarTurno(){
    if (_numEntrenador == 0) {
      _numEntrenador = 1;
    }else{
      _numEntrenador = 0;
    }
  }

  bool validarDerrota(){
    if (_senamonesBatalla[validarNumeroEnemigo()].puntosSalud == 0) {
      print("El senamon ${_senamonesBatalla[validarNumeroEnemigo()].nombre} ha sido derrotado");
      for (var i = 0; i < _senamonesElegidos[validarNumeroEnemigo()].length; i++) {
        if (_senamonesElegidos[validarNumeroEnemigo()][i].puntosSalud == 0) {
          _senamonesElegidos[validarNumeroEnemigo()].removeAt(i);
        }
      }
      return true;
    }else{
      return false;
    }
  }

  void cambiarSenamon(){
    do {
      if (_senamonesBatalla[_numEntrenador].puntosSalud == 0) {
        print("Su senamon está derrotado, tiene que cambiarlo");
        elegirSenamon();
      }
    } while (_senamonesBatalla[_numEntrenador].puntosSalud == 0);
  }

  void elegirSenamon(){
    print("SENAMONES EN BATALLA");
    print("Entrenador: ${_entrenadores[_numEntrenador].nombre}");
    _entrenadores[_numEntrenador].mostrarSenamones(_senamonesElegidos[_numEntrenador]);
    print("Ingrese el senamon que desa seleccionar para la batalla");
    int posicionSenamon = validarPocision(_senamonesElegidos[_numEntrenador]);
    _senamonesBatalla[_numEntrenador] = _senamonesElegidos[_numEntrenador][posicionSenamon - 1];
  }

  bool validarFinalizacion(){
    if (_senamonesElegidos[validarNumeroEnemigo()].length == 2) {
      print("""
-------------------------------
    FIN DE LA BATALLA

Ha ganado el entrenador:
  ${_entrenadores[_numEntrenador].nombre}

--------------------------------
""");
      _entrenadores[_numEntrenador].cantVictorias++;
      _entrenadores[_numEntrenador].nivelExperiencia+=100;
      return true;
    }else{
      return false;
    }
  }

}