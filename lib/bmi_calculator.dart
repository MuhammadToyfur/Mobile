import 'dart:io';
import 'dart:math';

void main() {
  List<Map<String, dynamic>> riwayat = []; // fitur 4: menyimpan riwayat

  while (true) {
    // === FITUR 1: INPUT DATA ===
    stdout.write("Masukkan tinggi badan (cm): ");
    double? tinggi = double.tryParse(stdin.readLineSync() ?? "");
    stdout.write("Masukkan berat badan (kg): ");
    double? berat = double.tryParse(stdin.readLineSync() ?? "");

    // === FITUR 2: VALIDASI INPUT ===
    if (tinggi == null || berat == null || tinggi <= 0 || berat <= 0) {
      print("⚠️ Input tidak valid, coba lagi.\n");
      continue;
    }

    // === FITUR 3: PERHITUNGAN BMI ===
    double bmi = berat / pow(tinggi / 100, 2);
    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi < 25) {
      kategori = "Normal";
    } else if (bmi < 30) {
      kategori = "Gemuk";
    } else {
      kategori = "Obesitas";
    }

    print("\nHasil BMI: ${bmi.toStringAsFixed(2)} ($kategori)\n");

    // Simpan ke riwayat
    riwayat.add({'tinggi': tinggi, 'berat': berat, 'bmi': bmi, 'kategori': kategori});

    // Tanya lanjut atau tidak
    stdout.write("Hitung lagi? (y/n): ");
    if ((stdin.readLineSync() ?? "").toLowerCase() != "y") break;
  }

  // === FITUR 4: RIWAYAT HASIL ===
  print("\nRiwayat Perhitungan BMI:");
  for (int i = 0; i < riwayat.length; i++) {
    var d = riwayat[i];
    print("${i + 1}. Tinggi: ${d['tinggi']} cm, Berat: ${d['berat']} kg, "
          "BMI: ${d['bmi'].toStringAsFixed(2)} (${d['kategori']})");
  }
}
