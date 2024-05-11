import 'dart:io';

void main() {
  Map<String, int> menu = {
    'Teh Botol': 10000,
    'Coca Cola': 15000,
    'Minyak 1 Liter': 40000,
    'Susu': 12000,
  };

  int total = 0;
  List<String> orderedItems = [];

  print('Menu:');
  menu.forEach((item, price) => print('$item: Rp${price.toString()}'));

  while (true) {
    stdout.write('Masukkan item (atau ketik "selesai" untuk mengakhiri pesanan): ');
    String item = stdin.readLineSync()!;
    if (item.toLowerCase() == 'selesai') {
      break;
    }
    if (menu.containsKey(item)) {
      orderedItems.add(item);
      total += menu[item]!;
    } else {
      print('Item tidak ditemukan dalam menu!');
    }
  }

  print('\nStruk Pembelian:');
  for (var item in orderedItems) {
    print('$item: Rp${menu[item].toString()}');
  }
  print('Total: Rp${total.toString()}');

  stdout.write('Masukkan jumlah pembayaran: Rp');
  int pembayaran = int.parse(stdin.readLineSync()!);
  if (pembayaran < total) {
    print('Pembayaran tidak mencukupi!');
  } else {
    int kembalian = pembayaran - total;
    print('Kembalian: Rp${kembalian.toString()}');
    print('Terima kasih atas pembeliannya!');
  }
}
