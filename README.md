# Berita Badminton
[![Berita-Badminton](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml/badge.svg)](https://github.com/irsyifa/Berita-Badminton/actions/workflows/badminton.yml)




## :bookmark_tabs: Menu

- [Tentang](#scroll-tentang)
- [Screenshot](#rice_scene-screenshot)
- [Requirements](#exclamation-requirements)
- [Deskripsi Data](#heavy_check_mark-deskripsi-data)
- [Struktur Folder](#open_file_folder-struktur-folder)

## :scroll: Tentang

Reservasi hotel merupakan layanan yang bisa digunakan masyarakat jika ingin memesan kamar hotel untuk waktu tertentu. Biasanya, reservasi hotel dilakukan beberapa hari sebelum kedatangan atau rencana check in yang akan dilakukan.Pemesanan ini dapat dilakukan oleh tamu ataupun agen hotel. Di jaman berkembangnya teknologi seperti sekarang, untuk memesan hotel, tamu tidak harus datang ke hotelnya langsung, tetapi dapat dilakukan di rumah melalui online menggunakan smartphone ataupun PC. Sistem reservasi online memanfaatkan sistem informasi guna mempermudah tamu dalam mencari dan melakukan booking hotel yang sesuai keinginan tanpa harus membuka website hotel satu persatu yang akan memakan waktu dan juga tenaga. Berdasarkan pemaparan tersebut, maka kami akan membuat basis data reservasi hotel untuk memudahkan tamu melakukan booking hotel.

## :rice_scene: Screenshot

Shiny adalah paket R yang membuatnya mudah untuk membangun aplikasi web interaktif langsung dari R. Pengguna dapat meng-host aplikasi mandiri di halaman web atau menanamkannya dalam dokumen R Markdown atau membangun dashboard. 

Pada sistem manajemen database reservasi hotel ini, dibuat dashboard untuk untuk merangkum tampilan /informasi penting dalam satu layar tentang database reservasi hotel.

### 1. Halaman Awal Website
![halaman awal](img width="960" alt="image" src="https://github.com/irsyifa/Berita-Badminton/assets/103913260/8a0754b4-7c04-4dba-baec-58c205a22b32")

#### a. Tim Pengembang

![tim pengembang](https://user-images.githubusercontent.com/111561203/228075253-777425f1-f6fc-48c9-be8c-de867fa2d511.PNG)

#### b. Grafik Pengunjung

![grafik pengunjung](https://user-images.githubusercontent.com/111561203/228075319-6d9353f0-5a5d-424f-b490-0ca067bf8849.PNG)

#### c. Grafik Tagihan

![grafik tagihan](https://user-images.githubusercontent.com/111561203/228075344-db9591b5-20f1-4055-831f-840456e6a5da.PNG)

### 2. Data Hotel
Pada data hotel ini menampilkan informasi tentang hotel yang tersedia pada database.

![data hotel](https://user-images.githubusercontent.com/111561203/228075390-b7574d0d-238a-445c-80b6-cd6475bbb20a.PNG)

### 3. Data Guest
Pada data guest ini akan ditampilkan informasi tentang guest yang melakukan reservasi hotel.

![data guest](https://user-images.githubusercontent.com/111561203/228075451-4eed4769-14c2-4836-89d0-4bc4c897b6a0.PNG)

### 4. Data Reservation Agent
Pada data reservation agent ini akan ditampilkan informasi tentang agen yang melakukan reservasi hotel.

![data reservation agent](https://user-images.githubusercontent.com/111561203/228075830-369d570d-925d-4cfe-bedd-4d2e106f4a64.PNG)

### 5. Data Kamar
Pada data kamar ini akan ditampilkan informasi tentang kamar di masing-masing hotel yang tersedia pada database.

![data kamar](https://user-images.githubusercontent.com/111561203/228075502-f7286da6-966d-44cb-8fd9-ce682edd7028.PNG)

### 6. Riwayat Pemesanan
Pada riwayat pemesanan ini akan ditampilkan informasi tentang riwayat reservasi oleh guest berdasarkan masing-masing hotel.

![riwayat pesanan 1](https://user-images.githubusercontent.com/111561203/228075679-fd941bc0-b179-4a8f-8597-18382b3be87f.png)

![riwayat pesanan](https://user-images.githubusercontent.com/111561203/228075623-1a0b57c0-1872-412f-b764-71fc66186af7.PNG)


## :dvd: Demo

https://m70mrd-teguh-prasetyo.shinyapps.io/HotelReservationIS/

## :blue_book: Dokumentasi 

Dokumentasi penggunaan aplikasi database.

![tabel booking](https://user-images.githubusercontent.com/111561203/227853687-43535a6a-45f3-49c7-bb76-bc9d33452ac3.PNG)

![tabel guest](https://user-images.githubusercontent.com/111561203/227853625-c2604d42-79e2-4017-a66c-f63e3ad73a14.PNG)

![tabel hotel](https://user-images.githubusercontent.com/111561203/227853874-0e52c44c-17ee-4d89-8bb6-a4537de6c769.PNG)

![tabel room booked](https://user-images.githubusercontent.com/111561203/227854094-689e5309-6429-46a2-a7a8-d3a9f98b947e.PNG)


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
