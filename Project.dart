import 'dart:io';
import 'Constant.dart';

void main(List<String> arguments) {
  print('''${Constant.massage}
   Buah yang tersedia di sini: 
   1. ${Constant.buah[0]}
   2. ${Constant.buah[1]}
   3. ${Constant.buah[2]}
   4. ${Constant.buah[3]}
   5. ${Constant.buah[4]}
   6. ${Constant.buah[5]}
   
   silahkan beli buah yang ingin anda beli!
  ''');

  var inputbuah = int.tryParse(stdin.readLineSync()!); //hitungan//

  if (inputbuah != null && inputbuah > 0 && inputbuah <= Constant.buah.length) {
    var BuahYangDipilih = Constant.buah[inputbuah - 1];

    print('''
    anda memilih buah $BuahYangDipilih 

    berapa buah $BuahYangDipilih yang ingin anda beli:
    ''');

    var jumlah = int.tryParse(stdin.readLineSync()!);
    if (jumlah != null && jumlah > 0) {
      var total = Constant.harga[inputbuah - 1] * jumlah;

      stdout.write(
          '''Anda memilih buah $BuahYangDipilih sebanyak $jumlah maka totalnya adalah: $total
          Masukan nominal uang anda
        ''');
      var Uang = int.tryParse(stdin.readLineSync()!);
      if (Uang != null) {
        var totaluang = Uang - total;

        if (Uang < total) {
          print("maaf uang anda kurang");
        } else {
          print('''
      Uang anda : $Uang
      harga total : $total
      kembalian : $totaluang

      Terimakasih telah membeli
    
    ''');
        }
      } else {
        print("Masukkan jumlah uang yang valid!");
      }
    } else {
      print("Masukkan jumlah buah yang valid!");
    }
  } else {
    stdout.write("Tuliskan nomor buah!!!!!");
  }
}
