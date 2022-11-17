class Item {
    String judul;
    int nominal;
    String jenis;
    DateTime? date;
    static List<Item> items = [];
    

    Item({required this.judul, required this.nominal, required this.jenis, required this.date});

    static void tambahItem({judul, nominal, jenis, date}) {
        items.add(Item(judul: judul, nominal:nominal, jenis: jenis, date:date));
    }
}
