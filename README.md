# Berita Badminton
[![Berita-Badminton](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml/badge.svg)](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml)


## 🏸 Tentang

BolaSport.com merupakan situs web yang memberikan berita atau informasi seputar olahraga. pada halaman awal website ini terdapat beberapa menu diantaranya :bola, ole, olimpik, lifestyle, komunitas, video, kolom, dan e-sport. Namun yang menjadi fokus penulis untuk dilakukan scraping yaitu berita bulu tangkis. 

## 📦 Package

Parsing HTML yaitu membaca kode HTML, serta mengekstrak informasi relevan (seperti judul, paragraf, lirik, bold text, dan lainnnya. 
Paket R yang digunakan yaitu :
```sql
library(mongolite)
library(rvest)
library(tidyverse)
```

## 🖥️ Parsing HTML dengan Rvest
Rvest adalah package R yang popular digunakan untuk parsing HTML, dikembangkan oleh Hadley Wickham dan merupakan bagian dari tidyverse.
Beberapa fungsi dasar pada rvest:
1. read_html()  : untuk membaca source HTML dari halaman web
2. html_node(), html_nodes(), html_element(), html_elements() : untuk memilih node atau element HTML berdasarkan CSS selector atau xpath
3. html_attr(), html_attrs()  : untuk mengekstrak atribut, tag dari suatu elemen HTML terpilih
4. html_text(), html_text2()  : untuk mengekstrak text dari elemen HTML terpilih
5. html_table() : untuk mengekstrak dan konversi tabel HTML menjadi dataframe

## :heavy_check_mark: Deskripsi Data

Pada database ini, penulis akan menerapkan teknik parsing HTML dengan Rvest pada website **bolasport.com**, khususnya berita bulu tangkis dengan menggunakan url berikut:
https://www.bolasport.com/tag/bulu-tangkis, dimana data yang diperoleh antara lain :
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

## 📚 Reference
https://rpubs.com/alfanugraha/sta1562-p13
https://www.nurandi.id/blog/web-scraping-dengan-r-dan-rvest/


