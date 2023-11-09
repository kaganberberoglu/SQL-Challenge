/* Kaynak: https://www.w3schools.com/Sql/trysql.asp?filename=trysql_select_all
Kaynak: https://ergineer.com/assets/materials/fkg36so5-kutuphanebilgisistemi-sql/

1) Posta kodu 1010 olan tüm müşterileri bulunuz.
2) id'si 11 olan tedarikçinin telefon numarasını bulun.
3) Verilen ilk 10 siparişi, sipariş tarihine göre azalan şekilde listeleyin.
4) Londra, Madrid veya Brezilya'da yaşayan tüm müşterileri bulun.
5) "The Shire" için bir müşteri kaydı ekleyin, ilgili kişi adı "Bilbo Baggins", adres - "Bag End" içinde "1 Hobbit-Hole", posta kodu "111" ve ülke "Middle Earth".
6) Posta kodu "11122" olarak değişecek şekilde Bilbo Baggins kaydını güncelleyin.
7) Müşteriler tablosunda kaç farklı şehrin saklandığını keşfetmek için bir sorgu bulun. Tekrarlar çift sayılmamalıdır.
8) 20 karakterden uzun adları olan tüm tedarikçileri bulun.
9) Öğrenci tablosundaki tüm kayıtları listeleyin.
10) Öğrenci tablosundaki öğrencinin adını ve soyadını ve sınıfını listeleyin.
11) Öğrenci tablosundaki kız öğrencileri listeleyin. 
12) Öğrenci tablosunda kaydı bulunan sınıfların adını her sınıf bir kez görüntülenecek şekilde listeleyiniz.
13) Öğrenci tablosunda, 10A sınıfında olan kız öğrencileri listeleyiniz.
14) Öğrenci tablosundaki 10A veya 10B sınıfındaki öğrencilerin adını, soyadını ve sınıfını listeleyiniz.
15) Öğrenci tablosundaki öğrencinin adını, soyadını ve numarasını okul numarası olarak listeleyiniz.
16) Öğrenci tablosundaki öğrencinin adını ve soyadını birleştirip, adsoyad olarak listeleyiniz.
17) Öğrenci tablosundaki Adı ‘A’ harfi ile başlayan öğrencileri listeleyiniz.
18) Kitaplar tablosundaki sayfa sayısı 50 ile 200 arasında olan kitapların adını ve sayfa sayısını listeleyiniz.
19) Öğrenci tablosunda adı Fidan, İsmail ve Leyla olan öğrencileri listeleyiniz.
20) Öğrenci tablosundaki öğrencilerden adı A, D ve K ile başlayan öğrencileri listeleyiniz.
21) Öğrenci tablosundaki sınıfı 9A olan Erkekleri veya sınıfı 9B olan kızların adını, soyadını, sınıfını ve cinsiyetini listeleyiniz.
22) Sınıfı 10A veya 10B olan erkekleri listeleyiniz.
23) Öğrenci tablosunda doğum yılı 1989 olan öğrencileri listeleyiniz.
24) Öğrenci numarası 30 ile 50 arasında olan Kız öğrencileri listeleyiniz.
25) Öğrencileri adına göre sıralayınız (alfabetik).
26) Öğrencileri adına, adı aynı olanlarıda soyadlarına göre sıralayınız.
27) 10A sınıfındaki öğrencileri okul numarasına göre azalan olarak sıralayınız.
28) Öğrenciler tablosundaki ilk 10 kaydı listeleyiniz.
29) Öğrenciler tablosundaki ilk 10 kaydın ad, soyad ve doğum tarihi bilgilerini listeleyiniz.
30) Sayfa sayısı en fazla olan kitabı listeleyiniz.
31) Öğrenciler tablosundaki en genç öğrenciyi listeleyiniz.
32) 10A sınıfındaki en yaşlı öğrenciyi listeyin.
33) İkinci harfi N olan kitapları listeleyiniz.
34) Öğrencileri sınıflarına göre gruplayarak listeleyin.
35) Öğrencileri her sorgulamada sıralaması farklı olacak şekilde rastgele listeleyin.
36) Öğrenci tablosundan Rastgele bir öğrenci seçiniz.
37) 10A sınıfından rastgele bir öğrencinin adını, soyadını, numarasını ve sınıfını getirin.
38) Öğrenci tablosunda aynı isimde kaçar öğrenci olduğunu bulmak istiyoruz. Öğrenci isimlerinin sayısını "adet" olarak öğrencilerin isimleri "isim" olarak listeleyin. 
39) Yazar tablosunu KEMAL UYUMAZ isimli yazarı ekleyin.
40) Biyografi türünü tür tablosuna ekleyiniz.
41) 10A sınıfı olan ÇAĞLAR ÜZÜMCÜ isimli erkek, sınıfı 9B olan LEYLA ALAGÖZ isimli kız ve sınıfı 11C olan Ayşe Bektaş isimli kız öğrencileri tek sorguda ekleyin.
42) Öğrenci tablosundaki rastgele bir öğrenciyi yazarlar tablosuna yazar olarak ekleyiniz.
43) Öğrenci numarası 10 ile 30 arasındaki öğrencileri yazar olarak ekleyiniz.
44) Nurettin Belek isimli yazarı ekleyip yazar numarasını yazdırınız.
45) 10B sınıfındaki öğrenci numarası 3 olan öğrenciyi 10C sınıfına geçirin.
46) 9A sınıfındaki tüm öğrencileri 10A sınıfına aktarın.
47) Tüm öğrencilerin puanını 5 puan arttırın.
48) 25 numaralı yazarı silin.
49) Doğum tarihi null olan öğrencileri listeleyin.
50) Doğum tarihi null olan öğrencileri silin.
51) Kitap tablosunda adı a ile başlayan kitapların puanlarını 2 artırın.
52) Kişisel Gelişim isimli bir tür oluşturun.
53) Kitap tablosundaki Başarı Rehberi kitabının türünü bu tür ile değiştirin.
54) Öğrenci tablosunu kontrol etmek amaçlı tüm öğrencileri görüntüleyen "ogrencilistesi" adında bir prosedür oluşturun.
55) Öğrenci tablosuna yeni öğrenci eklemek için "ekle" adında bir prosedür oluşturun.
56) Öğrenci noya göre öğrenci silebilmeyi sağlayan "sil" adında bir prosedür oluşturun.
57) Öğrenci numarasını kullanarak kolay bir biçimde öğrencinin sınıfını değiştirebileceğimiz bir prosedür oluşturun.
58) Öğrenci adı ve soyadını "Ad Soyad" olarak birleştirip, ad soyada göre kolayca arama yapmayı sağlayan bir prosedür yazın.
59) Daha önceden oluşturduğunu tüm prosedürleri silin.
60) Select in select yöntemiyle dram türündeki kitapları listeleyiniz.
61) Adı e harfi ile başlayan yazarların kitaplarını listeleyin.
62) Kitap okumayan öğrencileri listeleyiniz.
63) Okunmayan kitapları listeleyiniz.
64) Mayıs ayında okunmayan kitapları listeleyiniz.
65) Öğrencinin adını, soyadını ve kitap aldığı tarihleri listeleyin.
66) Fıkra ve hikaye türündeki kitapların adını ve türünü listeleyin.
67) 10B veya 10C sınıfındaki öğrencilerin numarasını, adını, soyadını ve okuduğu kitapları listeleyin.
68) Öğrencinin adını, soyadını ve kitap aldığı tarihleri listeleyin.
69) Fıkra ve hikaye türündeki kitapların adını ve türünü listeleyin.
70) 10B veya 10C sınıfındaki öğrencilerin numarasını, adını, soyadını ve okuduğu kitapları, öğrenci adına göre listeleyin.
71) Kitap alan öğrencinin adı, soyadı, kitap aldığı tarih listelensin. Kitap almayan öğrencilerinde listede görünsün.
72) Kitap almayan öğrencileri listeleyin.
73) Alınan kitapların kitap numarasını, adını ve kaç defa alındığını kitap numaralarına göre artan sırada listeleyiniz.
74) Alınan kitapların kitap numarasını, adını kaç defa alındığını (alınmayan kitapların yanında 0 olsun) listeleyin.
75) Öğrencilerin adı soyadı ve aldıkları kitabın adı listelensin.
76) Her öğrencinin adı, soyadı, kitabın adı, yazarın adı soyad ve kitabın türünü ve kitabın alındığı tarihi listeleyiniz. Kitap almayan öğrenciler de listede görünsün.
77) 10A veya 10B sınıfındaki öğrencilerin adı soyadı ve okuduğu kitap sayısını getirin.
78) Tüm kitapların ortalama sayfa sayısını bulunuz.
79) Sayfa sayısı ortalama sayfanın üzerindeki kitapları listeleyin.
80) Öğrenci tablosundaki öğrenci sayısını gösterin.
81) Öğrenci tablosundaki toplam öğrenci sayısını toplam sayı takma(alias kullanımı) adı ile listeleyin.
82) Öğrenci tablosunda kaç farklı isimde öğrenci olduğunu listeleyiniz.
83) En fazla sayfa sayısı olan kitabın sayfa sayısını listeleyiniz.
84) En fazla sayfası olan kitabın adını ve sayfa sayısını listeleyiniz.
85) En az sayfa sayısı olan kitabın sayfa sayısını listeleyiniz.
86) En az sayfası olan kitabın adını ve sayfa sayısını listeleyiniz.
87) Dram türündeki en fazla sayfası olan kitabın sayfa sayısını bulunuz.
88) Numarası 15 olan öğrencinin okuduğu toplam sayfa sayısını bulunuz.
89) İsme göre öğrenci sayılarının adedini bulunuz. (Örn: ali 5 tane, ahmet 8 tane)
90) Her sınıftaki öğrenci sayısını bulunuz.
91) Her sınıftaki erkek ve kız öğrenci sayısını bulunuz.
92) Her öğrencinin adını, soyadını ve okuduğu toplam sayfa sayısını büyükten küçüğe doğru listeleyiniz.
93) Her öğrencinin okuduğu kitap sayısını getiriniz.
94) Tüm ürünler(product) için veritabanındaki ProductName ve CategoryName'i listeleyin.
95) 9 Ağustos 2012 öncesi verilmiş tüm siparişleri(order) için sipariş id'si (Id) ve gönderici şirket adını(CompanyName)'i listeleyin.
96) Id'si 10251 olan siparişte verilen tüm ürünlerin(product) sayısını ve adını listeleyin. ProdcutName'e göre sıralayın.
97) Her sipariş için OrderId, Müşteri'nin adını(Company Name) ve çalışanın soyadını(employee's LastName). Her sütun başlığı doğru bir şekilde isimlendirilmeli.
98) Her gönderici tarafından gönderilen gönderi sayısını bulun.
99) Sipariş sayısına göre ölçülen en iyi performans gösteren ilk 5 çalışanı bulun.
100) Gelir olarak ölçülen en iyi performans gösteren ilk 5 çalışanı bulun.
101) En az gelir getiren kategoriyi bulun.
102) En çok siparişi olan müşteri ülkesini bulun.