# Berita Badminton
[![Berita-Badminton](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml/badge.svg)](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml)


## :bookmark_tabs: Menu

- [Tentang](#scroll-tentang)
- [Requirements](#exclamation-requirements)
- [Deskripsi Data](#heavy_check_mark-deskripsi-data)
- [Screenshot](#rice_scene-screenshot)


## :scroll: Tentang

BolaSport.com merupakan situs web yang memberikan berita atau informasi seputar olahraga. pada halaman awal website ini terdapat beberapa menu diantaranya :bola, ole, olimpik, lifestyle, komunitas, video, kolom, dan e-sport. Namun yang menjadi fokus penulis untuk dilakukan scraping yaitu berita bulu tangkis. 

## :exclamation: Requirements

Parsing HTML yaitu membaca kode HTML, serta mengekstrak informasi relevan (seperti judul, paragraf, lirik, bold text, dan lainnnya. 
Paket R yang digunakan yaitu :
```sql
library(mongolite)
library(rvest)
library(tidyverse)
```
## :heavy_check_mark: Teknink Parsing HTML dan Deskripsi Data

Pada database ini, penulis akan menerapkan teknik parsing HTML dengan Rvest pada website **bolasport.com**, khususnya berita bulu tangkis dengan menggunakan url berikut:
https://www.bolasport.com/tag/bulu-tangkis
Teknik ini digunakan untuk memperoleh data antara lain :

1. Judul Berita
2. Tanggal | Waktu Terbit
3. Penulis
4. Editor
5. Sumber
6. Berita
7. Link Berita


## :rice_scene: Screenshot

### Halaman Awal Website
![halaman awal](https://github.com/irsyifa/Berita-Badminton/assets/103913260/8a0754b4-7c04-4dba-baec-58c205a22b32.PNG)

### Teknik Parsing HTML
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
### Hasil Scraping Tabel pada R
Terdapat 15 baris dan 7 kolom.
Kolom 1 : Judul Berita
Kolom 2 : Tanggal | Waktu Terbit
Kolom 3 : Penulis
Kolom 4 : Editor
Kolom 5 : Sumber
Kolom 6 : Berita
Kolom 7 : Link Berita.

![kolom 1](https://github.com/irsyifa/Berita-Badminton/assets/103913260/013a64d3-6f9c-48f4-939e-4451eae74ee7.PNG)
![kolom 2,3,4,5](https://github.com/irsyifa/Berita-Badminton/assets/103913260/719296eb-59d0-4ed2-b6a4-cd4d8fa39c44.PNG)
![kolom 5](https://github.com/irsyifa/Berita-Badminton/assets/103913260/601afc22-2baf-4fb3-a7c9-9a55bec332a1.PNG)
![kolom 6](https://github.com/irsyifa/Berita-Badminton/assets/103913260/4d8d8d77-57c9-4984-ab50-39bffa260577.PNG)



## :smiley_cat: My Github

[Irsyifa Mayzela Afnan](https://github.com/irsyifa) G1501222062

