import 'dart:io';

void main() {
  print('=== APLIKASI DEMO OPERATOR DART (Sederhana) ===\n');

  bool lanjut = true;

  while (lanjut) {
    // Tampilkan menu pilihan
    showMenu();
    String? pilihan = stdin.readLineSync();

    // Gunakan switch-case untuk memilih operator
    switch (pilihan) {
      case '1':
        demoArithmetic();
        break;
      case '2':
        demoIncrementDecrement();
        break;
      case '3':
        demoRelational();
        break;
      case '4':
        demoLogical();
        break;
      case '5':
        demoAssignment();
        break;
      case '6':
        demoNullAware();
        break;
      case '7':
        demoTypeTest();
        break;
      case '8':
        demoConditional();
        break;
      case '9':
        demoBitwise();
        break;
      case '0':
        lanjut = false;
        print("Terima kasih sudah belajar operator Dart!");
        break;
      default:
        print("Pilihan tidak valid.");
    }

    if (lanjut) {
      print("\nTekan Enter untuk lanjut...");
      stdin.readLineSync();
    }
  }
}

// ================= MENU =================
void showMenu() {
  print("\n=== MENU OPERATOR ===");
  print("1. Aritmatika (+, -, *, /, %, ~/)");
  print("2. Increment & Decrement (++ / --)");
  print("3. Relasional (==, !=, >, <, >=, <=)");
  print("4. Logika (&&, ||, !)");
  print("5. Penugasan (=, +=, -=, *=, /=, %=)");
  print("6. Null Aware (??, ??=, ?.)");
  print("7. Type Test (is, is!, as)");
  print("8. Kondisional (?:)");
  print("9. Bitwise (&, |, ^, ~, <<, >>)");
  print("0. Keluar");
  stdout.write("Masukkan pilihan (0-9): ");
}

// ============= 1. ARITMATIKA =============
void demoArithmetic() {
  print("\n Demo Operator Aritmatika");
  double a = 2, b = 46; // contoh angka langsung
  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");
  print("$a % $b = ${a % b}  // Sisa bagi");
  print("$a ~/ $b = ${a ~/ b}  // Bagi bulat");
}

// ========== 2. INCREMENT DECREMENT ==========
void demoIncrementDecrement() {
  print("\n Demo Increment & Decrement");
  int x = 5;
  print("x = $x");
  print("++x = ${++x}  // Pre-increment");
  x = 5;
  print("x++ = ${x++}  // Post-increment, x jadi ${x}");
  x = 5;
  print("--x = ${--x}  // Pre-decrement");
  x = 5;
  print("x-- = ${x--}  // Post-decrement, x jadi ${x}");
}

// ============= 3. RELASIONAL =============
void demoRelational() {
  print("\n Demo Operator Relasional");
  int a = 7, b = 5;
  print("$a == $b → ${a == b}");
  print("$a != $b → ${a != b}");
  print("$a > $b → ${a > b}");
  print("$a < $b → ${a < b}");
  print("$a >= $b → ${a >= b}");
  print("$a <= $b → ${a <= b}");
}

// ============= 4. LOGIKA =============
void demoLogical() {
  print("\n🧠 Demo Operator Logika");
  bool p = true, q = false;
  print("$p && $q → ${p && q}  // AND");
  print("$p || $q → ${p || q}  // OR");
  print("!$p → ${!p}           // NOT");
}

// ============= 5. PENUGASAN =============
void demoAssignment() {
  print("\n Demo Operator Penugasan");
  double x = 10, y = 4;
  print("x = $x");
  x += y; print("x += y → $x");
  x -= y; print("x -= y → $x");
  x *= y; print("x *= y → $x");
  x /= y; print("x /= y → $x");
}

// ============= 6. NULL AWARE =============
void demoNullAware() {
  print("\n Demo Operator Null Aware");

  String? nama;

  // kalau null, pakai default nama
  print("nama ?? 'Zidan' → ${nama ?? 'Zidan'}  // kalau null, pakai default");

  // isi nama hanya kalau masih null
  nama ??= "Faris";
  print("nama ??= 'Faris' → $nama");

  // cek panjang nama dengan null safety
  print("nama?.length → ${nama?.length}  // aman walau null");
}


// ============= 7. TYPE TEST =============
void demoTypeTest() {
  print("\n Demo Operator Type Test");
  dynamic a = 10;
  print("a is int → ${a is int}");
  print("a is! String → ${a is! String}");
  print("a as num → ${a as num} (type casting)");
}

// ============= 8. KONDISIONAL =============
void demoConditional() {
  print("\n Demo Operator Kondisional (Ternary)");
  int nilai = 75;
  String hasil = nilai >= 60 ? "Lulus" : "Tidak Lulus";
  print("nilai = $nilai → $hasil");
}

// ============= 9. BITWISE =============
void demoBitwise() {
  print("\n Demo Operator Bitwise");
  int a = 6, b = 3;
  print("$a & $b → ${a & b}  // AND");
  print("$a | $b → ${a | b}  // OR");
  print("$a ^ $b → ${a ^ b}  // XOR");
  print("~$a → ${~a}         // NOT");
  print("$a << 1 → ${a << 1} // Shift kiri");
  print("$a >> 1 → ${a >> 1} // Shift kanan");
}
