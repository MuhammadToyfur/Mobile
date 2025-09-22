import 'dart:io';
import 'dart:math';

void main() {
  print("=== GAME TEBAK ANGKA SEDERHANA ===");

  bool lanjutMain = true;
  int totalMain = 0;
  int totalMenang = 0;

  while (lanjutMain) {
    totalMain++;
    print("\nPermainan ke-$totalMain");

    // Pilih level dan tentukan batas angka
    int maxAngka = pilihLevel();

    // Jumlah kesempatan berdasarkan level
    int kesempatan = (maxAngka ~/ 10) + 3;

    // Mulai permainan
    bool berhasil = mulaiGame(maxAngka, kesempatan);

    if (berhasil) {
      totalMenang++;
    }

    // Statistik sementara
    print("Skor sementara: $totalMenang menang dari $totalMain permainan");

    // Tanya main lagi
    stdout.write("Mau main lagi? (y/n): ");
    String? jawab = stdin.readLineSync();
    if (jawab == null || jawab.toLowerCase() != 'y') {
      lanjutMain = false;
    }
  }

  print("\nTerima kasih sudah bermain!");
}

// Fungsi untuk memilih level
int pilihLevel() {
  int level = 0;
  while (level < 1 || level > 3) {
    print("\nPilih level:");
    print("1. Mudah (1–20)");
    print("2. Sedang (1–50)");
    print("3. Sulit (1–75)");
    stdout.write("Level (1-3): ");
    String? input = stdin.readLineSync();
    level = int.tryParse(input ?? '') ?? 0;
  }

  if (level == 1) return 20;
  if (level == 2) return 50;
  return 75;
}

// Fungsi utama game
bool mulaiGame(int maxAngka, int kesempatan) {
  Random rand = Random();
  int target = rand.nextInt(maxAngka) + 1;
  int percobaan = 0;

  print("\nSaya sudah pilih angka 1–$maxAngka. Coba tebak!");

  while (percobaan < kesempatan) {
    percobaan++;
    stdout.write("Tebakan ke-$percobaan: ");
    String? input = stdin.readLineSync();
    int? tebakan = int.tryParse(input ?? '');

    // Validasi input
    if (tebakan == null) {
      print(" Masukkan angka yang valid!");
      percobaan--; // tidak dihitung jika salah input
      continue;
    }

    // Cek tebakan
    if (tebakan == target) {
      print("Benar! Angkanya $target.");
      return true;
    } else if (tebakan < target) {
      print("⬇ Terlalu kecil");
    } else {
      print("⬆ Terlalu besar");
    }
  }

  print("Kesempatan habis. Angka yang benar: $target");
  return false;
}
