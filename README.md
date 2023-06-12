# Berita Badminton
[![Berita-Badminton](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml/badge.svg)](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml)




## :bookmark_tabs: Menu

- [Tentang](#scroll-tentang)
- [Screenshot](#rice_scene-screenshot)
- [Requirements](#exclamation-requirements)
- [Deskripsi Data](#heavy_check_mark-deskripsi-data)
- [Struktur Folder](#open_file_folder-struktur-folder)

## :scroll: Tentang

BolaSport.com merupakan situs web yang memberikan berita atau informasi seputar olahraga. pada halaman awal website ini terdapat beberapa menu diantaranya :bola, ole, olimpik, lifestyle, komunitas, video, kolom, dan e-sport. Namun yang menjadi fokus penulis untuk dilakukan scraping yaitu berita bulu tangkis. 

Penulis akan melakukan pengikisan/scrap terkait beberapa hal, yaitu:
1. Judul Berita
2. Tanggal | Waktu Terbit
3. Penulis
4. Editor
5. Sumber
6. Berita
7. Link Berita.

## :rice_scene: Screenshot

### Halaman Awal Website
![halaman awal](https://github.com/irsyifa/Berita-Badminton/assets/103913260/8a0754b4-7c04-4dba-baec-58c205a22b32.PNG)

#### Teknik Parsing HTML
Teknik ini dapat dilakukan dengan cara :
1. Klik kanan pada halaman web, lalu klik inspect
2. Klik elements, lalu klik tanda panah di sebelah kiri elements
3. Arahkan kusor ke objek yang akan di scrape
4. Lalu copy kan class ( beri titik sebelum class) dan selector pada fungsi rvest yang digunakan

![parsing title ](https://github.com/irsyifa/Berita-Badminton/assets/103913260/4639fe32-8a7d-432f-8347-8426d2fd0409.PNG)

Contoh penggunaan sintaks untuk melakukan scrape pada judul berita:

``` sql
contoh<-url %>% html_nodes(".read__title") %>% html_text2()
```

## :exclamation: Requirements

- Paket R yang digunakan yaitu :

library(mongolite)

library(rvest)

library(tidyverse)

## :heavy_check_mark: Deskripsi Data

Database untuk reservasi hotel ini didapatkan dengan menggunakan **teknik web scraping**. Web scraping merupakan sekumpulan teknik untuk mendapatkan informasi dari sebuah website secara otomatis tanpa harus menyalinnya secara manual. Pada database ini, kelompok kami akan menerapkan teknik web scraping pada **tiket.com** untuk mendapatkan data utama dari reservasi hotel, seperti nama hotel, alamat hotel, dan juga harga per kamar per malam. Web scraping pada **linkedin.com** untuk mendapatkan data nama guest. Web scraping pada **olx.com** untuk mendapatkan data alamat guest. Data nomor kamar, gender, nomor telepon, email dibuat secara manual. Web scraping ini digunakan untuk membangun website reservasi hotel.


### Create Table room_booked

``` sql

```

## :open_file_folder: Struktur Folder

```
.
├── app           # ShinyApps
│   ├── server.R
│   └── ui.R
├── data 
|   ├── xlsx
|       └── excel tabel data
│   └── sql
|       └── db.sql
├── doc           # Doc for the project
├── .gitignore
├── LICENSE
└── README.md
```

## :smiley_cat: My Github

[Irsyifa Mayzela Afnan](https://github.com/irsyifa) G1501222062

![image](https://user-images.githubusercontent.com/111561203/227850526-85963b40-de8b-442e-b180-11f294bdefff.png)
