# pbp-flutter-lab
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
