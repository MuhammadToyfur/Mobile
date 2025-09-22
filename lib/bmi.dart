import 'dart:io';

/// Program menghitung BMI (Body Mass Index)
/// Input: berat badan (kg), tinggi badan (cm)
/// Output: nilai BMI dan kategori berat badan
void main() {
  // Meminta input berat badan dalam kilogram
  stdout.write('Masukkan berat badan (kg): ');
  final String? inputBerat = stdin.readLineSync();
  final double berat = double.tryParse(inputBerat ?? '') ?? 0;

  // Meminta input tinggi badan dalam sentimeter
  stdout.write('Masukkan tinggi badan (cm): ');
  final String? inputTinggi = stdin.readLineSync();
  final double tinggiCm = double.tryParse(inputTinggi ?? '') ?? 0;

  // Validasi input agar tidak nol atau negatif
  if (berat <= 0 || tinggiCm <= 0) {
    print('Input tidak valid. Berat dan tinggi harus lebih dari 0.');
    return;
  }

  // Konversi tinggi dari cm ke meter
  final double tinggiM = tinggiCm / 100;

  // Hitung BMI dengan rumus standar
  final double bmi = berat / (tinggiM * tinggiM);

  // Tampilkan hasil BMI dengan 2 angka di belakang koma
  print('BMI Anda adalah: ${bmi.toStringAsFixed(2)}');

  // Tentukan kategori berdasarkan nilai BMI
  if (bmi < 18.5) {
    print('Kategori: Kekurangan berat badan');
  } else if (bmi >= 18.5 && bmi < 25) {
    print('Kategori: Normal (ideal)');
  } else if (bmi >= 25 && bmi < 30) {
    print('Kategori: Kelebihan berat badan');
  } else {
    print('Kategori: Obesitas');
  }
}
