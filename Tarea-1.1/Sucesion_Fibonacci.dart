void main(){
    print("----------------- PRIMEROS 15 NUMEROS SUCESION DE FIBONACCI -----------------");
    for (int i = -1; i < 13; i++) {
        print(fibonacci(i));
    }
}

int fibonacci(int n){
    if(n<=1){
      if(n==1){
        print(n);
        return n + 1;
      }else{
        return n+1;
      }
    }else{
      return (n+(n-1));
    }
}