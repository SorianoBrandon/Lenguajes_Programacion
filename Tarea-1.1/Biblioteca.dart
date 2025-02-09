void main() {
  Biblioteca biblio = Biblioteca();

  biblio.aniadir(Libro("Rayuela", "Julio Cortazar", 1963));
  biblio.aniadir(Libro("La ciudad y los perros", "Mario Vargas Llosa", 1962));
  biblio.aniadir(Libro("El amor en los tiempos del colera", "Gabriel Garcia Marquez", 1985));

  biblio.ver();

  print("\nBuscando libros de 'Julio Cortazar':");
  print(biblio.buscar("Julio Cortazar"));

  print("\nLibros ordenados por anio:");
  print(biblio.ordenar());

  biblio.quitar("La ciudad y los perros");

  print("\nDespues de quitar 'La ciudad y los perros':");
  biblio.ver();
}

class Libro {
  String titulo;
  String autor;
  int anio;

  Libro(this.titulo, this.autor, this.anio);

  String toString() {
    return '"$titulo" de $autor ($anio)';
  }
}

class Biblioteca {
  List<Libro> libros = [];

  void aniadir(Libro libro) {
    libros.add(libro);
    print('Aniadido: ${libro.titulo}');
  }

  void quitar(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
    print('Quitado: $titulo');
  }

  List<Libro> buscar(String autor) {
    return libros
        .where((libro) => libro.autor.toLowerCase() == autor.toLowerCase())
        .toList();
  }

  List<Libro> ordenar() {
    List<Libro> ordenados = List.from(libros);
    ordenados.sort((a, b) => a.anio.compareTo(b.anio));
    return ordenados;
  }

  void ver() {
    if (libros.isEmpty) {
      print('Vacia.');
    } else {
      print('Libros:');
      for (var libro in libros) {
        print(libro);
      }
    }
  }
}
