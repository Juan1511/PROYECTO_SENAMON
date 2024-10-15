class Senamon {
  String nombre;
  int nivel;
  String tipoSenamon;
  double peso;
  int puntosSalud;
  int nivelAtaque;
  int fase;
  int nivelEnergia;
  String descripcion;

  Senamon(this.nombre, this.nivel, this.tipoSenamon, this.peso, this.puntosSalud, this.nivelAtaque, this.fase, this.nivelEnergia, this.descripcion,);

  void mostrarInfo(){
    print("""
----------------------------------
nombre: $nombre
nivel: $nivel
tipo senamon: $tipoSenamon
peso: $peso
Puntos de salud: $puntosSalud
Nivel de ataque: $nivelAtaque
Fase: $fase
nivel de energia: $nivelEnergia
Descripción:
$descripcion
""");
  }

  void subirNivel(){
    puntosSalud += 10;
    nivelAtaque += 10;
    nivel++;
  }

  void atacar(Senamon senamonEnemigo){
    senamonEnemigo.puntosSalud -= (nivelAtaque*getporcentaje(senamonEnemigo)).toInt();
    if (senamonEnemigo.puntosSalud < 0) {
      senamonEnemigo.puntosSalud = 0;
    }
    print("Su senamon $nombre ha quitado un total de ${(nivelAtaque*getporcentaje(senamonEnemigo).toInt())} puntos de ataque, dejando al senamon enemigo ${senamonEnemigo.nombre} con una salud de ${senamonEnemigo.puntosSalud}");
  }

  double getporcentaje(Senamon enemigo){
    List<String> tipoSenamones = ["Fuego", "Agua", "Hierva", "Volador", "Electrico"];
    List<List<String>> tipoAtaques = [
      ["poco efectivo", "poco efectivo", "efectivo", "normal", "super efectivo"],
      ["super efectivo", "poco efectivo", "poco efectivo", "efectivo", "normal"],
      ["normal", "super efectivo", "poco efectivo", "poco efectivo", "efectivo"],
      ["normal", "efectivo", "super efectivo", "poco efectivo", "poco efectivo"],
      ["poco efectivo", "normal", "efectivo", "super efectivo", "poco efectivo"]
    ];
    int pocisionTipoAtaque = 0, pocisionTipoAtaqueEnemigo = 0;
    double porcentaje = 1;
    for (var i = 0; i < tipoSenamones.length; i++) {
      if (tipoSenamones[i] == tipoSenamon) {
        pocisionTipoAtaque = i;
      }
    }
    for (var i = 0; i < tipoSenamones.length; i++) {
      if (tipoSenamones[i] == enemigo.tipoSenamon) {
        pocisionTipoAtaqueEnemigo = i;
      }
    }
    if(tipoAtaques[pocisionTipoAtaque][pocisionTipoAtaqueEnemigo] == "poco efectivo"){
      porcentaje = 1.1;
    }else if(tipoAtaques[pocisionTipoAtaque][pocisionTipoAtaqueEnemigo] == "efectivo"){
      porcentaje = 1.4;
    }else if(tipoAtaques[pocisionTipoAtaque][pocisionTipoAtaqueEnemigo] == "super efectivo"){
      porcentaje = 2;
    }

    return porcentaje;
  }
}
