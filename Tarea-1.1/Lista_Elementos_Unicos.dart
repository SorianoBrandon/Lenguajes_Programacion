void main() {
    final lista = [1, 1, 2, 3, 4, 5, 1, 6, 7, 3, 8, 8];
    final listaR = distinct(lista);
    print(lista);
    print(listaR);
}

List<int> distinct(List<int> lista) {
    int it = 0;
    final List<int> listaR = [];
  
    for(int i = 0; i < lista.length; i++) {
        it=0;
        for(int j = i; j < lista.length; j++) {
          
            if(lista[i] == lista[j]) {
                it++;
            }
          
        }
        if(it > 1) {
            if(!listaR.contains(lista[i])) {
                listaR.add(lista[i]);
            }
        }
    }
    return listaR;
}
