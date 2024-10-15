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
    senamonEnemigo.puntosSalud -= nivelAtaque;
    if (senamonEnemigo.puntosSalud < 0) {
      senamonEnemigo.puntosSalud = 0;
    }
    print("Su senamon $nombre ha quitado un total de $nivelAtaque puntos de ataque, dejando al senamon enemigo ${senamonEnemigo.nombre} con una salud de ${senamonEnemigo.puntosSalud}");
  }
}