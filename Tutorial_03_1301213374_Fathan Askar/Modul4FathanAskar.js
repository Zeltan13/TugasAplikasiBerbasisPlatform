// Latihan 1 PPT
function sumOfOdds(min, max) {
    let sum = 0;
    for (let i = min; i <= max; i++) {
      if (i % 2 !== 0) {
        sum += i;
      }
    }
    return sum;
}  
console.log(sumOfOdds(1, 8));
console.log(sumOfOdds(4, 15));
//Latihan 2 PPT
//const aligntTextButton = document.getElementById("alignTextButton");
//const bgChangeButton = document.getElementById("bgChangeButton");
//const box = document.querySelector('.box');

function changeTextAlignment(){
  const body = document.body;
  body.classList.toggle('right-aligned');
  body.classList.toggle('centered');
}

function bgChange(){
  box.classList.toggle('change-background')
}

// aligntTextButton.addEventListener('click', changeTextAlignment);
// bgChangeButton.addEventListener('click',bgChange)

// Explorasi Modul 4
var fullName = "Fathan Askar (1301213374) IF-45-04";
var age = 20;
var heightCm = 170.5;
//Ini komen
/* Komen 
Multi 
Line
*/

//VARIABLES & Tipe Data Dasar
//Number Type (+ - * / % ++ -- = += -= *= /= %=)
var perhitunganBiasa = (2 * 5) + 60 + 3.5;
//Boolean Type 
var iLikeMessi = true;
var iLikeRonaldo = "X" > 0; //false
if ("Web development is great"){} //true
if (0){}//false
var lie = !!(iLikeMessi);
//String type
var lastName = "Askar";
var name1 = fullName.substring(0,6);//"Fathan"
var len = fullName.len;//34
var ie1 = fullName.indexOf('ar'); 
var ie2 = fullName.lastIndexOf('ar');
var firstName = fullName.substring(0, fullName.indexOf(" "));//"Fathan"  
var ageStr = "" + age;//"20"
var ageStr2 = "I am " + age;//"I am 20"
var n2 = parseFloat("booyah");//NaN
var firstLetter = firstName[0];//fails
var firstLetter2 = firstName.charAt(0);//works
var lastLetter = firstName.charAt(firstName.length - 1);	 
var splitStr = firstName.split();//["F","a","t","h","a","n"]
splitStr.reverse();//["n","a","t","h","a","F"]
s = splitStr.join("");//"nathaF"

//ARRAY
var data = ["satu", 2, true]; //Array bisa beragam type
var arr2d = [["satu", "dua"], ["tiga", "empat"]];//Array dalam array 
//Pengaksesan Elemen Array
data[1];//Mengembalikan "satu"
arr2d[1][1];//Mengembalikan "empat"
data[10];//mengembalikan undefined
data.length; //mengembalikan 3
data.push("Hello");//data menambah di akhir menjadi ["satu", 2, true,"Hello"]
data.pop(); //mengembalikan/mengeluarkan "Hello" dari array data. Array kembali menjadi ["satu", 2, true]

//PENGENDALIAN STRUKTUR
var gelar;
var pendidikan = "S3"; 
if(pendidikan === "S1"){ 
  gelar = "Sarjana";
}else if(pendidikan === "S2"){ 
  gelar = "Master";
}else if(pendidikan === "S3"){ 
  gelar = "Doktor";
}else{
  gelar = "Tidak Diketahui";
}
gelar; // gelar berisi "Doktor"

//OO pada JS
var objek_kosong = {}; 
var pesawat = {
  "warna-badan": "putih",
  "code-namme": "DA-123",
  Type : "Boeing 747",
  max_speed_kmh : 700,
  problems: false
};

//Akses Nilai Properti
pesawat["code-name"];//Hasil: "DA-123"
pesawat.max_speed_kmh;//Hasil: 700
pesawat.nomor_kursi; //Hasil: undefined
pesawat["Jumlah-roda"];//Hasil: undefined
pesawat["Jumlah-roda"] = 16; //Penambahan value "Jumlah-roda" pada objek pesawat dengan value 16
pesawat.bahan_bakar = "Bensin"; //Penambahan value
//prototype
var warPlane = Object.create(pesawat);
//warPlane.Type === "Boeing 747"
//warPlane["Jumlah-roda"] === 16

//FUNCTION
//normal
function perkalian(a,b){
  hasil = a*b;
  return hasil;
}
//function expression
var tambah = function (a, b) { hasil = a + b;
  return hasil;
};
//pemanggilan fungsi
tambah(5,5);//hasil:10
var simpan = perkalian(3,5);//simpan===15
tambah(simpan,5);//Mengembalikan 15+5 = 20
perkalian(perkalian(20,5),10)//Mengembalikan 1000

