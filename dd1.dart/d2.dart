void main(){
  List<double> raios = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for(double raio in raios){
   
    double kelvin = raio + 273.15;
    double celsius = (raio / 100) * 100;
    double fahrenheit = ((9 *celsius) / 5)  + 32;

    print("Celsius: ${celsius.toStringAsFixed(2)}; Fahrenheit: ${fahrenheit.toStringAsFixed(2)}, kelvin: ${kelvin.toStringAsFixed(2)}");
  }
}

