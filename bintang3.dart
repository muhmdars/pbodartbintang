// Fungsi untuk menghitung suhu rata-rata dari list suhu
double calculateAverageTemperature(List<double> temperatures) {
  if (temperatures.isEmpty) return 0.0;
  double sum = temperatures.reduce((a, b) => a + b);
  return sum / temperatures.length;
}

// Fungsi utama
void main() {
  // List suhu air di akuarium dalam derajat Celsius
  List<double> temperatures = [24.5, 25.0, 26.5, 23.0, 27.0];
  
  // Menampilkan suhu awal
  print("Suhu air di akuarium: $temperatures");
  
  // Menghitung suhu rata-rata
  double averageTemperature = calculateAverageTemperature(temperatures);
  print("Suhu rata-rata: $averageTemperature°C");
  
  // Batas suhu aman
  double safeThreshold = 25.0;
  
  // Percabangan: Memeriksa apakah suhu rata-rata melebihi batas aman
  if (averageTemperature > safeThreshold) {
    print("Peringatan: Suhu rata-rata melebihi batas aman!");
  } else {
    print("Suhu rata-rata berada dalam batas aman.");
  }
  
  // Perulangan: Menampilkan suhu yang lebih tinggi dari batas aman
  print("Suhu yang lebih tinggi dari $safeThreshold°C:");
  for (double temp in temperatures) {
    if (temp > safeThreshold) {
      print(temp);
    }
  }
  
  // Closure: Membuat fungsi penambah suhu
  Function makeTemperatureAdder(double increment) {
    return (double temp) => temp + increment;
  }
  
  // Menggunakan closure
  var increaseByTwo = makeTemperatureAdder(2.0);
  print("Suhu 24.5°C setelah ditambah 2°C: ${increaseByTwo(24.5)}°C");  // Output: 26.5°C
  
  var increaseByThree = makeTemperatureAdder(3.0);
  print("Suhu 24.5°C setelah ditambah 3°C: ${increaseByThree(24.5)}°C");  // Output: 27.5°C
}