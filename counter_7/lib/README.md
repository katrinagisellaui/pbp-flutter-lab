# Tugas 7 PBP
Katrina Gisella Sembiring
2106707826
PBP C

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
State widget adalah data dari objek yang propertinya (parameter) akan pertahankan pada saat widget tersebut dibuat.
Stateless widget adalah widget yang state-nya tidak dapat diubah setelah pembuatannya. Stateful widget adalah widget yang state-nya bisa diubah setelah pembuatannya. 

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Text: untuk menampilkan text dengan satu style
* Padding: widget yang menyisipkan anaknya dengan padding yang diberikan
* FloatingActionButton: untuk membuat button yang bulat dan hover di atas konten
* Column: widget yang menampilkan anak2nya pada array vertikal
* Row: widget yang menampilkan anak2nya pada array horizontal
* Center: widget yang memposisikan anak-anaknya pada posisi tengah relatif terhadap dirinya 
* Icon: widget untuk membuat graphical icon

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah metode dalam flutter yang digunakan untuk memberi tahu framework bahwa status internal sebuah objek telah berubah. setState() juga merupakan cara untuk mengubah User Interface secara dinamis. Variable yang terdampak adalah variabel “_counter” yang nilainya berubah saat user menekan tombol “+” dan “-”.

### Jelaskan perbedaan antara const dengan final.
Final adalah keyword yang digunakan untuk memberikan values pada sebuah variables, dan values ini tidak dapat diubah. Const bersifat sama seperti final. Perbedaan antara final dan const adalah bahwa const membuat variabel konstan pada compile time saja.
 
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat program Flutter baru dengan nama "counter_7"
``` flutter create counter_7```
2. Membuat fungsi _decrementCounter untuk mengurangi nilai counter jika nilai counter lebih dari 0
3. Mengganti text dan color di atas nilai counter sesuai dengan nilai counter
Bila nilai counter genap:
    text: GENAP
    color: merah
Bila nilai counter ganjil:
    text: GANJIL
    color: biru
```
         children: <Widget>[
            if(_counter%2==0)
              const Text(
                'GENAP',
                style:TextStyle(color: Colors.red)
              )
            else
            const Text (
              'GANJIL',
              style:TextStyle(color: Colors.blue)
            ),
				
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4, 
            ),
          ],
```
4. Menambahkan button "+" untuk meng-increment nilai counter dan button "-" untuk meng-decrement nilai counter (button "-" akan hilang bila nilai counter sudah 0)
```
floatingActionButton: Padding(
        padding: EdgeInsets.all(100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            if (_counter > 0)
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(
                  Icons.remove,),
              ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
```
Referensi:
https://www.geeksforgeeks.org/flutter-stateful-vs-stateless-widgets/ 
https://api.flutter.dev/flutter/widgets/Padding-class.html 
https://api.flutter.dev/flutter/widgets/Text-class.html 
https://api.flutter.dev/flutter/material/FloatingActionButton-class.html 
https://api.flutter.dev/flutter/widgets/Column-class.html 
https://api.flutter.dev/flutter/widgets/Row-class.html 
https://api.flutter.dev/flutter/widgets/Center-class.html 
https://api.flutter.dev/flutter/widgets/State/setState.html 
https://dev.to/nicks101/when-to-use-setstate-in-flutter-380 


# Tugas 8 PBP

### Jelaskan perbedaan ​​Navigator.push dan Navigator.pushReplacement
Navigator.push bekerja seperti push pada stack biasa, dan kita dapat melakukan pop seperti pada stack untuk kembali ke halaman sebelumnya. Jika kita menggunakan Navigator.pushReplacement, halaman akan diganti sepenuhnya dengan halaman baru sehingga hanya ada satu page pada stack. Namun, kita tidak dapat menggunakan back button jika menggunakan Navigator.pushReplacement.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Text: untuk menampilkan text dengan satu style
* Padding: widget yang menyisipkan anaknya dengan padding yang diberikan
* Column: widget yang menampilkan anak2nya pada array vertikal
* Row: widget yang menampilkan anak2nya pada array horizontal
* Container: mengelilingi sang anak dengan padding dan menambahkan constraint extra
* Icon: widget untuk membuat graphical icon
* ListTile: satu baris dengan tinggi tetap yang biasanya berisi beberapa teks serta ikon di depan atau di belakang.
* ElevatedButton: tombol yang elevasinya akan meningkat ketika ditekan

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
onPressed
onChange
onTap
onSaved

### Jelaskan bagaimana cara kerja Navigator dalam “mengganti” halaman dari aplikasi Flutter
Pada aplikasi Flutter, Navigator bekerja seperti stack. Jika kita ingin mengunjungi halaman tertentu, kita dapat push halaman baru tersebut seperti pada stack. Untuk kembali ke halaman sebelumnya, kita dapat melakukan pop. 

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
* Menambahkan drawer/hamburger menu pada aplikasi dan menambahkan tiga tombol navigasi pada file baru dalam /lib yang bernama drawer.dart.
* Membuat model Item pada item.dart
* Membuat file baru dalam /lib bernama form.dart untuk meminta input user dan menyimpan input tersebut. 
* Pada form.dart, terdapat handler untuk menerima judul, nominal, jenis, dan tanggal dan menambahkan data ke list.
* Membuat halaman untuk menampilkan seluruh data dengan menampilkan semua data yang ada pada list(./lib/show_item.dart)


Reference:
https://levelup.gitconnected.com/how-to-navigate-between-pages-in-your-flutter-application-ed54558dbae4 
https://api.flutter.dev/flutter/widgets/Container-class.html 
https://api.flutter.dev/flutter/material/ListTile-class.html 
https://api.flutter.dev/flutter/material/ElevatedButton-class.html#:~:text=An%20elevated%20button%20is%20a,displayed%20in%20style's%20ButtonStyle.
https://api.flutter.dev/flutter/widgets/Padding-class.html 
https://api.flutter.dev/flutter/widgets/Text-class.html 
https://api.flutter.dev/flutter/widgets/Column-class.html 
https://api.flutter.dev/flutter/widgets/Row-class.html 


# Tugas 9 PBP
Katrina Gisella Sembiring
2106707826

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Kita dapat melakukan pengambilan data JSON tanpa membuat model. Namun, pembuatan model akan memudahkan kita dalam mengambl data JSON. Terlebih untuk proyek berukuran besar, pembuatan model akan sangat membantu dalam pengambilan data JSON.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Text: untuk menampilkan text dengan satu style
* Padding: widget yang menyisipkan anaknya dengan padding yang diberikan
* Column: widget yang menampilkan anak2nya pada array vertikal
* Row: widget yang menampilkan anak2nya pada array horizontal
* Container: mengelilingi sang anak dengan padding dan menambahkan constraint extra
* Icon: widget untuk membuat graphical icon
* ElevatedButton: tombol yang elevasinya akan meningkat ketika ditekan
* GestureDetector: widget yang mendeteksi gestur

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
1. Menambahkan dependency http ke proyek, dependency ini digunakan untuk bertukar data melalui HTTP request, seperti GET, POST, PUT, dan lain-lain.

2. Membuat model sesuai dengan respons dari data yang berasal dari web service tersebut.

3. Membuat http request ke web service menggunakan dependency http.

4. Mengkonversikan objek yang didapatkan dari web service ke model yang telah kita buat di langkah kedua.

5. Menampilkan data yang telah dikonversi ke aplikasi dengan FutureBuilder.

###  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan dependancy http ke proyek
2. Membuat model MyWatchList sebagai model dari film pada /model/watchlist.dart 
3. Menambahkan menu baru watchlist pada drawer
4. Membuat halaman untuk menampilkan watchlist dan detail dari setiap film
5. Membuat getWatchList untuk mengambil data dari url
6. Menampilkan data yang telah dikonversi menggunakan FutureBuilder ke aplikasi
7. Membuat watchlist_detail untuk menampilkan detail dari film yang dipilih oleh pengguna

Reference:
* https://pbp-fasilkom-ui.github.io/ganjil-2023/assignments/tutorial/tutorial-8 
* https://api.flutter.dev/flutter/widgets/Container-class.html 
* https://api.flutter.dev/flutter/material/ListTile-class.html 
* https://api.flutter.dev/flutter/widgets/Padding-class.html 
* https://api.flutter.dev/flutter/widgets/Text-class.html 
* https://api.flutter.dev/flutter/widgets/Column-class.html 
* https://api.flutter.dev/flutter/widgets/Row-class.html 
* https://api.flutter.dev/flutter/widgets/GestureDetector-class.html 