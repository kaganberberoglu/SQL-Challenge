1
SELECT
    *
FROM
    Customers
WHERE
    PostalCode = 1010;

2
SELECT
    Phone
FROM
    Suppliers
WHERE
    SupplierID = 11;

3
SELECT
    *
FROM
    Orders
ORDER BY
    OrderDate DESC
LIMIT
    10;

4
SELECT
    *
FROM
    Customers
WHERE
    City IN ('London', 'Madrid')
    OR Country = 'Brazil';

5
INSERT INTO
    Customers (
        CustomerName,
        ContactName,
        Address,
        City,
        PostalCode,
        Country
    )
VALUES
    (
        'Bilbo Baggins',
        'The Shire',
        'Bag End',
        '1 Hobbit-Hole',
        '111',
        'Middle Earth'
    );

6
UPDATE
    Customers
SET
    PostalCode = '11122'
WHERE
    CustomerName = 'Bilbo Baggins';

7
SELECT
    COUNT(DISTINCT City) AS DistinctCities
FROM
    Customers;

8
SELECT
    *
FROM
    Suppliers
WHERE
    LENGTH (SupplierName) > 20;

9
SELECT
    *
FROM
    ogrenci;

10
SELECT
    ograd AS Ad,
    ogrsoyad AS Soyad,
    sinif AS Sınıf
FROM
    ogrenci;

11
SELECT
    *
FROM
    ogrenci
WHERE
    cinsiyet = 'K';

12
SELECT
    DISTINCT sinif
FROM
    ogrenci;

13
SELECT
    *
FROM
    ogrenci
WHERE
    sinif = '10A'
    AND cinsiyet = 'K';

14
SELECT
    ograd AS Ad,
    ogrsoyad AS Soyad,
    sinif AS Sınıf
FROM
    ogrenci
WHERE
    sinif IN ('10A', '10B');

15
SELECT
    ogrno AS 'Okul Numarası',
    ograd AS 'Ad',
    ogrsoyad AS 'Soyad'
FROM
    ogrenci;

16
SELECT
    CONCAT(ograd, ogrsoyad) AS 'Ad Soyad'
FROM
    ogrenci;

17
SELECT
    *
FROM
    ogrenci
WHERE
    ograd LIKE 'a%';

18
SELECT
    *
FROM
    kitap
WHERE
    sayfasayisi BETWEEN 50
    AND 200;

19
SELECT
    *
FROM
    ogrenci
WHERE
    ograd IN ('Fidan', 'İsmail', 'Leyla');

20
SELECT
    *
FROM
    ogrenci
WHERE
    ograd LIKE 'a%'
    OR ograd LIKE 'd%'
    OR ograd LIKE 'k%';

21
SELECT
    ograd AS Ad,
    ogrsoyad AS Soyad,
    sinif AS Sınıf,
    cinsiyet AS Cinsiyet
FROM
    ogrenci
WHERE
    (sinif = '9A' & & cinsiyet = 'E') || (sinif = '9B' & & cinsiyet = 'K');

22
SELECT
    *
FROM
    ogrenci
WHERE
    sinif IN ('10A', '10B')
    AND cinsiyet = 'E';

23
SELECT
    *
FROM
    ogrenci
WHERE
    dtarih LIKE '1989%';

24
SELECT
    *
FROM
    ogrenci
WHERE
    ogrno BETWEEN 30
    AND 50
    AND cinsiyet = 'K';

25
SELECT
    *
FROM
    ogrenci
ORDER BY
    ograd ASC;

26
SELECT
    *
FROM
    ogrenci
ORDER BY
    ograd,
    ogrsoyad;

27
SELECT
    *
FROM
    ogrenci
WHERE
    sinif = '10A'
ORDER BY
    ogrno DESC;

28
SELECT
    *
FROM
    ogrenci
LIMIT
    10;

29
SELECT
    ograd Adı,
    ogrsoyad Soyadı,
    dtarih 'Doğum Tarihi'
FROM
    ogrenci
LIMIT
    10;

30
SELECT
    *
FROM
    kitap
ORDER BY
    sayfasayisi DESC
LIMIT
    1;

31
SELECT
    *
FROM
    ogrenci
ORDER BY
    dtarih DESC
LIMIT
    1;

32
SELECT
    *
FROM
    ogrenci
WHERE
    sinif = '10A'
    AND dtarih IS NOT NULL
ORDER BY
    dtarih ASC
LIMIT
    1;

33
SELECT
    *
FROM
    kitap
WHERE
    kitapadi LIKE '_n%';

34
SELECT
    COUNT(ogrno),
    sinif
FROM
    ogrenci
WHERE
    sinif IS NOT NULL
GROUP BY
    sinif
ORDER BY
    COUNT(ogrno) DESC;

35
SELECT
    *
FROM
    ogrenci
ORDER BY
    RAND();

36
SELECT
    *
FROM
    ogrenci
ORDER BY
    RAND()
LIMIT
    1;

37
SELECT
    ogrno 'Okul Numarası',
    ograd Adı,
    ogrsoyad Soyadı,
    sinif Sınıfı
FROM
    ogrenci
WHERE
    sinif = '10A'
ORDER BY
    RAND()
LIMIT
    1;

38
SELECT
    COUNT(ogrno) as Adet,
    ograd as İsim
FROM
    ogrenci
GROUP BY
    ograd;

39
INSERT INTO
    yazar (yazarad, yazarsoyad)
VALUES
    ('Kemal', 'Uyumaz');

40
INSERT INTO
    tur (turadi)
VALUES
    ('Biyografi');

41
INSERT INTO
    ogrenci (ograd, ogrsoyad, cinsiyet, sinif)
VALUES
    ('Çağlar', 'Üzümcü', 'E', '10A'),
    ('Leyla', 'Alagöz', 'K', '9B'),
    ('Ayşe', 'Bektaş', 'K', '11C');

42
INSERT INTO
    yazar (yazarad, yazarsoyad)
SELECT
    ograd,
    ogrsoyad
FROM
    ogrenci
ORDER BY
    RAND()
LIMIT
    1;

43
INSERT INTO
    yazar (yazarad, yazarsoyad)
SELECT
    ograd,
    ogrsoyad
FROM
    ogrenci
WHERE
    ogrno BETWEEN 10
    AND 30;

44
INSERT INTO
    yazar (yazarad, yazarsoyad)
VALUES
    ('Nurettin', 'Belek')
SELECT
    @ @IDENTITY;

45
UPDATE
    ogrenci
SET
    sinif = '10C';

WHERE
    ogrno = 3;

46
UPDATE
    ogrenci
SET
    sinif = '10A'
WHERE
    sinif = '9A';

47
UPDATE
    ogrenci
SET
    puan = puan + 5;

48
DELETE FROM
    yazar
WHERE
    yazarno = 25;

49
SELECT
    *
FROM
    ogrenci
WHERE
    dtarih IS NULL;

50
DELETE FROM
    ogrenci
WHERE
    dtarih IS NULL;

51
UPDATE
    kitap
SET
    puan = puan + 2
WHERE
    kitapadi LIKE 'a%';

52
INSERT INTO
    tur (turadi)
VALUES
    ('Kişisel Gelişim');

53
UPDATE
    kitap
SET
    turno = (
        SELECT
            turno
        FROM
            tur
        WHERE
            turadi = 'Kişisel Gelişim'
    )
WHERE
    kitapadi = 'Başarı Rehberi';

54 CREATE PROCEDURE ogrencilistesi() BEGIN
SELECT
    *
FROM
    ogrenci;

END;

55 CREATE PROCEDURE ekle (
    IN ad VARCHAR (30),
    IN soyad VARCHAR (30),
    IN cinsiyet VARCHAR (10),
    IN sinif VARCHAR (6),
    IN numara SMALLINT (10)
) BEGIN
INSERT INTO
    ogrenci (ograd, ogrsoyad, cinsiyet, sinif, ogrno)
VALUES
    (ad, soyad, cinsiyet, sinif, numara);

END;

56 CREATE PROCEDURE sil (IN numara SMALLINT (10)) BEGIN
DELETE FROM
    ogrenci
WHERE
    ogrno = numara;

END;

57 CREATE PROCEDURE ogrenciSinifDegistir (
    IN numara SMALLINT (10),
    IN yeniSinif VARCHAR (6),
) BEGIN
UPDATE
    ogrenci
SET
    sinif = yeniSinif
WHERE
    ogrno = numara;

END;

58 CREATE PROCEDURE adSoyadAra (
    IN ad VARCHAR (30),
    IN soyad VARCHAR (30),
) BEGIN
SELECT
    concat (ograd, ogrsoyad) as 'Adi Soyadi'
FROM
    ogrenci
WHERE
    ograd = ad
    AND ogrsoyad = soyad;

END;

59 DROP PROCEDURE IF EXISTS ogrencilistesi;

DROP PROCEDURE IF EXISTS adSoyadAra;

DROP PROCEDURE IF EXISTS ekle;

DROP PROCEDURE IF EXISTS sil;

DROP PROCEDURE IF EXISTS ogrenciSinifDegistir;

60
SELECT
    *
FROM
    kitap
WHERE
    turno IN (
        SELECT
            turno
        FROM
            tur
        WHERE
            turadi = 'Dram'
    );

61
SELECT
    *
FROM
    kitap
WHERE
    yazarno IN (
        SELECT
            yazarno
        FROM
            yazar
        WHERE
            yazarad LIKE 'e%'
    );

62
SELECT
    *
FROM
    ogrenci
WHERE
    ogrno NOT IN (
        SELECT
            ogrno
        FROM
            islem
    );

63
SELECT
    *
FROM
    kitap
WHERE
    kitapno NOT IN (
        SELECT
            kitapno
        FROM
            islem
    );

64
SELECT
    kitapadi
FROM
    kitap
WHERE
    kitapno NOT IN (
        SELECT
            kitapno
        FROM
            islem
        WHERE
            atarih LIKE '%-05-%'
            AND vtarih LIKE '%-05-%'
    );

65
SELECT
    o.ograd,
    o.ogrsoyad,
    i.atarih
FROM
    ogrenci as o,
    islem as i
WHERE
    i.ogrno = o.ogrno
ORDER BY
    i.atarih DESC;

66
SELECT
    k.kitapadi,
    t.turadi
FROM
    kitap as k,
    tur as t
WHERE
    t.turno = k.turno
HAVING
    t.turadi IN ('Fıkra', 'Hikaye')
ORDER BY
    t.turadi,
    k.kitapadi;

67
SELECT
    o.ogrno,
    o.ograd,
    o.ogrsoyad,
    o.sinif,
    i.atarih,
    k.kitapadi
from
    ogrenci o,
    islem i,
    kitap k
WHERE
    o.ogrno = i.ogrno
    AND i.kitapno = k.kitapno
    AND o.sinif IN ('10B', '10C')
ORDER BY
    o.ogrno,
    o.sinif,
    i.atarih DESC;

68
SELECT
    o.ograd,
    o.ogrsoyad,
    i.atarih,
    k.kitapadi
FROM
    ogrenci o,
    islem i,
    kitap k
WHERE
    o.ogrno = i.ogrno
    AND i.kitapno = k.kitapno
ORDER BY
    i.atarih DESC;

69
SELECT
    k.kitapadi,
    t.turadi
FROM
    kitap as k
    INNER JOIN tur as t ON t.turno = k.turno
HAVING
    t.turadi IN ('Fıkra', 'Hikaye')
ORDER BY
    t.turadi,
    k.kitapadi;

70
SELECT
    o.ogrno,
    o.ograd,
    o.ogrsoyad,
    k.kitapadi,
    i.atarih
FROM
    ogrenci o
    JOIN islem i ON o.ogrno = i.ogrno
    JOIN kitap k ON i.kitapno = k.kitapno
WHERE
    (
        o.sinif = "10B"
        OR o.sinif = "10C"
    )
ORDER BY
    o.ograd,
    ogrsoyad,
    i.atarih DESC;

71
SELECT
    o.ograd,
    o.ogrsoyad,
    i.atarih,
    k.kitapadi
FROM
    ogrenci o
    LEFT JOIN islem i ON o.ogrno = i.ogrno
    LEFT JOIN kitap k ON i.kitapno = k.kitapno;

72
SELECT
    o.ograd,
    o.ogrsoyad,
    i.atarih
FROM
    ogrenci o
    LEFT JOIN islem i ON o.ogrno = i.ogrno
WHERE
    i.atarih IS NULL;

73
SELECT
    i.kitapno AS 'Kitap No',
    k.kitapadi AS 'Kitabın Adı',
    COUNT(i.kitapno) AS 'Kitap Kaç Kere Alınmış?'
FROM
    islem i
    LEFT JOIN kitap k ON i.kitapno = k.kitapno
GROUP BY
    i.kitapno
ORDER BY
    k.kitapno;

74
SELECT
    i.kitapno AS 'Kitap No',
    k.kitapadi AS 'Kitabın Adı',
    COUNT(i.kitapno) AS 'Kitap Kaç Kere Alınmış?'
FROM
    islem i
    RIGHT JOIN kitap k ON i.kitapno = k.kitapno
GROUP BY
    i.kitapno
ORDER BY
    k.kitapno;

75
SELECT
    o.ograd,
    o.ogrsoyad,
    k.kitapadi
FROM
    ogrenci o
    JOIN islem i ON o.ogrno = i.ogrno
    JOIN kitap k ON i.kitapno = k.kitapno
ORDER BY
    o.ograd,
    o.ogrsoyad,
    k.kitapadi;

76
SELECT
    o.ograd,
    o.ogrsoyad,
    k.kitapadi,
    y.yazarad,
    y.yazarsoyad,
    t.turadi,
    i.atarih
FROM
    ogrenci o
    LEFT JOIN islem i ON o.ogrno = i.ogrno
    LEFT JOIN kitap k ON i.kitapno = k.kitapno
    LEFT JOIN yazar y ON k.yazarno = y.yazarno
    LEFT JOIN tur t ON k.turno = t.turno;

77
SELECT
    DISTINCT o.ograd,
    o.ogrsoyad,
    o.sinif,
    k.kitapadi
FROM
    ogrenci o
    LEFT JOIN islem i ON o.ogrno = i.ogrno
    LEFT JOIN kitap k ON i.kitapno = k.kitapno
WHERE
    o.sinif IN ('10A', '10B')
ORDER BY
    ograd,
    ogrsoyad;

78
SELECT
    AVG(sayfasayisi)
FROM
    kitap;

79
SELECT
    k.kitapadi,
    y.yazarad,
    y.yazarsoyad,
    k.sayfasayisi
FROM
    kitap k
    JOIN yazar y ON k.yazarno = y.yazarno
WHERE
    k.sayfasayisi > (
        SELECT
            AVG(sayfasayisi)
        FROM
            kitap
    )
ORDER BY
    k.sayfasayisi;

80
SELECT
    COUNT(ogrno)
FROM
    ogrenci;

81
SELECT
    COUNT(ogrno) as 'Toplam Öğrenci Sayısı'
FROM
    ogrenci;

82
SELECT
    COUNT(DISTINCT ograd)
FROM
    ogrenci;

83
SELECT
    sayfasayisi
FROM
    kitap
ORDER BY
    sayfasayisi DESC
LIMIT
    1;

84
SELECT
    kitapadi,
    sayfasayisi
FROM
    kitap
ORDER BY
    sayfasayisi DESC
LIMIT
    1;

85
SELECT
    sayfasayisi
FROM
    kitap
ORDER BY
    sayfasayisi
LIMIT
    1;

86
SELECT
    kitapadi,
    sayfasayisi
FROM
    kitap
ORDER BY
    sayfasayisi
LIMIT
    1;

87
SELECT
    k.sayfasayisi,
    k.kitapadi,
    t.turadi
FROM
    kitap k,
    tur t
WHERE
    k.turno = t.turno
    AND t.turadi = 'Dram'
ORDER BY
    k.sayfasayisi DESC
LIMIT
    1;

88
SELECT
    o.ogrno,
    o.ograd,
    o.ogrsoyad,
    SUM(k.sayfasayisi)
FROM
    ogrenci o,
    islem i,
    kitap k
WHERE
    o.ogrno = i.ogrno
    AND i.kitapno = k.kitapno
    AND o.ogrno = 15;

89
SELECT
    ograd,
    COUNT(*)
FROM
    ogrenci
GROUP BY
    ograd;

90
SELECT
    sinif,
    COUNT(*)
FROM
    ogrenci
WHERE
    sinif IS NOT NULL
GROUP BY
    sinif
ORDER BY
    sinif;

91
SELECT
    sinif,
    cinsiyet,
    COUNT(cinsiyet)
FROM
    ogrenci
WHERE
    cinsiyet IS NOT NULL
GROUP BY
    sinif,
    cinsiyet;

92
SELECT
    o.ogrno,
    CONCAT(o.ograd, o.ogrsoyad),
    SUM(k.sayfasayisi)
FROM
    ogrenci o,
    kitap k,
    islem i
WHERE
    o.ogrno = i.ogrno
    AND i.kitapno = k.kitapno
GROUP BY
    o.ogrno;

93
SELECT
    o.ograd as 'Ad',
    o.ogrsoyad as 'Soyad',
    COUNT(o.ogrno) AS 'Okunan Toplam Kitap Sayısı'
FROM
    ogrenci o
    LEFT JOIN islem i ON o.ogrno = i.ogrno
    LEFT JOIN kitap k ON i.kitapno = k.kitapno
GROUP BY
    o.ogrno;

94
SELECT
    p.ProductName,
    c.CategoryName
FROM
    Products p,
    Categories c
WHERE
    p.CategoryID = c.CategoryID
ORDER BY
    CategoryName,
    ProductName;

95
SELECT
    o.Id as 'Sipariş Kodu',
    c.CompanyName as 'Şirket Adı'
FROM
    [Order] as o
    join Customer as c on c.Id = o.CustomerId
WHERE
    o.OrderDate < '2012-08-09';

96
SELECT
    Count(p.ProductName) as 'Ürün Sayısı'
FROM
    OrderDetail od
    join Product p on od.ProductId = p.Id
WHERE
    OrderId = 10251
ORDER BY
    p.ProductName;

97
SELECT
    o.Id,
    c.CompanyName,
    e.LastName
FROM
    [Order] as o
    join Customer as c on o.CustomerId = c.Id
    join Employee as e on e.Id = o.EmployeeId;

98
SELECT
    CustomerId,
    count(CustomerId) as 'SiparisSayisi'
FROM
    [Order]
GROUP BY
    CustomerId
ORDER BY
    count(CustomerId) desc;

99
SELECT
    e.FirstName,
    e.LastName,
    Count(o.EmployeeId) as 'ToplamSiparisSayisi'
FROM
    [Order] o
    join Employee e on o.EmployeeId = e.Id
GROUP BY
    o.EmployeeId
ORDER BY
    Count(o.EmployeeId) desc
LIMIT
    5;

100
SELECT
    e.FirstName,
    e.LastName,
    Round(
        Sum(od.Quantity * od.UnitPrice *(1 - od.Discount)),
        3
    ) as 'ToplamSatisTutari'
FROM
    OrderDetail od
    join [Order] o on od.OrderId = o.Id
    join [Employee] e on o.EmployeeId = e.Id
GROUP BY
    o.EmployeeId
ORDER BY
    Sum(od.Quantity * od.UnitPrice) desc
LIMIT
    5;

101
SELECT
    c.CategoryName,
    Round(
        Sum(od.Quantity * od.UnitPrice *(1 - od.Discount)),
        3
    ) as 'ToplamSatisTutari'
FROM
    OrderDetail od
    join [Order] o on od.OrderId = o.Id
    join [Product] p on od.ProductId = p.Id
    join Category c on c.Id = p.CategoryId
GROUP BY
    p.CategoryId
ORDER BY
    Sum(od.Quantity * od.UnitPrice)
LIMIT
    1;

102
SELECT
    c.Country,
    count(c.Country) as 'SiparisSayisi'
FROM
    [Order] o
    join Customer c on o.CustomerId = c.Id
GROUP BY
    c.Country
ORDER BY
    count(c.Country) desc
LIMIT
    1;