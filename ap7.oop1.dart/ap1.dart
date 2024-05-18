
void main(){

  ContaBancaria contaBancaria = ContaBancaria('Luan', 1000);
  contaBancaria.depositar(100);
  contaBancaria.sacar(300);
  print(contaBancaria.toString());
}

class ContaBancaria{
 final String titular;
 double saldo;


  ContaBancaria(this.titular,this.saldo);

  depositar(double valorD){
       saldo += valorD;
  }

    sacar(double valorD){
       saldo -= valorD;
  }

  @override
  String toString() {
    
    return 'Saldo Atual : $saldo';
  }
}